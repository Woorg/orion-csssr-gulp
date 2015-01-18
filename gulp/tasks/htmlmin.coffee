gulp         = require 'gulp'
htmlmin      = require 'gulp-htmlmin'
paths        = require '../paths'

gulp.task 'htmlmin', ->
	return gulp.src 'dist/*.html'
		.pipe htmlmin({collapseWhitespace: true}) 
		.pipe gulp.dest paths.dist
