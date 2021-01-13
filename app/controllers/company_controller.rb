class CompanyController < ApplicationController
  def index
    @company = Company.all
  end

  def show
    @company = Company.find(params[:id])
  end

  def new
    @company = Company.new
  end

  def create
    def create
      params.require(:company).permit(:name, :address)
      company = Company.new({
                              name: params[:name],
                              address: params[:address]
                            })
      company.save
    end
  end

  private
  def article_params
    params.require(:company).permit(:name, :address)
  end

end
