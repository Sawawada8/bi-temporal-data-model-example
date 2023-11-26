# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def index
    render json: { hel: 1234 }
  end
end
