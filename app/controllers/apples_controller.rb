class ApplesController < ApplicationController

  def index
    @apples = Apple.all
  end

  def show
    @apple = Apple.find(params[:id])
  end

  def new
    @apple = Apple.new
  end

  def create
    @apple = Apple.new(apples_params)


    if @apple.save
      redirect_to @apple
    else
      render action: "new"
    end
  end

  private

  def apples_params
    params.require(:apple).permit(:title, :quantity)
  end

end
