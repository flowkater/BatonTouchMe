module SessionsHelper
  def sign_in(key)
    cookies.permanent[:remember_token] = key.remember_token
    self.current_key = key
  end

  def signed_in?
    !current_key.nil?
  end

  def sign_out
    cookies.delete(:remember_token)
  end

  def current_key=(key)
    @current_key = key
  end

  def current_key
    @current_key ||= key_from_remember_token
  end

  def current_key?(key)
    key == current_key
  end

  def signed_in_key
    unless signed_in?
      store_location
      redirect_to signin_path, notice: "Please sign in."
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
    def key_from_remember_token
        remember_token = cookies[:remember_token]
          Key.find_by_remember_token(remember_token) unless remember_token.nil?
    end

    def clear_return_to
      session.delete(:return_to)
    end
end
