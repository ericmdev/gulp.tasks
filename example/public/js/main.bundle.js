webpackJsonp([0,1],[
/* 0 */
/***/ function(module, exports) {

	'use strict';

	function App(){  
	 
	    this.title = 'Example App console log';

	    this.start = function(){  
	        console.log(this.title);
	        return;
	    }
	}

	var app = new App();

	$(window).load(function() {
	    app.start();
	});


/***/ }
]);