class StaticPublicController < ApplicationController
    skip_before_action :authenticate_user!, only: [:home, :about, :contact, :privacy, :terms, :legal_notice]

    def home
        @home_video = HomeVideo.last
    end

    def about_static
    end

    def contact_static
    end

    def privacy_static
    end
     
    def terms_static
    end

    def legal_notice_static
    end

end
