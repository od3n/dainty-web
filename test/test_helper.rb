require "init"
require "app"
require "minitest/autorun"

Bundler.require :test

class MiniTest::Spec
	include Capybara::DSL
end

Capybara.app = App

def spawn_bookmark
	timestamp = Time.now.to_i
	options = { title: "Bookmark #{timestamp}", url: "http://tutsplus.net" }

	create_service = CreateBookmark.new options
	create_service.create

	create_service.bookmark
end		