files = File.join(File.dirname(__FILE__), 'api_calls', '**', '*.rb')
Dir.glob(files).each do |file|
  require file
end

module ApiService
end
