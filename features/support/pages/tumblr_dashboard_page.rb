class TumblrDashboardPage < GenericPage
  def check_dashboard
    raise unless @browser.nav(id: "post_buttons").a(id: "new_post_label_text").present? == true
  end

  def new_post_btn
    @browser.nav(id: "post_buttons").a(id: "new_post_label_text").when_present(5)
  end

  def put_title
    title_elm = @browser.div(class: "editor-plaintext").when_present(5).click
    #title_elm.send_keys(POST_DATA['title'])
  end

  def put_body
    body_elm = @browser.div(class: "editor editor-richtext").when_present(5).click
    body_elm.send_keys(POST_DATA['body'])
  end
end
