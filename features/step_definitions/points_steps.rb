Given(/^I am on the Points page$/) do
  @dashboard.navigation.points_link.click
end

When(/^I am at the credit card section$/) do
  @dashboard.points_page.credit_cards_link.when_present.click
end

Then(/^I will see the default credit card offers exist$/) do
  expect(@dashboard.points_page.find_all_initial_cc_offers).to all include 'Hilton Honors American Express'
  expect(@dashboard.points_page.find_all_initial_cc_offers).to all include 'Card'
  expect(@dashboard.points_page.find_all_initial_cc_offers.count).to be 5
end

When(/^I check all default credit card offer rates and fees$/) do
  visible_links = @dashboard.points_page.all_visible_rates_fees_links
  @results = @dashboard.points_page.check_rates_fees_links(visible_links)
end

Then(/^I will see all rates and fees exist$/) do
  expect(@results).to all be true
  expect(@results.count / 2).to be 5
end