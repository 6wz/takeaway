<?php 

/**
 * PKCS7Encoder class
 *
 * 提供基于PKCS7算法的加解密接口.
 */

class PKCS7Encoder
{
    public static $block_size = 16;

    /**
	 * 对需要加密的明文进行填充补位
	 * @param $text 需要进行填充补位操作的明文
	 * @return 补齐明文字符串
	 */

    public function encode($text)
    {
        $block_size = PKCS7Encoder::$block_size;
        $text_length = strlen($text);
        $amount_to_pad = PKCS7Encoder::$block_size - $text_length % PKCS7Encoder::$block_size;
        if( $amount_to_pad == 0 ) 
        {
            $amount_to_pad = PKCS7Encoder::block_size;
        }

        $pad_chr = chr($amount_to_pad);
        $tmp = "";
        for( $index = 0; $index < $amount_to_pad; $index++ ) 
        {
            $tmp .= $pad_chr;
        }
        return $text . $tmp;
    }

    /**
	 * 对解密后的明文进行补位删除
	 * @param decrypted 解密后的明文
	 * @return 删除填充补位后的明文
	 */

    public function decode($text)
    {
        $pad = ord(substr($text, -1));
        if( $pad < 1 || 32 < $pad ) 
        {
            $pad = 0;
        }

        return substr($text, 0, strlen($text) - $pad);
    }

}


/**
 * Prpcrypt class
 *
 *
 */

class Prpcrypt
{
    public $key = NULL;

    public function __construct($k)
    {
        $this->key = $k;
    }

    /**
	 * 对密文进行解密
	 * @param string $aesCipher 需要解密的密文
	 * @param string $aesIV 解密的初始向量
	 * @return string 解密得到的明文
	 */

    public function decrypt($aesCipher, $aesIV = "")
    {
        try
        {
            if( empty($aesIV) ) 
            {
                $mcrypt_mode = MCRYPT_MODE_ECB;
            }
            else
            {
                $mcrypt_mode = MCRYPT_MODE_CBC;
            }

            $module = mcrypt_module_open(MCRYPT_RIJNDAEL_128, "", $mcrypt_mode, "");
            @mcrypt_generic_init($module, $this->key, $aesIV);
            $decrypted = mdecrypt_generic($module, $aesCipher);
            mcrypt_generic_deinit($module);
            mcrypt_module_close($module);
        }
        catch( Exception $e ) 
        {
            return array( -41003, NULL );
        }
        try
        {
            $pkc_encoder = new PKCS7Encoder();
            $result = $pkc_encoder->decode($decrypted);
        }
        catch( Exception $e ) 
        {
            return array( -41003, NULL );
        }
        return array( 0, $result );
    }

}


