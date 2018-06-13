class HomeController < ApplicationController
    
    def home
        render("home_layouts/home.html.erb")
    end
    
end
