class ItemsController < ApplicationController

  def new
    @item = Item.new
    @user = current_user
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user

    if @item.save
      redirect_to root_path, notice: "Item was saved successfully."
    else
      flash.now[:alert] = "Error creating item. Please try again."
      render :new
    end
  end

  def destroy
     @item = Item.find(params[:id])
     @item.destroy

    respond_to do |format|
      format.html
      format.js
    end
  end

  private
  def item_params
    params.require(:item).permit(:name)
  end
end
