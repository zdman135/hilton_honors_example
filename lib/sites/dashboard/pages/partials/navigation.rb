require 'rubygems'
require 'taza/page'

module Dashboard
  class Navigation < ::Taza::Page
    element(:points_link) { browser.link(id: 'Points') }
  end
end