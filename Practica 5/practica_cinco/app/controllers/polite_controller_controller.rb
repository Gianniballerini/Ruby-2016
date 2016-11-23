class PoliteControllerController < ApplicationController
  def salute
  	arr = ["Good day sir/ma'am.","Good day Neko","Aloha","こんにちわ","holis"]
  	@mensaje = arr.sample
  end
end
