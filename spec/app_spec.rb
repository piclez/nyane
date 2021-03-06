require File.dirname(__FILE__) + "/spec_helper"

describe "GET" do
  before do
    @app = Nyane.new do
      get "/" do
        nil
      end

      get "/text" do
        "Text"
      end
    end
  end

  it "should handle result of nil" do
    @app.mock.get("/").body.should == ""
  end

  it "should render any text" do
    @app.mock.get("/text").body.should == "Text"
  end
end