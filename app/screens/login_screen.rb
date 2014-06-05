class LoginScreen < PM::WebScreen

    title 'Login'

    def on_load
      set_nav_bar_button :right, title: 'New User?', action: :open_registration_screen
      set_nav_bar_button :left, title: 'Sou Vang', action: :close_screen
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
      NSURL.URLWithString('https://parse.com/user_session/new')
    end

    def open_registration_screen
      open RegistrationScreen.new(nav_bar: true)
    end

    def close_screen
      close
    end
end