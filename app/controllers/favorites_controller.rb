class FavoritesController < ApplicationController
  def index
    @favorites = Favorite.all

    render("favorite_templates/index.html.erb")
  end
  
  def my_favorites
    @companies = Company.all
    @favorites = Favorite.all
    
    render("favorite_templates/my_favorites.html.erb")
  end

  def show
    @favorite = Favorite.find(params.fetch("id_to_display"))

    render("favorite_templates/show.html.erb")
  end

  def new_form
    render("favorite_templates/new_form.html.erb")
  end

  def create_row
    @favorite = Favorite.new

    @favorite.user_id = params.fetch("user_id")
    @favorite.company_id = params.fetch("company_id")

    if @favorite.valid?
      @favorite.save

      redirect_to("/companies", :notice => "Favorite created successfully.")
    else
      render("favorite_templates/new_form.html.erb")
    end
  end

  def edit_form
    @favorite = Favorite.find(params.fetch("prefill_with_id"))

    render("favorite_templates/edit_form.html.erb")
  end

  def update_row
    @favorite = Favorite.find(params.fetch("id_to_modify"))

    @favorite.user_id = params.fetch("user_id")
    @favorite.company_id = params.fetch("company_id")

    if @favorite.valid?
      @favorite.save

      redirect_to("/favorites/#{@favorite.id}", :notice => "Favorite updated successfully.")
    else
      render("favorite_templates/edit_form.html.erb")
    end
  end

  def destroy_row
    @favorite = Favorite.find(params.fetch("id_to_remove"))

    @favorite.destroy

    redirect_to("/companies", :notice => "Favorite deleted successfully.")
  end
end
