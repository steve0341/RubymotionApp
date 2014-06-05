class InviteScreen < PM::Screen
  title 'Invitation'

  def will_appear
    set_attributes self.view, {
      background_color: hex_color('FF8598')
    }

    add UILabel.new, {
      text: "Send Friend Invitation",
      font: UIFont.systemFontOfSize(18),
      left: 20,
      top: 200,
      width: 280,
      height: 50,
      text_alignment: NSTextAlignmentCenter
    }
  end

end