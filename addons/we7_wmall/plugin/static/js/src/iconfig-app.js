var version = +new Date();
require.config({
	urlArgs: 't=' + version,
	baseUrl: '../addons/we7_wmall/static/js/app',
	paths: {
		'map': '//webapi.amap.com/maps?v=1.4.1&key=550a3bf0cb6d96c3b43d330fb7d86950',
		'css': '../css.min',
		'jquery': '../components/jquery/jquery-1.11.1.min',
		'jquery.circliful': '../components/jquery/circliful/jquery.circliful.min',
		'laytpl': '../components/jquery/laytpl',
		'tmodtpl': '../components/jquery/tmod',
		'superSlide': '../components/jquery/jquery.SuperSlide.2.1.1',
		'jquery.lazyload': '../components/jquery/jquery.lazyload.min',
		'jquery.fly': '../components/jquery/jquery.fly.min',
		'jquery.range': '../components/jquery/range/jquery.range',
		'jquery.onepage': '../components/jquery/onepage/jquery.onepage',
		'tiny': '../app/tiny',
		'h5app': '../app/h5app',
		'cloud': '../app/cloud',
		'apicloud': '../app/apicloud',
		'light7.swiper': '../components/light7/light7-swiper.min.js',
		'clockpicker': '../components/clockpicker/clockpicker.min',
	},
	shim: {
		'jquery.onepage': {
			deps: ['css!../components/jquery/onepage/jquery.onepage.css']
		},
		'jquery.range':  {
			deps: ['css!../components/jquery/range/jquery.range.css']
		},
		'jquery.circliful': {
			deps: ['css!../components/jquery/circliful/jquery.circliful.css']
		},
		'light7.swiper': {
			deps: ['css!../components/light7/light7-swiper.min.css']
		},
		'clockpicker': {
			deps: ['css!../components/clockpicker/clockpicker.min.css']
		},
		'map': {
			exports: 'AMap'
		},
	},
	waitSeconds: 0
});
