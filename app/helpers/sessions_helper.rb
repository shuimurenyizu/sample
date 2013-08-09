module SessionsHelper

	def sign_in(user)
    remember_token = User.new_remember_token
    cookies.permanent[:remember_token] = remember_token
    user.update_attribute(:remember_token, User.encrypt(remember_token))
    self.current_user = user
	end

	def signed_in?
		!current_user.nil?
	end

	def current_user=(user) # current_user= 方法是用来处理 current_user 赋值操作的
		@current_user = user
		# current_user= 方法定义体内只有一行代码，即设定实例变量 @current_user 的值，以备后用。
	end

	def current_user
		remember_token = User.encrypt(cookies[:remember_token])
		@current_user ||= User.find_by_remember_token(remember_token)
	end

  def current_user?(user)
    user == current_user
  end

	def sign_out
		self.current_user = nil
		cookies.delete(:remember_token)
	end

  def redirect_back_or(default)
    redirect_to(session[:return_to] || default)
    session.delete(:return_to)
  end

  def store_location
    session[:return_to] = request.fullpath
  end
end
