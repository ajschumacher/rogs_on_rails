class LogsController < ApplicationController

  protect_from_forgery except: :index

  def create
    render 'index'
  end

end
