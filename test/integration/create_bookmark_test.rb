require "test_helper"

describe "Creating a bookmark" do
	it "creates a bookmark" do
		timestamp = Time.now.to_i

		visit "/"
		fill_in "Title", with: "Twitter (#{timestamp})"
		fill_in "URL", with: "http://twitter.com"
		click_button "Create bookmark"


		page.must_have_content "Twitter (#{timestamp})"
	end
end