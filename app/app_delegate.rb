class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @main_controller = MainController.alloc.initWithNibName(nil, bundle: nil)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = @main_controller
    @window.makeKeyAndVisible

    true
  end
end
