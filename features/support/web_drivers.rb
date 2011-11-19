def launch_webdriver_in_iphone_simulator(in_ci = false)
  require 'sim_launcher'
  require 'timeout'

  sdk_version = ENV["IOS_SDK_VERSION"] || SimLauncher::SdkDetector.new.latest_sdk_version

  app_path = File.join( File.dirname(__FILE__), '..', '..', 'tools','iWebDriver.app' )
  simulator = (in_ci ? SimLauncher::Client : SimLauncher::DirectClient).for_iphone_app( app_path, sdk_version )
  simulator.relaunch

  # wait for iWebDriver to come up
  Timeout.timeout(10) do
    until system("curl --silent -o /dev/null http://localhost:3001")
      sleep(0.1)
    end
  end
end
