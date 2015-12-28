Gulp: Tasks
===========

Gulp tasks in CoffeeScript - configured in YAML.

Tasks
-----

- sass
  - :build
  - :develop
- webpack
  - :build
  - :develop
- angular-templatecache
- humans
- imagemin
- jade
- jasmine
- robots
- svgmin
- webserver

Usage
-----

Clone repo into a new directory in your project:
    
    $ git clone <repo> ./gulp
    $ cd ./gulp

Edit the `gulpfile.js` and `config.yml` as required.

The `default` task is `develop`.

Run gulp:

    $ gulp <task name>

Build tasks prepare the application for distribution:
    
    $ gulp build

Test
----

Use npm `test` script to test tasks:

    $ npm test

