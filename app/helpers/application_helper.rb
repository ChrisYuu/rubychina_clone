module ApplicationHelper
  def gravatar_url(email)
	hash = Digest::MD5.hexdigest(email.downcase)
	"//www.gravatar.com/avatar/#{hash}?s=47"
  end

  def current_user
    @current_user ||= User.find_by_username(session[:username]) if session[:username]
  end
end
