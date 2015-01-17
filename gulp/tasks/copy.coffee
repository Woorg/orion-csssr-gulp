gulp    = require 'gulp'
changed = require 'gulp-changed'
paths   = require '../paths'

gulp.task 'copy:resources', ->
	return gulp.src 'app/resources/**/*'
		.pipe changed paths.dist
		.pipe gulp.dest paths.dist
gulp.task 'copy:fonts', ->
	return gulp.src 'app/fonts/**/*'
		.pipe changed paths.fonts
		.pipe gulp.dest paths.fonts
gulp.task 'copy', ['copy:resources','copy:fonts']
