class HomeVideosController < ApplicationController
    def new
        @home_video = HomeVideo.new
    end

    def create
        @home_video = HomeVideo.new(home_video_params)
        if @home_video.save
            redirect_to home_video_path(@home_video), notice: 'Home video was successfully created.'
        else
            render :new
        end
    end

    def show    
        @home_video = HomeVideo.find(params[:id])
    end

    private

    def home_video_params
        params.require(:home_video).permit(:title, :video, :user_id)
    end
end
