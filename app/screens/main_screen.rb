class MainScreen < PM::Screen
	title 'Home'

	def on_load
    set_nav_bar_button :left, title: "Help", action: :open_help_screen
    set_attributes self.view, {
      background_color: hex_color('FFFFFF')
    }

	end

  def open_help_screen
    open_modal HelpScreen.new(nav_bar: true)
  end
end