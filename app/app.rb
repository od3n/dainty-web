require "services/base"
require "services/list_bookmarks"
require "bookmark"

class App < Sinatra::Base
	get "/" do
		@bookmarks = ListBookmarks.new.list
		haml :index
	end
end