browser = Watir::Browser.new :chrome

Before do |scenario|
  @system ||= System.new browser
end

After do |scenario|

end

at_exit do
  browser.close
end
