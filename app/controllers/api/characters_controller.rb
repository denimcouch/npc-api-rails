class Api::CharactersController < ApplicationController
  before_action :authorized, only: [:create]
end
