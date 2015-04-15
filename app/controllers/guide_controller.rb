require 'govspeak'

class GuideController < ApplicationController

	def show
		file = File.open("data/documentation.md", "rb")
		contents = file.read
		@govspeak_doc = Govspeak::Document.new(contents)
		@govspeak_output = @govspeak_doc.to_html.html_safe
	end

end
