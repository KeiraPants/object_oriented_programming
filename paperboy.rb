#Create class called Paperboy.
#Everything here will apply to all paperboys
class Paperboy

  attr_reader :name, :quota, :experience, :side, :earnings

  def initialize(name, quota, experience, side, earnings)
    @name = name
    @quota = quota
    @experience = experience
    @side = side
    @earnings = earnings
  end

end
