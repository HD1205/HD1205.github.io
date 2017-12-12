class ScoreController < ApplicationController
    def scoremain
        @score = Score.all
    end
    
    def scoredata
        @score = Score.find(params[:score_id])
        
    end
    
    def scorewrite

    end
    
    def scorecreate
        score = Score.create(content: params[:content], user: current_user)
        redirect_to "/scoremain"
    end
    
end
