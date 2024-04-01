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
        @about = About.first
        @home_site = HomeSite.last
        set_meta_tags title: "About Us",
                        description: "GMR Recycling specializes in recycling and metal recovery. At GMR, we 
                        strive to achieve the highest standards in preserving the environment and natural resources. 
                        We are also keen to use the latest clean technology in order to recover metals and raise 
                        awareness about the importance of recovering metals in a correct and environmentally friendly 
                        manner. We also explain to you the company’s most important activities and its products of 
                        recovered metals. We thank you for visiting our website and learning more about the 
                        importance of recycling lead-acid batteries and recovering metals.",                        
                        keywords: "about, company, history, team, mission, vision, values",
                        og: {
                            title: @about.title,
                            description: :description,
                        }                            

    end

    def contact
        @contact = Contact.first
        set_meta_tags title: "Contact Us",
                        description: "Contact GMR Recycling for any inquiries or questions you may have. We are
                        always ready to help you and provide you with the information you need. We are also keen to 
                        receive your suggestions and feedback on our services and products. We are always ready to 
                        listen to you and respond to your inquiries as soon as possible. We thank you for visiting 
                        our website and we are always ready to serve you.",                        
                        keywords: "contact, email, phone, address, location, map, form",
                        og: {
                            title: "Contact Us",
                            description: :description,
                        }
    end

    def privacy
        @privacy = Privacy.first
        set_meta_tags title: "Privacy Policy",
                        description: "GMR Recycling is committed to protecting your privacy and personal data.
                        We are keen to protect your personal data and information and we are committed to
                        protecting your privacy. We are also keen to use the latest technology to protect your
                        personal data and information. We are also keen to use the latest technology to protect
                        your personal data and information. We are also keen to use the latest technology to
                        protect your personal data and information. We are also keen to use the latest technology
                        to protect your personal data and information. We are also keen to use the latest technology",
                        keywords: "privacy, policy, data, protection, personal, information, security",
                        og: {
                            title: "Privacy Policy",
                            description: :description,
                        }
    end
     
    def terms
        @term = Term.first
        set_meta_tags title: "Terms of Use",
                        description: "GMR Recycling is committed to protecting your privacy and personal data.
                        We are keen to protect your personal data and information and we are committed to
                        protecting your privacy. We are also keen to use the latest technology to protect your
                        personal data and information. We are also keen to use the latest technology to protect
                        your personal data and information. We are also keen to use the latest technology to
                        protect your personal data and information. We are also keen to use the latest technology",
                        keywords: "terms, use, conditions, agreement, contract, legal, rules",
                        og: {
                            title: "Terms of Use",
                            description: :description,
                        }
    end

    def legal_notice
        @legal_notice = LegalNotice.first
        set_meta_tags title: "Legal Notice",
                        description: "GMR Recycling is committed to protecting your privacy and personal data.
                        We are keen to protect your personal data and information and we are committed to
                        protecting your privacy. We are also keen to use the latest technology to protect your
                        personal data and information. We are also keen to use the latest technology to protect
                        your personal data and information. We are also keen to use the latest technology to
                        protect your personal data and information. We are also keen to use the latest technology",
                        keywords: "legal, notice, law, rights, obligations, rules, regulations",
                        og: {
                            title: "Legal Notice",
                            description: :description,
                        }
    end

    def dashboard
        set_meta_tags title: "Dashboard",
                        description: "GMR Recycling is committed to protecting your privacy and personal data.
                        We are keen to protect your personal data and information and we are committed to
                        protecting your privacy. We are also keen to use the latest technology to protect your
                        personal data and information. We are also keen to use the latest technology to protect
                        your personal data and information. We are also keen to use the latest technology to
                        protect your personal data and information. We are also keen to use the latest technology",
                        keywords: "dashboard, admin, control, panel, management, settings",
                        og: {
                            title: "Dashboard",
                            description: :description,
                        }
    end

    def general_pages
    end
end
