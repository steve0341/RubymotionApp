class RequestScreen < PM::Screen
  title 'Requests'

  def on_load
    set_nav_bar_button :right, title: "Find a Friend?", system_item: :add, action: :open_add_request
  end

  def will_appear

    set_attributes self.view, {
      background_color: hex_color('FFC0A9')
    }

    add UILabel.new, {
      text: "Let's make a request",
      font: UIFont.systemFontOfSize(18),
      left: 20,
      top: 200,
      width: 280,
      height: 50,
      text_alignment: NSTextAlignmentCenter
    }
  end

  def open_add_request
    open_modal AddRequestScreen.new(nav_bar: true)
  end
end