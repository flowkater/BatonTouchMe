class AuthkeysController < ApplicationController
  def show
    @authkey = authkey.find(params[:id])
  end

  def new
    @authkey = authkey.new
  end

  def create
    @authkey = authkey.new(params[:authkey])
    if @authkey.save
      sign_in @authkey
      flash[:success] = "Welcome to the StudyGroup!"
      redirect_to @authkey
    else
      render 'new'
    end
  end

  private
    def correct_authkey
      @authkey = authkey.find(params[:id])
      redirect_to(root_path) unless current_authkey?(@authkey)
    end
end
