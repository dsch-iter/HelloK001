class Hello01Controller < ApplicationController
  def index
    @message="Hello!"
    @count=10
    @bonus="This message came from the controller. Kyle"
  end
end
