require_relative '../pages/search_page.rb'

Given(/^a user goes to Google home page$/) do
  @google_page = SearchPage.new(@browser)
  @google_page.visit_google_site
end

When(/^a user search for "([^"]*)"$/) do |keyword|
  @google_page.enter_search_keyword(keyword)
  @google_page.click_search_button
end

Then(/^google should return result for "([^"]*)"$/) do |arg|
  expect(@google_page.search_results_present?(arg)).to eql(true)
  @google_page.close
end

