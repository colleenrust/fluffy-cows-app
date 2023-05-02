class CowsController < ApplicationController
  def index
    @cows = Cow.first(4)
    @color = "danger"
    render :index
  end
  def show
    @cow = Cow.all.sample
    render :show
  end
  def new    
    @cow = Cow.new
  end

  def create
    @cow = Cow.new(
      photo: params[:cow][:photo],
      compliment: params[:cow][:compliment]
    )
    @cow.save
    redirect_to "/cows/#{@cow.id}"
  end
end
