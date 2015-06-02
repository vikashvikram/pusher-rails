class RealTimeController < ApplicationController
  def hello_world(message = "hello world")
  	Pusher.trigger('private-test_channel', 'ping', {:message => message})
  end

  def push_chart(xVal = "1", yVal = "1")
  	xVal = 1
  	yVal = 1
  	10.times do
  		Pusher.trigger('private-test_channel', 'chart', {:xVal => xVal, :yVal => yVal})
  		xVal += 1
  		yVal += 1
  		sleep 1
  	end
  end
end
