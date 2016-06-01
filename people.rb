#PARENT CLASS that contains the atrribute name
#and an initializer to SET the name
class Person
    attr_accessor :name
    def initialize()
      @name = name
    end

    def greeting
      puts "Hi, my name is #{name}"
    end

end

#Defining student class, and learn method
#A student has the ability to learn
class Student < Person
  def learn
    puts "I get it"
  end
end

#Defining student class, and learn method
#A teacher has the ability to teach
class Instructor < Person
  def teach
    puts "Everything in Ruby is an Object"
  end
end

#Instance of the instructor named "Chris" calling his greeting
chris = Instructor.new
chris.name = "Chris"
chris.teach
