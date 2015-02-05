When(/^Filter "(.*?)" from Media Type Overlay$/) do | media_type |
  expect(page).to have_css('.header-logo.header-media')
  find('.media-filter-link').click
  find('.media-select-option', :text => media_type).click
  find('.overlay-close-btn').click
end

Then(/^I should see "(.*?)" heading$/) do | media_type |
  expect(page).to have_selector('.section-heading', media_type)
end  

Then(/^I should see only "(.*?)" on the page$/) do | media_type |
  all('.media-container-details').each { | asset | asset.find(media_type == 'Videos' ? '.media-play-icon' : '.media-gallery-icon') }
end

Then(/^I should see both videos and photos on the page$/) do
  all('.media-container-details').each { | asset | asset.first('span')["class"] == ('.media-pley-icon' || '.media-gallery-icon') }
end