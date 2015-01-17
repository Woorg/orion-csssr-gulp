browserSync = require 'browser-sync'
gulp        = require 'gulp'

gulp.task 'browserSync', ['watch'], ->
	setTimeout(
		->
			browserSync
				files: ['dist/**/*']
				open: false
				port: 3001
				tunnel: true
				server:
					baseDir: ['./dist']
					directory: false
		2000
	)
