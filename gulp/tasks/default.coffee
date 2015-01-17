gulp  = require 'gulp'

gulp.task 'imagesAndStyles', ['spritesmith'], ->
	return gulp.start(
			'imagemin'
			'stylus'
		)

gulp.task 'htmlmin', ->
	return gulp.start(
			'htmlmin'
		)

gulp.task 'build', ->
	return gulp.start(
			'imagesAndStyles'
			'jade'
			'copy'
			'scripts'
		)

gulp.task 'default', [
		'build'
		'jscs'
		'jshint'
		'browserSync'
	]
