class Site
  require 'json'

  attr_reader :config

  def initialize
    @config = read_config
  end

  private

  def read_config
    JSON.parse(File.read("config/site_config.json"))
  end

end