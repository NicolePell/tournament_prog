class Name

	attr_accessor :names

	def initialize
		@names = []
	end

	def add(player)
		names << player		
	end

	def sort_groups
		names.shuffle.each_slice(6).to_a.freeze
	end

end

	# def names
	# 	%w(Alex Ella Nicole Dan Hadi Craig Colin Rachel Hastings Bernard Stephen Denise Sandrine Victoria Scully Fadie Elena Pablo Zeeshan Camilla Yvette James Karin Sean)
	# end