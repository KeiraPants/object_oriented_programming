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
    count = 0

    #--choosing odd side
    if @side == "odd"
      total_address = end_address - start_address
      for i in 0..total_address
       if i.to_i % 2 != 0
         count += 1
       else
         count += 0
       end
     end
      #--------------------


    # -- choosing even side
    if @side == "even"
      total_address = end_address - start_address
      for i in 0..total_address
       if i.to_i % 2 == 0
         count += 1
       else
         count += 0
       end
     end
    end

  end

  def paperboy_report

  end

end

#sam = Paperboy.new('sam', 50, 0, "odd", 0)
