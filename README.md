bootstrap_rails_helpers
=======================

[Bootstrap](http://twitter.github.com/bootstrap/) is a toolkit from Twitter designed to kickstart development of webapps and sites. It includes base CSS and HTML for typography, forms, buttons, tables, grids, navigation, and more.

bootstrap_rails_helpers is a lightweight gem that includes many helper methods used in many Rails applications.

Installation
------------

As most of the heleprs are based off it, if you are already using [twitter-bootstrap-rails](https://github.com/seyhunak/twitter-bootstrap-rails), then you already have most of these helpers in place.

If you haven't already installed Twitter Bootstrap, you will need to add it to your project.

You can install Bootstrap using one of the following gems:

- [bootstrap-sass](https://github.com/thomas-mcdonald/bootstrap-sass)
- [sass-twitter-bootstrap](https://github.com/jlong/sass-twitter-bootstrap)
- [less-rails-bootstrap](https://github.com/metaskills/less-rails-bootstrap)

Or you could add it directly to your assets pipeline by downloading [Twitter Bootstrap](http://twitter.github.com/bootstrap/) directly.

Once you have Twitter Bootstrap available you just need to add the folling to your Gemfile.

```
gem 'bootstrap_rails_helpers'
```

Once that's in place, run `bundle install` and you're ready.

License
-------

Copyright (c) 2013 Ben Morrall

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions: The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software. THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
