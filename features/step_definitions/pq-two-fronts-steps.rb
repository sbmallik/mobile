When(/^Go directly to "(.*?)" front$/) do | front_path |
  visit base_url(front_path)
end

Then(/^I should see "(.*?)" front$/) do | front_class |
  expect(page).to have_css(front_class)
#pending
end
