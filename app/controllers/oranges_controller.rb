class OrangesController < ApplicationController

  def index
    @oranges = Orange.all
  end

  def show
    @orange = Orange.find(params[:id])
  end

  def new
    @orange = Orange.new
  end

  def create
    @orange = Orange.new(oranges_params)


    if @orange.save
      redirect_to @orange
    else
      render action: "new"
    end
  end

  private

  def oranges_params
    params.require(:orange).permit(:title, :quantity)
  end
end
