#Create class called Paperboy.
#Everything here will apply to all Paperboys
class Paperboy

  attr_accessor :name, :quota, :experience, :side
  attr_reader :earnings

  def initialize(name, quota, experience, side, earnings)
    @name = name
    @quota = quota
    @experience = experience
    @side = side
    @earnings = earnings
  end

  def paperboy_quota
    quota = (@experience / 2) + 50
  end

  def paperboy_deliver(start_address, end_address)
    count_odd = 0
    count_even = 0
    total_address = end_address - start_address
    #--choosing odd side
    if @side == "odd"

      for i in 0..total_address
       if i.to_i % 2 != 0
         count_odd += 1
       end
       end
       puts count_odd
       money_odd = count_odd * 0.25
       puts money_odd.to_f
     end

      #--------------------


    # -- choosing even side
    if @side == "even"
      for x in 0..total_address
       if x.to_i % 2 == 0
         count_even += 1
       end
      end
      puts count_even
      money_even = count_even * 0.25
      puts money_even.to_f
     end


     #--------end even side


  end



  # def paperboy_report
  #
  # end


end
#sam = Paperboy.new('sam', 50, 0, "odd", 0)
