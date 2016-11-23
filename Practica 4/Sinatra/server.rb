
require 'bundler'
Bundler.require
require_relative 'MoL'

use MoL


get '/' do
	'hello world'
end
