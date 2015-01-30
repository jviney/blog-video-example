class MainLayout < MotionKit::Layout
  attr_accessor :player_view

  def layout
    add player_view, :player
  end

  def add_constraints(controller)
    constraints :player do
      below controller.topLayoutGuide
      left.equals view
      right.equals view
      width.equals view
      bottom.equals view, :bottom
    end
  end
end
