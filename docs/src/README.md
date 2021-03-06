# Floyd @VERSION

Latest update: @DATE

Release status: @STATUS

Static website generator with MVC content system and built-in support for cloud hosting platforms

Usage: `floyd help`

# Features

 * Full MVC - define your routes, controllers, etc. and then generate
 * Full data model (eg. `floyd.db.Query('Posts').filter(post_type='page').order('-datetime').fetch()`)
 * Data model reads from flat source files
 * Convert text, markdown or HTML pages into HTML output
 * Automatically configures AppEngine sites
 * Supports different templating engine (defaults jinja2)

# Install

    $ pip install floyd

or if you don't have pip you can use easy_install (default on OS X and with python installations on other platforms)

    $ easy_install floyd

For more information see INSTALL
