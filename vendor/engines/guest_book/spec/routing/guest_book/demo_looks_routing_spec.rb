require "spec_helper"

module GuestBook
  describe DemoLooksController do
    describe "routing" do

      it "routes to #index" do
        get("/demo_looks").should route_to("demo_looks#index")
      end

      it "routes to #new" do
        get("/demo_looks/new").should route_to("demo_looks#new")
      end

      it "routes to #show" do
        get("/demo_looks/1").should route_to("demo_looks#show", :id => "1")
      end

      it "routes to #edit" do
        get("/demo_looks/1/edit").should route_to("demo_looks#edit", :id => "1")
      end

      it "routes to #create" do
        post("/demo_looks").should route_to("demo_looks#create")
      end

      it "routes to #update" do
        put("/demo_looks/1").should route_to("demo_looks#update", :id => "1")
      end

      it "routes to #destroy" do
        delete("/demo_looks/1").should route_to("demo_looks#destroy", :id => "1")
      end

    end
  end
end
