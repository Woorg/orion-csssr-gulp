gulp         = require 'gulp'
changed      = require 'gulp-changed'
imagemin     = require 'gulp-imagemin'
webp         = require 'gulp-webp'
handleErrors = require '../util/handleErrors'
paths        = require '../paths'

gulp.task 'imagemin', ->
	return gulp.src [
			'**/*.{png,jpg,gif}'
			'!sprite/**/*'
		],
			cwd: 'app/images'
		.pipe webp()
		.pipe changed paths.images
		.pipe imagemin
			optimizationLevel: 3
			interlaced: true
			progressive: true
		.pipe gulp.dest paths.images
		.on 'error', handleErrors
