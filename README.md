
# jshintrc

Bit Theory's configuration file for scrubbing JavaScript with [JSHint](http://jshint.com/) via [node-jshint](https://github.com/jshint/node-jshint).

- `jshintrc.json` - Bit Theory settings for development used in various editors or the cli
- `jshintrc-ci.json` - Bit Theory Continuous Integration settings, same as `jshintrc.json` except doesn't allow logging (`console`, `alert` etc.)

See the [JSHint](http://jshint.com/) site or the [source code](https://github.com/jshint/jshint/blob/master/jshint.js#L320) for information about the configuration settings.


## Requirements

Requires [node](http://nodejs.org/), [npm](http://npmjs.org/) and [jshint](http://jshint.com/) installed on your system. Check those sites for more information.

    brew install node
    curl http://npmjs.org/install.sh | sh
    npm install jshint -g


## Installation

Create a symlink from `jshintrc.json` to `.jshintrc` in your `$HOME` directory. Just run:

    make install


## Usage:

By default the jshint executable will look for the configuration file `.jshintrc` in your `$HOME` directory. If it's not there it will fall back to JSHint's built in settings. You can optionally set it from the cli as well per run:

    jshint --config /path/to/jshintrc.json

Using [node-jshint](https://github.com/jshint/node-jshint) allows you to have local project settings as well. You can choose to override any of your systems default settings by sticking a `.jshintrc` file in the root of the project. You can then either override specific settings or in the case of the `predef` option make it additive. The most common use for this is tacking in a `namespace` that lives on the global layer. To do this, simply create a `.jshintrc` file in the root of your project and add the following:

    {
      "predef" : ["global_project_namespace_1", "global_project_namespace_2"]
    }

This allows you to not have to apply `/*global global_project_namespace_1 global_project_namespace_2 */` in the head of each `.js` file associated with the project.

### Editors

For more information on Bit Theory editor settings see:

- [vimfiles](https://github.com/bit-theory/vimfiles)

