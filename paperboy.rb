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
    quota = (experience / 2) + 50
  end

  def paperboy_deliver(start_address, end_address)

  end

  def paperboy_report

  end

end
