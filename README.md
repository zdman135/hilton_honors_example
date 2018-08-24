Dashboard (Shoe Store Site)
==========================

Example Test Automation Framework for Hilton Honors Site

Should work in MacOs, Linux, or Windows
But developed and tested in MacOs, but have not tested in other environments

```
dependencies:
install xcode
install xcode dev tools
ensure you have accepted license agrement for xcode
install chrome (should work in firefox and IE, but tested using chrome)
ruby
bundler

installation instructions:
 clone repo
 bundle install

Run entire test automation suite run:
cucumber 
```

Optional environment variable can be passed to set the browser you want to use firefox, chrome, ie

```
  BROWSER= 
```

### Test Stack
* Ruby 2.1.1 [Core](http://www.ruby-doc.org/core-2.1.1/) and [Libs](http://www.ruby-doc.org/stdlib-2.1.1/)
* [Cucumber](https://github.com/cucumber/cucumber/wiki/_pages) or [Cukes.info](http://cukes.info/)
* [RSpec](https://github.com/rspec/rspec)
* [Taza](https://github.com/scudco/taza/wiki)
* [Watir-Webdriver](http://rubydoc.info/gems/watir-webdriver/YARD) is a wrapper for [Selenium-Webdriver](http://selenium.googlecode.com/git/docs/api/rb/index.html)
    * [Watir cheatsheet](http://pettichord.com/watirtutorial/docs/watir_cheat_sheet/WTR/Methods%20supported%20by%20Element.html)