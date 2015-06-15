module ApplicationHelper
	#Returns the full title on a der-pages basic
	def full_title(page_title='')
		base_title = "Ruby on Rails Tutorial Sample"
		if page_title.empty?
			base_title
		else
			page_title + "|" + base_title
		end
	end
end
