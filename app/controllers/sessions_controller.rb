class SessionsController < ApplicationController
  def new
    redirect_back_or find_path if current_key
  end

  def create
    @key = Key.find_by_authkey(params[:session][:authkey])
    if @key
      # signin Success! create Session
      sign_in(@key)
      redirect_back_or root_path
    else
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end
