class CreateBookmark < Service
	attr_reader :data, :bookmark
	def initialize data
		@data = data
	end

	def create
		req = request "/bookmarks", :post, body: post_data
    	data = OpenStruct.new(JSON.parse(req.body)["bookmark"])
		
		@bookmark = Bookmark.new(
			"id" => data.id,
			"title" => data.title,
			"url" => data.url
		)

		req.code.to_i
	end

	def post_data
		{ bookmark: data }
	end
end