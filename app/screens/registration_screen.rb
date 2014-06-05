class RegistrationScreen < PM::Screen
  title 'Registration'

  def on_load
    set_nav_bar_button :left, title: 'Cancel', action: :close_screen
    set_nav_bar_button :right, title: 'Submit', action: :register
  end

  def will_appear
    set_attributes self.view, {
      background_color: hex_color('FFFFFF')
    }
  end

  def close_screen
    close
  end

  def register
    close
  end
end