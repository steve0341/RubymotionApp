class ProfileScreen < PM::Screen
  title 'Profiles'
  attr_accessor :user_id

  def on_load
    set_nav_bar_button :right, title: "Add", system_item: :add, action: :open_add_request
  end

  def will_appear
    set_attributes self.view, {
      background_color: hex_color('FFFFFF')
    }

    add UILabel.new, {
      text: "Profiles",
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