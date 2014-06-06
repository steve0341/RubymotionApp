class HomeScreen < PM::Screen
  title "True Friends"


  def on_load
    set_nav_bar_button :left, title: 'Help', action: :open_help_screen
    open_modal LoginScreen.new(nav_bar: true)
    # set_tab_bar_item {icon: {selected: home-512, unselected: home-512}, title: Home}
  end

  def will_appear
    set_attributes self.view, {
      background_color: hex_color('FFFFFF')
    }

    # add UILabel.new, {
    #   text: "August",
    #   text_color: hex_color("888888"),
    #   background_color: UIColor.clearColor,
    #   shadow_color: UIColor.whiteColor,
    #   text_alignment: UITextAlignmentCenter,
    #   font: UIFont.systemFontOfSize(15.0),
    #   resize: [ :left, :right, :bottom ], # ProMotion sugar here
    #   frame: CGRectMake(10, 0, 300, 35)
    # }

    open_tab_bar MainScreen.new(nav_bar: true), FriendsScreen.new(nav_bar: true), RequestScreen.new(nav_bar: true), ExampleController.new(nav_bar: true)
  end

  def open_help_screen
    open_modal HelpScreen.new
  end

end
