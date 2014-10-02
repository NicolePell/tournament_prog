class Competitors

	def names
		%w(Alex Ella Nicole Dan Hadi Craig Colin Rachel Hastings Bernard Stephen Denise Sandrine Victoria Scully Fadie Elena Pablo Zeeshan Camilla Yvette James Karin Sean)
	end

	def sort_groups
		names.shuffle.each_slice(6).to_a
	end

end


