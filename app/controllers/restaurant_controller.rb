class RestaurantController < ApplicationController
    def restaurantmain
        if params[:query].nil?
            @food=Food.all
        else
            @food = Food.where("foodname LIKE ?", "%#{params[:query]}%")
        end
    end
    
    def restaurantdata
        
        @restaurant = Restaurant.find(params[:r_id])
        
    end 
    
end
