class RealTimeController < ApplicationController
  def hello_world(message = "hello world")
  	Pusher.trigger('private-test_channel', 'ping', {:message => message})
  end
end
