class StaticPagesController < ApplicationController
  before_action :admin_logged_in, only: [:dashboard]

  def home
  end

  def help
  end

  def about
  end

  def contact
  end

  def dashboard
  end

  def search
    if params[:search].blank?  
      @results = []
    else 
      @parameter = params[:search].downcase  
      @results = Item.all.where("lower(name) LIKE :search", search: "%#{@parameter}%") 
    end
  end
  
  private
    def admin_logged_in
      unless admin?
        redirect_to :root
      end
    end
end
