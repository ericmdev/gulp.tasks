'use strict'

# Load all requirements.
gulp           = require 'gulp'
GulpTaskLoader = require 'gulp-task-loader'
require 'require-yaml'
relpath        = require 'relative-path'
runSequence    = require 'run-sequence'
notify         = require 'gulp-notify'

# Load configuration.
config = require './config.yml'

# Convert config.root to absolute path.
absroot = relpath config.root

# Configure gulp-task-loader.
opts =
  root: absroot,
  dir: config.tasks,
  exts: config.ext,
  config: config,
  errorHandler:
    errorHandler: notify.onError 'Error: <%= error.message %>'
gulpTaskLoader = GulpTaskLoader opts

# Develop.
gulp.task 'develop', (done)->
    runSequence 'jade', 'imagemin', 'svgmin', 'sass:develop', 'angular-templatecache', 'webpack:develop', 'webserver', ()->
        done()

# Build.
gulp.task 'build', (done)->
    runSequence 'jade', 'humans', 'robots', 'imagemin', 'svgmin', 'sass:build', 'webpack:build', ()->
        done()

# Default.
gulp.task 'default', ['develop']

# Test.
gulp.task 'test', ['jasmine']
