# config.ru rackup file

root = ::File.dirname(__FILE__)
require ::File.join(root, "app")

run SinatraApp.new
