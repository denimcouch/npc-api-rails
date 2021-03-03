class Api::CharactersController < ApplicationController
  before_action :authorized

  def create
    user = User.find_by(id: character_params[:user_id])
    character = Character.new(name: character_params[:name], race: character_params[:race], is_adventurer: character_params[:is_adventurer], role: character_params[:role], user_id: character_params[:user_id])
    # byebug
    character.save
    render json: {user: UserSerializer.new(user)}
  end

  private

  def character_params
    params.require(:character).permit(:name, :race, :is_adventurer, :role, :user_id)
  end

end
