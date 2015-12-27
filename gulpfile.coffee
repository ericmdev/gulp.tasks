'use strict';

# Load all requirements.
gulp = require 'gulp'
GulpTaskLoader = require 'gulp-task-loader'
require 'require-yaml'
relpath = require 'relative-path'
runSequence = require 'run-sequence'

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
  config: config
gulpTaskLoader = GulpTaskLoader opts

# Develop.
gulp.task 'develop', (done)->
    # run in sequence
    runSequence 'jade', 'humans', 'svgmin', ()->
        # done
        done()

# Default.
gulp.task 'default', ['develop']

# Test.
gulp.task 'test', ['jasmine']
