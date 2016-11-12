#Release 1

#module Shout
  #def self.yell_angrily(words)
    #words.upcase + "!!!" + " >:("
  #end

  #def self.yelling_happily(words)
  	#words.upcase + " wooo!!!" + ":)"
  #end

#end

#puts Shout.yell_angrily('where are you')
#puts Shout.yelling_happily('i won')

#Release 3

module Shout
	def yell_angrily(words)
		words.upcase + "!!!" + ">:("
	end 

	def yelling_happily(words)
		words + " wooo!!!" +":)"
	end
end 

class Teacher
	include Shout

end

class Parent
	include Shout
end

Ms_Brown = Teacher.new
puts Ms_Brown.yell_angrily("Pay attention")

Mother = Parent.new
puts Mother.yelling_happily("Good job!")