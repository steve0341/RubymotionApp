class FriendsScreen < PM::Screen
  attr_accessor :friend_id

  title "Friends"
  def on_load
    # self.title = "Friend #{self.friend_id}"
    set_nav_bar_button :right, title: "Find a Friend?", action: :open_find_screen
  end

  def will_appear
    set_attributes self.view, {
      background_color: hex_color('C9D787')
    }

    add UILabel.new, {
      text: "Friend's Profile",
      font: UIFont.systemFontOfSize(18),
      left: 20,
      top: 200,
      width: 280,
      height: 50,
      text_alignment: NSTextAlignmentCenter
    }
  end

  def open_find_screen
    open FindScreen.new(nav_bar: true)
  end
end