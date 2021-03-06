class RoomsController < ApplicationController
  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      redirect_to rooms_path
    else
      redirect_to user_path
    end
  end

  private

  def room_params
    params.require(:room).permit(:name, user_ids: [])
  end

end
