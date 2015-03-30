class RamblesController < ApplicationController

  def index
    @rambles = Ramble.all
  end

  def create
    @ramble = Ramble.new(ramble_params)
    @ramble.time = Date.today
    @ramble.user_id = current_user.id
    if @ramble.save
      flash[:notice] = "Ramble heard"
    else
      flash[:alert] = "There was a problem with your ramble"
    end
    respond_to do |format|
      format.html { redirect_to :back }
      format.js
    end
  end

  private

  def ramble_params
    params.require(:ramble).permit(:content)
  end

end
