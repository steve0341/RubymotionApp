class ExampleController < PM::Screen

  def on_load
    #set_tab_bar_item icon: 'settings-25', title: "Settings"
  end

  def will_appear
    set_attributes self.view, {
      background_color: hex_color('FFD036')
    }
    set_tab_bar_item icon: 'settings-25', title: "Settings"
  end

  title 'Options'
  class ExampleAutoController < UIViewController

    def loadView
      super
      @layout = ExampleLayout.new
      self.view = @layout.view
      @layout.add_constraints
    end
  end


end