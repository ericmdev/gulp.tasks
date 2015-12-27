# Load all requirements.
gulp = require 'gulp'
GulpTaskLoader = require 'gulp-task-loader'
require 'require-yaml'
relpath = require 'relative-path'

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

# Define tasks.
gulp.task 'default', ['jade']
gulp.task 'test', ['jasmine']
