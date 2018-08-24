require 'taza/page'

module Dashboard
  class SearchResultsPage < Taza::Page
    element(:search_summary_text) { browser.p(class: 'searchSummary') }
    element(:match_found_text) { browser.p(class: 'matchingNumberOfHotels') }
    element(:all_results_sections_on_page) { browser.divs(class: 'sResult') }
  end
end