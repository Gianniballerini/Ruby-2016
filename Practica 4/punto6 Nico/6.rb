require 'bundler'
Bundler.require #solo en mayuscula
require_relative 'ChangeNumber'
require_relative 'CountX'

use CountX
use ChangeNumber


get '/mcm/:a/:b' do
   a=params['a']
   b=params['b']
   array= Array.new
   a.to_i.lcm(b.to_i).to_s
 

end


