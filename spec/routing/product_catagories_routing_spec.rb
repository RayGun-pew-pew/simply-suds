require "rails_helper"

RSpec.describe ProductCatagoriesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/product_catagories").to route_to("product_catagories#index")
    end

    it "routes to #new" do
      expect(get: "/product_catagories/new").to route_to("product_catagories#new")
    end

    it "routes to #show" do
      expect(get: "/product_catagories/1").to route_to("product_catagories#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/product_catagories/1/edit").to route_to("product_catagories#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/product_catagories").to route_to("product_catagories#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/product_catagories/1").to route_to("product_catagories#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/product_catagories/1").to route_to("product_catagories#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/product_catagories/1").to route_to("product_catagories#destroy", id: "1")
    end
  end
end
