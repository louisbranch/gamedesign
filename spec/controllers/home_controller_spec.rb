require 'spec_helper'
include ApiHelper

describe HomeController do

  it "has an initial page" do
    get 'show'
    response.should be_ok
  end

end
