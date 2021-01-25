require 'pry'


class CashRegister

    attr_accessor :total, :items, :price, :discount, :last_transaction
    def initialize(discount=0)
      @total = 0
      @discount = discount
      @items = []
      @price = []
    end
    
    def add_item(item, price, quantity=1)
        @last_items = self.items 
      self.price << price
      self.total += (quantity * price)
      quantity.times do
        self.items << item
      end
      self.last_transaction = price * quantity
    end
    
    def apply_discount
      if @discount > 0
        f_discount = @discount.to_f
        f_total = @total
        f_total -= (f_total * (f_discount * 0.01))
        @total = f_total.to_i
        return "After the discount, the total comes to $#{f_total.to_i}."
      end
      return "There is no discount to apply."
    end
    
    def void_last_transaction
        self.total = self.total - self.last_transaction
    end
    
    
        #   self.total -= self.price[-1]
    #     self.items = @last_items
    #   if self.items.empty? 
    #     self.total = 0.0
    #   end
    # end
end

    