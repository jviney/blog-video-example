class MainController < UIViewController
  def loadView
    @layout = MainLayout.new
    @layout.player_view = player.view
    self.view = @layout.view
    @layout.add_constraints(self)
  end

  def viewWillAppear(animated)
    super
    player.prepareToPlay
  end

  def viewDidAppear(animated)
    super
    player.play
  end

  def player
    @player ||= MPMoviePlayerController.alloc.initWithContentURL(video_url)
  end

  def video_url
    NSURL.URLWithString("http://example.com/video.mp4")
  end
end
