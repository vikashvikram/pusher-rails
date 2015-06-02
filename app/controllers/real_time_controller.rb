class RealTimeController < ApplicationController
  def hello_world(message = "hello world")
  	Pusher.trigger('private-test_channel', 'ping', {:message => message})
  end

  def push_chart(xVal = "1", yVal = "1")
  	Pusher.trigger('private-test_channel', 'chart', {:xVal => xVal, :yVal => yVal})
  end
end
