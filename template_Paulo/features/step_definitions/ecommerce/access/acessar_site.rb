Dado("que esteja na home") do
  @home = $ec_pages.home
  @home.load
  @home.popup(wait: 30)
  @home.kill_popups
  @main_header = @home.main_header
end
