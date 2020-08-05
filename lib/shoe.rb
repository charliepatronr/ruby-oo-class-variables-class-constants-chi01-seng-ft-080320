require "pry"

class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS =  []

  def initialize(brand)
    @brand = brand
    if(!BRANDS.include?(brand))
      BRANDS << brand
    end 

  end


  ## Test suite passes without if codition 
  ## however if a shoe brand is modified and has not been initialized it should added to the BRANDS arr
  def brand= (brand)
    @brand = brand
    if(!BRANDS.include? (brand))
      BRANDS << brand
    end 
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

end


brands = ["Uggs", "Rainbow", "Nike", "Nike"]

shoe1 = Shoe.new("Uggs")
shoe2 = Shoe.new("Rainbow")
shoe4 = Shoe.new("Nike")
shoe3 = Shoe.new("Nike")



