class SessionsController < ApplicationController
  # before_filter :signed_in_key, only: [:new]
  def new
  end

  def create
    @key = Key.find_by_authkey(params[:session][:authkey])
    if @key
      # signin Success! create Session
      sign_in(@key)
      redirect_to root_path
    else
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end
