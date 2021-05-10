Before do
  $driver.start_driver
end

After do |scenario|
  if scenario.failed?
    # Realiza screenshot caso cenário falhe
    if !File.directory?("reports/screenshots")
      # Se pasta não existir será criada
      FileUtils.mkdir_p("reports/screenshots")
    end

    time_stamp = Time.now.strftime("%Y-%m-%d_%H.%M.%S")
    screenshot_name = time_stamp + ".png"
    screenshot_file = File.join("reports/screenshots", screenshot_name)
    $driver.screenshot(screenshot_file)
    embed("#{screenshot_file}", "image/png")
 end
  $driver.driver_quit
end

AfterConfiguration do
  FileUtils.rm_r("reports/screenshots") if File.directory?("reports/screenshots")
end
