class HelpScreen < PM::WebScreen
  title 'Help'

  def on_load
    set_nav_bar_button :right, title: 'Done', action: :close_help_screen
  end

  def load_failed
    UIAAlert.alloc.initWithTitle('Failed to load',
      message: 'The help content failed to load sorry, double check you have an internet connection',
      delegate: nil,
      cancelButtonTitle: 'OK',
      otherButtonTitles: nil
      ).show
  end

  def content
    NSURL.URLWithString('https://www.parse.com/help')
  end

  def close_help_screen
    close
  end
end