class LogsController < ApplicationController

  skip_before_filter :verify_authenticity_token

  def create
    new_log = Log.new(entry: request.raw_post)
    new_log.save
    render 'index'
  end

end
