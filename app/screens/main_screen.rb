class MainScreen < PM::Screen

	title 'Home'

	def on_load
    set_nav_bar_button :left, title: "Help", action: :open_help_screen
    set_attributes self.view, {
      background_color: hex_color('46CAF2')
    }


    set_tab_bar_item icon: 'home-25', title: "Home"

    add UILabel.new, {
      text: "Hi Sou",
      text_color: hex_color("FFFFFF"),
      background_color: UIColor.clearColor,
      shadow_color: UIColor.whiteColor,
      text_alignment: UITextAlignmentCenter,
      font: UIFont.systemFontOfSize(26.0),
      resize: [ :left, :right, :bottom ], # ProMotion sugar here
      frame: CGRectMake(10, 80, 350, 35)
    }

    add UIImageView.new, {
      text: "Yo",
      text_color: hex_color("FFFFFF"),
      background_color: UIColor.whiteColor,
      shadow_color: UIColor.whiteColor,
      text_alignment: UITextAlignmentCenter,
      font: UIFont.systemFontOfSize(26.0),
      resize: [ :left, :right, :bottom ], # ProMotion sugar here
      frame: CGRectMake(15, 85, 95, 95)
    }

    add UILabel.new, {
      text: "Active requests",
      text_color: hex_color("FFFFFF"),
      background_color: UIColor.clearColor,
      shadow_color: UIColor.whiteColor,
      text_alignment: UITextAlignmentCenter,
      font: UIFont.systemFontOfSize(18.0),
      resize: [ :left, :right, :bottom ], # ProMotion sugar here
      frame: CGRectMake(15, 185, 150, 35)
    }

    add UILabel.new, {
      text: "Hi Sou, I'll be moving next monday, if you have time, drop by!",
      text_color: hex_color("FFFFFF"),
      background_color: UIColor.clearColor,
      shadow_color: UIColor.whiteColor,
      text_alignment: UITextAlignmentCenter,
      font: UIFont.systemFontOfSize(14.0),
      resize: [ :left, :right, :bottom ], # ProMotion sugar here
      frame: CGRectMake(15, 195, 275, 150)
    }

    add UIImageView.new, {
      text: "Yo",
      text_color: hex_color("FFFFFF"),
      background_color: UIColor.whiteColor,
      shadow_color: UIColor.whiteColor,
      text_alignment: UITextAlignmentCenter,
      font: UIFont.systemFontOfSize(26.0),
      resize: [ :left, :right, :bottom ], # ProMotion sugar here
      frame: CGRectMake(270, 250, 45, 45)
    }


	end

  def open_help_screen
    open_modal HelpScreen.new(nav_bar: true)
  end
end