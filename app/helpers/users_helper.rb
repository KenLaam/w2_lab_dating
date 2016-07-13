module UsersHelper
  def default_image_url(user)
    return unless user
    user.image_url.presence || 'http://4.bp.blogspot.com/_ndu1QvzN_g4/TGyv2ll3qJI/AAAAAAAAAJs/ZWV9JPibojA/s72-c/fb-default-pics-2.jpg'
  end
end