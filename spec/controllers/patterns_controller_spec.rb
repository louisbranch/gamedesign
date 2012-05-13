require 'spec_helper'
include ApiHelper

describe PatternsController do

  it "has a list of game design patterns" do
    get 'index'
    response.should be_ok
  end

end
