class HomeController < ApplicationController
  def index
  end

  def tests
    gon.test_data = Util.test_data
    @no_header = true
  end
end
