class TumblrLoginPage < GenericPage
  def visit
    @browser.goto 'www.tumblr.com/login'
  end

  # Getters
  def email_text_field
    @browser.div(id: "signup_determine").text_field.when_present(5)
  end

  def password_text_field
    @browser.div(id: "signup_account").text_field(id: "signup_password").when_present(5)
  end

  def next_btn
    @browser.button(id: "signup_forms_submit").when_present(5)
  end

  # Setters
  def set_email_text_field
    email_text_field.set LOGIN_DATA['email']
  end

  def set_password_text_field
    password_text_field.set LOGIN_DATA['password']
  end

end
