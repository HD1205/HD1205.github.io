class PostController < ApplicationController
    def index
        
    end
    
    def freepostwrite
        
        table= Freepost.new(title: params[:title], content: params[:content], user: current_user)
        table.save
        redirect_to "/freepost"
    end
    
    def freepostdestroy
        d=Freepost.find(params[:post_id])
	  	d.destroy
		  redirect_to "/freepost"
    end
    
    def freepostupdate
        @u=Freepost.find(params[:post_id])
    end
    
    def freepostupdate_s
		us=Freepost.find(params[:post_id])
		us.title= params[:title]
		us.content= params[:content]
		us.save

		redirect_to "/freepost"
	end
    
    def freepost
        @freepost = Freepost.all
    end
   
    def commentshow
        @post = Freepost.find(params[:post_id])
        
    end


end