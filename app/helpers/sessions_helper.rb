#encoding: UTF-8
module SessionsHelper
  def sign_in(authkey)
    cookies.permanent[:remember_token] = authkey.remember_token
    self.current_authkey = authkey
  end

  def signed_in?
    !current_authkey.nil?
  end

  def sign_out
    cookies.delete(:remember_token)
  end

  def current_authkey=(authkey)
    @current_authkey = authkey
  end

  def current_authkey
    @current_authkey ||= authkey_from_remember_token
  end

  def current_authkey?(authkey)
    authkey == current_authkey
  end

  def signed_in_authkey
    unless signed_in?
      store_location
      redirect_to signin_path, notice: "인증번호를 넣어주세요^^"
    end
  end

  def redirect_back_or(default)
    redirect_to(session[:return_to]||default)
    clear_return_to
  end

  def store_location
    session[:return_to] = request.fullpath
  end

  private
    def authkey_from_remember_token
        remember_token = cookies[:remember_token]
          Authkey.find_by_remember_token(remember_token) unless remember_token.nil?
    end

    def clear_return_to
      session.delete(:return_to)
    end
end
