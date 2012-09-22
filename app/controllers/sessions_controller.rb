#encoding: UTF-8
class SessionsController < ApplicationController
  def new
    redirect_back_or find_path if current_authkey
  end

  def create
    @authkey = Authkey.find_by_authkey(params[:session][:authkey])
    if @authkey
      # signin Success! create Session
      flash[:notice] = "인증에 성공했습니다^^ 최강의 러너들에게 바톤을 전달해보세요!"
      sign_in(@authkey)
      redirect_back_or root_path
    else
      flash[:error] = "인증번호가 잘못되었습니다!"
      render 'new'
    end
  end

  def destroy
    sign_out
    redirect_to root_path
  end
end
