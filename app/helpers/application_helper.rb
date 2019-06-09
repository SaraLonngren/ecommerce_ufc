module ApplicationHelper
    
    def my_products(o)
        @todas_ordens = OrderItem.where(order_id: o.id)
        @ids = Array.new
        @todas_ordens.each do |oi|
            @ids << Product.find(oi.product_id).id
        end 
        return @ids
    end 

    def product_quanity(ord, prod)
        @ids_prod = OrderItem.where(order_id: ord.id).where(product_id: prod).first
        return @ids_prod.quantity

    end 

end
