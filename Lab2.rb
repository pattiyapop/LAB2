# Lab 2: Deliverable by Pattiya Mahapasuthanon
# 09/11/2013
# Part 1 and Part 2

#Part1: Hello World
class HelloWorldClass
    def initialize(name)
       @name = name.capitalize
    end
    def sayHi
        puts "Hello #{@name}!"
    end
end
hello = HelloWorldClass.new("{type your name here}")
hello.sayHi

# Part2: Strings
# a
def palindrome?(string)  
   (string.downcase.gsub(/\W/, '') == string.downcase.gsub(/\W/, '').reverse)
end

=begin
print palindrome?("A man, a plan, a canal -- Panama")  # => true
print palindrome?("Madam, I'm Adam!")                  # => true
print palindrome?("Abracadabra")                       # => false (nil is also ok)
=end

# b
def count_words(string) 
   words_hash = Hash.new(0)
   string.downcase.gsub(/\b/, '').split().each do |i|  
   words_hash[i] += 1  
   end
   words_hash 
end

=begin
print count_words("A man, a plan, a canal -- Panama")
    # => {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1, 'plan' => 1}
print count_words "Doo bee doo bee doo"
    # => {'doo' => 3, 'bee' => 2}
=end


