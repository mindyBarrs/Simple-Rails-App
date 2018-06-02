class PagesController < ApplicationController
    # Creating Methods
    def index
        @title ="Welcome"
        @content = "Welcome to the Homepage"
    end

    def about
        @title = "About"
        @content = "Welcome to the About page"
    end

    def contact
        @title = "Contact"
        @content = "Welcome to the Contact page"
    end

    def services
        @title = "Service"
        @content = "Welcome to the Service page"
        @services = ["Web Design", "Web Development", "SEO"]
    end
end