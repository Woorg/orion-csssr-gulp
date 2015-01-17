gulp         = require 'gulp'
plumber      = require 'gulp-plumber'
gutil        = require 'gulp-util'
gulpif       = require 'gulp-if'
concat       = require 'gulp-concat'
uglify       = require 'gulp-uglify'
errorHandler = require '../utils/errorHandler'
paths        = require '../paths'

gulp.task 'scripts', ->
	return gulp.src [
			'debug.js'
			'libs/modernizr/modernizr.js'
			'libs/jquery/dist/jquery.min.js'
			'libs/bolster.bxSlider/jquery.bxslider.min.js'
			'libs/gmap3/dist/gmap3.js'
			'common.js'
			'map.js'
		],
			cwd: 'app/scripts'
		.pipe plumber errorHandler: errorHandler
		.pipe concat 'common.min.js'
		.pipe gulpif !gutil.env.debug, uglify()
		.pipe gulp.dest paths.scripts
