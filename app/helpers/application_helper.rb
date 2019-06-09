module ApplicationHelper
    
    def my_products(o)
        @todas_ordens = OrderItem.where(order_id: o.id)
        @nomes = Array.new
        @todas_ordens.each do |oi|
            @nomes << Product.find(oi.product_id).name
        end 
        return @nomes
    end 
end
