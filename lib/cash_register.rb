class CashRegister
    def initialize(discount = nil, total = 0)
        @discount = discount
        @total = total
        @items = []
    end

    attr_reader :discount, :items
    attr_accessor :total

    def add_item(title, price, quantity = 1)
        self.total += price * quantity
        quantity.times {@items << title}
    end

    def apply_discount
        unless @self.discount == nil
            savings = (@self.discount / 100) * self.total
            self.total = self.total - savings
            "After the discount, the total comes to $#{self.total}."
        else
            "There is no discount to apply."
        end
    end

end