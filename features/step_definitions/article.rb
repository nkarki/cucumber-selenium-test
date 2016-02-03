Given(/^there are posts "(.*?)"$/) do |posts|
  posts.split(', ').each do |post|
    Post.new(title:post).save
  end
  puts "Number of posts is #{Post.count}"
end

When(/^I go to "(.*?)"$/) do |page_name|
  visit path_to(page_name)
end

Then(/^I should see "(.*?)"$/) do |text|
  page.should have_content(text)
end
