class AddRequestScreen < PM::Screen
  title 'Make Request'

  def on_load
    set_nav_bar_button :left, title: "cancel", action: :close_screen

  end

  def will_appear
    set_attributes self.view, {
      background_color: hex_color('C9D787')
    }
  end

  def close_screen
    close
  end

end