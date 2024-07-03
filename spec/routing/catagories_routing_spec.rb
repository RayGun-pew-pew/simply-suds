require "rails_helper"

RSpec.describe CatagoriesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/catagories").to route_to("catagories#index")
    end

    it "routes to #new" do
      expect(get: "/catagories/new").to route_to("catagories#new")
    end

    it "routes to #show" do
      expect(get: "/catagories/1").to route_to("catagories#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/catagories/1/edit").to route_to("catagories#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/catagories").to route_to("catagories#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/catagories/1").to route_to("catagories#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/catagories/1").to route_to("catagories#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/catagories/1").to route_to("catagories#destroy", id: "1")
    end
  end
end
