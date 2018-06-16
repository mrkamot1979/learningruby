class Gun
  attr_accessor :make, :model

  def initialize(make, model)
    @make = make
    @model = model

  end


  def getModel
    return model


  end

  def getMake
    return make
  end

end

ninogun = Gun.new("sig sauer", "p227")

puts ninogun.getMake