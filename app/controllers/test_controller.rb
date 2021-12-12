class TestController < ApplicationController
  def index
    render json: "test"
  end
end
