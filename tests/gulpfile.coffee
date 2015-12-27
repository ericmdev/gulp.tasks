'use strict';

# Load all requirements.
gulp = require 'gulp'
jasmine = require 'gulp-jasmine'

# Define test task.
gulp.task 'test', () ->
  return gulp.src '../tasks/spec/**/*.spec.js'
    .pipe jasmine()
