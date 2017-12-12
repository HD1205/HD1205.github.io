class NoticeController < ApplicationController
    def noticemain
        if params[:query].nil?
          @notice = Notice.all
        else
          @notice = Notice.where("title LIKE ?", "%#{params[:query]}%")
        end
    end

end
