class LogsController < ApplicationController

  protect_from_forgery except: :index

  def create
    new_log = Log.new(entry: request.raw_post)
    new_log.save
    render 'index'
  end

end
