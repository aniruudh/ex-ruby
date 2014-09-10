require "open-uri"

def print_public_methods(obj)
	all_methods = obj.public_methods
	methods_to_remove = Object.new.public_methods
	methods_to_print = all_methods - methods_to_remove
	methods_to_print.sort!
	methods_to_print.each do |method|
		p method
	end
end

website = open('http://www.salesforce.com')
print_public_methods website

p website.length
p website.last_modified

