require 'spec_helper'
include ApiHelper

describe PatternsController do

  it "has a list of game design patterns" do
    get :index
    response.status.should eq(200)
  end

  context "when creating a new pattern" do

    it "has a new pattern page" do
      get :new
      response.status.should eq(200)
    end

    it "redirects to the list on success" do
      post :create, pattern: { name: 'New Pattern', description: 'A very interesting one...' }
      response.status.should eq(201)
    end

    it "shows the new form on error" do
      post :create, pattern: { name: nil }
      response.status.should eq(400)
    end

  end

end
