class CommentController < ApplicationController
    
    def write
        unless params[:post_id].nil?
            comment = Comment.create(comment: params[:comment], freepost_id: params[:post_id], user: current_user)
            redirect_to "/commentshow/#{params[:post_id]}"
        else
            comment = Comment.create(comment: params[:comment], score_id: params[:score_id], user: current_user)
            redirect_to "/scoredata/#{params[:score_id]}"
        end
        
    end
    
    def destroy
        unless params[:post_id].nil?
            @comment = Comment.where(freepost_id: params[:post_id])
            @rcomment = @comment.find(params[:c_id])
            @rcomment.destroy
            redirect_to "/commentshow/#{params[:post_id]}"
        else
            @comment = Comment.where(score_id: params[:score_id])
            @rcomment = @comment.find(params[:c_id])
            @rcomment.destroy
            redirect_to "/scoredata/#{params[:score_id]}"
        end
    end
end
