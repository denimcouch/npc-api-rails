class WelcomeController < ApplicationController
  skip_before_action :authorized

  def index
    render json: {message: "Welcome to CharGen"}
  end

end
