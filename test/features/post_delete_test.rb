require "test_helper"

feature "Deleting a Post" do
  scenario "post is deleted with a click" do

  @only = post(:cr).id

  #Given I have a existing post
  visit posts_path

  #When I click the delete link
  puts "/posts/#{@only}"
  click_link('Destroy', href: "/posts/#{@only}")

  #Then post is destroyed and no longer seen
  page.wont_have_content post(:cr).title

  end
end
