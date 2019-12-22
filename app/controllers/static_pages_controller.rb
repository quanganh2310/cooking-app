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

  def sendmess
    data = params[:content]

    pusher = Pusher::Client.new(
      app_id: '914360',
      key: '2fdd4bc794d49256edb0',
      secret: 'c72bac4a2f44e76d5af4',
      cluster: 'ap1',
      encrypted: true
    )
      
    pusher.trigger('my-channel', 'my-event', data)
    redirect_to ('/dashboard')
  end
  
  private
    def admin_logged_in
      unless admin?
        redirect_to :root
      end
    end
end
