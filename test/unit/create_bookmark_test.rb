require "test_helper"
require "services/create_bookmark"

describe CreateBookmark do
	it "create a new bookmark" do
		options = { title: "Jose Mota", url: "http://josemota.net" }
		CreateBookmark.new(options).create.must_equal 201
	end
end