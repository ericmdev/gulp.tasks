'use strict';

# Load all requirements.
gulp           = require 'gulp'
GulpTaskLoader = require 'gulp-task-loader'
require 'require-yaml'
relpath        = require 'relative-path'
runSequence    = require 'run-sequence'
notify         = require 'gulp-notify'

# Load configuration.
config = require './config.yml'

# Convert config.root to absolute path
absroot = relpath config.root
console.log absroot

# Configure gulp-task-loader
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
    # run in sequence
    runSequence 'jade', 'humans', 'robots', 'imagemin', 'svgmin', ()->
        # done
        done()

# Default.
gulp.task 'default', ['develop']

# Test.
gulp.task 'test', ['jasmine']
