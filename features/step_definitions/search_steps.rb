Given(/^I am at the Hilton Honors main page$/) do
  expect(@dashboard.browser.url).to eql('https://hiltonhonors3.hilton.com/en/index.html')
  expect(@dashboard.browser.title).to eql('Hilton Honors - A Hotel Rewards Program')
end

When(/^I search for a week long trip to a popular destination$/) do
  @destination = @dashboard.search_bar.popular_destination
  
  @dashboard.search_bar.week_long_trip_search @destination
  @dashboard.browser.a(class:'find_button cta_button').click
end

Then(/^I should see results for the popular destination$/) do
  expect(@dashboard.search_results_page.search_summary_text.text).to include @destination
  expect(@dashboard.search_results_page.match_found_text.text).to include 'matching hotels'
  expect(@dashboard.search_results_page.all_results_sections_on_page.present?).to be true
  expect(@dashboard.search_results_page.all_results_sections_on_page.count > 0).to be true 
end