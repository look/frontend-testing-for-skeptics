# Front-end Testing for Skeptics Example App

This is the example app for the [Front-end Testing for Skeptics](http://www.recursion.org/2013/4/27/speaking-at-railsconf-2013) presentation.

To run the application, first `bundle install` the required gems, then start it with `rails server`. Visit the application, and try typing a country name to see the autocomplete in action.

To run the Capybara tests, run `rspec`.

To run the JavaScript unit tests (which are unrelated to the example application -- they are an example within an example) run `teabag`.

# Credits

* List of countries courtesy Saša Stamenković's [country-list](https://github.com/umpirsky/country-list) project.
* Typeahead powered by Twitter's [typeahead.js](http://twitter.github.io/typeahead.js/).
