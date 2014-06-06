class FindScreen < PM::TableScreen
  title 'Friend Finder'

  searchable placeholder: 'Find a fiend'
  refreshable callback: :on_refresh,
              pull_message: "Pull to refresh",
              refreshing: 'Refreshing data...',
              updated_format: "Last updated at %s",
              updated_time_format: "%l:%M %p"

  def on_load
    set_nav_bar_button :right, title: "Invite Friends", action: :open_invite_screen
  end

  def will_appear
    set_attributes self.view, {
      background_color: hex_color('FFC0A9')
    }
  end

  def open_invite_screen
    open InviteScreen.new(nav_bar: true)
  end

  def open_profile(args)
    open ProfileScreen.new(user_id: args[:user_id], nav_bar: true)
  end

  def table_data
    [{
      cells: (0..200).map do |n|
        {
          title: "Friend #{n}",
          subtitle: "john@mail.com",
          action: :open_profile,
          arguments: { friend_id: n }
        }
      end
      }]
  end

  def on_refresh
    end_refreshing
  end
end