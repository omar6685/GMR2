class StaticPublicController < ApplicationController
    skip_before_action :authenticate_user!, only: [:home, :about, :contact, :privacy, :terms, :legal_notice]

    def home
        @home_video = HomeVideo.last
        @home_test = HomeTest.last
        @home_boxes = HomeBox.all
        @products = Product.all
        @home_site = HomeSite.last
    end

    def about
    end

    def contact
        @contact = Contact.first
    end

    def privacy
        @privacy = Privacy.first
    end
     
    def terms
        @term = Term.first
    end

    def legal_notice
        @legal_notice = LegalNotice.first
    end

end
