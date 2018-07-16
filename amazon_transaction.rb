# Code your cash register here!
class AmazonTransaction
  attr_accessor :discount, :total, :prime
  attr_reader :items
#   attr_writer
  
  
  def initialize(discount = nil, prime = false)
    @total = 0
    @items = []
    @discount = discount
    @prime = prime
  end
  
  def add_item(title, price, qnt = 1)
    qnt.times {@items.push (title)}
    @total += price*qnt
  end
  
  def apply_discount
   if @discount == nil
      "There is no discount to apply."
   else
   @total -=@total*(@discount.to_f/100)
    "After the discount, the total comes to $#{@total}."
  end    
end   
  
  def shipping
    if @total >= 100 && @total < 200
     puts "After shipping your total is #{(@total +=5).round(2)}"
    elsif @total >=200 
     puts "After shipping your total is #{(@total).round(2)}"
    elsif @prime == true
     puts "After shipping your total is #{(@total).round(2)}"
    else 
      puts "After shipping your total is #{(@total +=10).round(2)}"
  end
end  
  
  
