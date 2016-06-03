#Create class called Paperboy.
#Everything here will apply to all Paperboys
class Paperboy

  attr_accessor :name, :quota, :experience, :side
  attr_reader :earnings

  # initializer
  #Do not need to put all instance variables as PERAMETERS... Only REQUIRED information from the user
  def initialize(name, side)
    @name = name
    @quota = 50
    @experience = 0
    @side = side
    @earnings = 0
    @number_of_houses = 0
  end

  def paperboy_quota
    quota = (@experience / 2) + 50
  end

  def paperboy_deliver(start_address, end_address)
    #finding the number of houses that the paperboy delivers to
    @number_of_houses = (end_address - start_address) / 2
    #calculating his total money earned for those houses
    amount = @number_of_houses * 0.25
    #Calculates the number of extra houses he delivered to
    bonus_houses = (@number_of_houses - quota)
    #calculating extra houses that he delivered to
    #multiplied by the extra .50
    bonus = (@number_of_houses - quota) * 0.50
    # puts "#{name} has delievered to #{number_of_houses} houses!"
    # puts "#{name} has earned $#{amount}!"
    # puts "#{name} has earned an extra $#{bonus} for surpassing his quota, and delivering to an extra #{bonus_houses} houses!"

    #Updating (counting) the paperboy's experience with
    #EACH house that he delivers to
    @experience += @number_of_houses
    puts "#{name} has #{@experience} experience!"
#----
    #If the paperboy exceeds his quota this adds
    #his total earnings to the bonus money he's earned
    if bonus > 0
      @earnings = amount + bonus
      puts "#{name} has earned a total of #{@earnings}!"
    #Else earnings is ONLY the total amount without
    #any bonus
    else
      @earnings = amount
      puts "#{name} has earned a total of #{amount}"
    end
    #If the paperboy doesn't meet his quota, this
    #subtracts $2 from his total earnings
    @earnings -= 2 if @number_of_houses < quota
    puts "#{name} has not met his quota, and has lost $2"
    return @number_of_houses.to_f
  end #end paperboy_deliver method

  def report
    puts "#{name} has delievered #{@number_of_houses} papers. He has earned a total of $#{@earnings}!"
  end




end #end class
#sam = Paperboy.new("sam","odd")
