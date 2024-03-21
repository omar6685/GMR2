class StaticPublicController < ApplicationController
    skip_before_action :authenticate_user!, only: [:home, :about, :contact, :privacy, :terms, :legal_notice]

    def home
        @home_video = HomeVideo.last
    end

    def about
    end

    def contact
    end

    def privacy
    end
     
    def terms
    end

    def legal_notice
    end

end
