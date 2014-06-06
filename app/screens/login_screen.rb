class LoginScreen < PM::FormotionScreen

    title 'Login'

    def on_load
      set_nav_bar_button :right, title: 'New User?', action: :open_registration_screen
      set_nav_bar_button :left, title: 'Sou Vang', action: :close_screen
    end

    def will_appear
        set_attributes self.view, {
        background_color: hex_color('46CAF2')
      }

      add UIButton.new, {
        text: "Click me",
        text_color: hex_color('FFFFFF'),
        resize: [ :left, :right, :bottom ],
        frame: CGRectMake(10, 150, 300, 35)
      }
    end

    def load_failed
      UIAAlert.alloc.initWithTitle('Failed to load',
        message: 'The help content failed to load sorry, double check you have an internet connection',
        delegate: nil,
        cancelButtonTitle: 'OK',
        otherButtonTitles: nil
        ).show
    end

  #   #motion-form

  #   form = MotionForm.form_for(view) do |form|
  # # If you don't want section header views, leave the section name blank
  # # Ex: form.section do |section|

  #   form.section 'Profile' do |section|
  #     section.input :name,      label: 'Your name', value: 'David Copperfield'
  #     section.input :username,  label: 'A username'
  #     section.input :pinterest, label: 'Pinterest username'
  #     section.input :twitter,   label: 'Twitter username'
  #     section.input :website,   label: 'Personal website'
  #     section.text  :bio,       placeholder: 'Write a short bio...'

  #     section.button :submit, action: submit
  #   end

  #   form.section 'Account' do |section|
  #     section.button :change_email, action: push_email_controller
  #     section.button :change_password, action: push_password_controller
  #   end
  # end

  # def submit
  #   -> do
  #     form.render # { name:      'Devon',
  #                 #   username:  'dblandin',
  #                 #   pinterest: '',
  #                 #   twitter:   'dblandin',
  #                 #   website:   'http://github.com/dblandin',
  #                 #   bio:       'Rubyist in Chicago' }
  #   end
  # end

  # def push_email_controller
  #   -> do
  #     # push controller
  #   end
  # end

  # def push_password_controller
  #   -> do
  #     # push controller
  #   end
  # end

    # def on_submit(_form)

    # end

    def table_data
    {
      sections: [{
        title: "Credentials",
        rows: [{
          title: "Email",
          key: :email,
          placeholder: "example@kohactive.com",
          type: :string,
          auto_correction: :no,
          auto_capitalization: :none
        },
        {
          title: "Password",
          key: :password,
          placeholder: "",
          type: :string,
          auto_correction: :no,
          auto_capitalization: :none
        },
      ]
      }]
    }
  end

    def open_registration_screen
      open RegistrationScreen.new(nav_bar: true)
    end

    def close_screen
      close
    end
end