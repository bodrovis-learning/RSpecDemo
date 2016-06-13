module UsersHelper
  def strip_domain(user)
    # user.email = 'test@example.com'
    # test
    user.email.split('@')[0]
  end
end