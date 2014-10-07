class Array

	 def steves_method_improved_further_again(initial=nil, additional_symbol=nil)
	 	if initial.is_a?(Fixnum) && additional_symbol.nil?
			@number = initial 
			(0..self.length-1).each {|number| @number = yield(@number, self[number]) }
			return @number
		elsif initial.nil? && additional_symbol.nil?
			@number = self.first 
			(1..self.length-1).each {|number| @number = yield(@number, self[number]) }
			return @number
		elsif initial.is_a?(Symbol) && additional_symbol.nil?
			@number = self.first
			(1..self.length-1).each {|number| @number = @number.send(initial, self[number])}
			return @number
		end
			@number = initial
			(0..self.length-1).each {|number| @number = @number.send(additional_symbol, self[number])}
			return @number
	 end

end



# 1 + 1
# 1.+(1)

# 1.send(:+, 1)

# memo = 0
# if initial.is_a?(Symbol)
# 	memo = memo.send(initial, number)
# end

# memo


# steves_method(*args)
 # def steves_method(initial = nil)
	# 	@number = initial
	# 	(0..(self.length-1)).each {|number| @number = yield(@number, self[number]) }
	# 	@number
	#  end

 # 	 def steves_method_improved(initial = nil)
	# 	if initial.is_a?(Fixnum)
	# 		@number = initial 
	# 		(0..self.length-1).each {|number| @number = yield(@number, self[number]) }
	# 		return @number
	# 	elsif initial.nil?
	# 		@number = self.first 
	# 		(1..self.length-1).each {|number| @number = yield(@number, self[number]) }
	# 		return @number
	# 	end
	#  end

	#  def steves_method_improved_further(initial=nil)
	#  	if initial.is_a?(Fixnum)
	# 		@number = initial 
	# 		(0..self.length-1).each {|number| @number = yield(@number, self[number]) }
	# 		return @number
	# 	elsif initial.nil?
	# 		@number = self.first 
	# 		(1..self.length-1).each {|number| @number = yield(@number, self[number]) }
	# 		return @number
	# 	elsif initial.is_a?(Symbol)
	# 		@number = self.first
	# 		(1..self.length-1).each {|number| @number = @number.send(initial, self[number])}
	# 		return @number
	# 	end
	#  end