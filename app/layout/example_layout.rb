class ExampleLayout < MotionKit::Layout
  def layout
    background_color UIColor.orangeColor

    add UIView, :header do
      background_color UIColor.blueColor

      add UILabel, :header_title do
        text 'Welcome'
        text_alignment UITextAlignmentCenter
        text_color UIColor.whiteColor
      end
    end
  end


    # main
    # left_footer
    # right_footer

  def add_constraints
    constraints(:header) do
      top_left x: 20, y: 40
      width.equals(view).minus(80)
      height 50
    end

    constraints(:header_title) do
      top_left x: 10, y: 10
      width.equals(:header).minus(20)
      height.equals(:header).minus(20)
    end 
  end
end
