#!/usr/bin/env ruby

require 'mechanize'
class GoogleSearch
	GOOGLE_URL = 'http://www.google.com'
	@query

	def initialize
	end

	def search(query)
		agent = Mechanize.new
		page = agent.get(GOOGLE_URL)
		form = page.form_with(:action => '/search')
		form.q = query
		page = agent.submit form
		page.links.each do |link|
			pp link
		end
	end

	private
	def print_info(obj)
		pp obj
	end
end

google = GoogleSearch.new
google.search 'Hello World'



