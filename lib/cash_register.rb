class CashRegister
    attr_accessor :total, :discount, :items, :last_transaction

    def initialize (discount=nil)
        @total=0
        @discount=discount
        @items=[]
    end

    def add_item(title, price, quantity=1)
        quantity.times do 
            self.items<<title
        end
        self.total+=price*quantity
        self.last_transaction=price*quantity
    end

    def apply_discount
        if discount
         self.total*=1-discount/100.0
        "After the discount, the total comes to $#{self.total.to_i}."
        else 
            "There is no discount to apply."
        end
    end

    def void_last_transaction
        self.total-=self.last_transaction
    end

end
