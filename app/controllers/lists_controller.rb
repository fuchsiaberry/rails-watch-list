class ListsController < ApplicationController
  # show all lists
  def index
    @lists = List.all
  end

  # show one list
  def show
    @list = List.find(params[:id])
  end

  # create a new list
  def new
    @list = List.new
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to list_path(@list)
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
