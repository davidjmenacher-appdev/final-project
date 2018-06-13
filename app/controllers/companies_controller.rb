class CompaniesController < ApplicationController
  def index
    @companies = Company.all

    render("company_templates/index.html.erb")
  end

  def show
    @company = Company.find(params.fetch("id_to_display"))

    render("company_templates/show.html.erb")
  end

  def new_form
    render("company_templates/new_form.html.erb")
  end

  def create_row
    @company = Company.new

    @company.name = params.fetch("name")
    @company.URL = params.fetch("URL")
    @company.description = params.fetch("description")
    @company.total_funding = params.fetch("total_funding")
    @company.sector = params.fetch("sector")
    @company.industry = params.fetch("industry")
    @company.sub_industry = params.fetch("sub_industry")
    @company.country = params.fetch("country")
    @company.state = params.fetch("state")
    @company.city = params.fetch("city")
    @company.vc_backed = params.fetch("vc_backed")
    @company.last_funding_round = params.fetch("last_funding_round")
    @company.last_funding_date = params.fetch("last_funding_date")
    @company.last_funding_amount = params.fetch("last_funding_amount")

    if @company.valid?
      @company.save

      redirect_to("/companies", :notice => "Company created successfully.")
    else
      render("company_templates/new_form.html.erb")
    end
  end

  def edit_form
    @company = Company.find(params.fetch("prefill_with_id"))

    render("company_templates/edit_form.html.erb")
  end

  def update_row
    @company = Company.find(params.fetch("id_to_modify"))

    @company.name = params.fetch("name")
    @company.URL = params.fetch("URL")
    @company.description = params.fetch("description")
    @company.total_funding = params.fetch("total_funding")
    @company.sector = params.fetch("sector")
    @company.industry = params.fetch("industry")
    @company.sub_industry = params.fetch("sub_industry")
    @company.country = params.fetch("country")
    @company.state = params.fetch("state")
    @company.city = params.fetch("city")
    @company.vc_backed = params.fetch("vc_backed")
    @company.last_funding_round = params.fetch("last_funding_round")
    @company.last_funding_date = params.fetch("last_funding_date")
    @company.last_funding_amount = params.fetch("last_funding_amount")

    if @company.valid?
      @company.save

      redirect_to("/companies/#{@company.id}", :notice => "Company updated successfully.")
    else
      render("company_templates/edit_form.html.erb")
    end
  end

  def destroy_row
    @company = Company.find(params.fetch("id_to_remove"))

    @company.destroy

    redirect_to("/companies", :notice => "Company deleted successfully.")
  end
end
