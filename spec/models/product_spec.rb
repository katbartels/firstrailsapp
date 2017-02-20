require 'rails_helper'

describe Product do

  before do
    @product = Product.create!(name: "race bike")
    @user = User.create!(first_name: "Testy", email: "testy@tester.de", password: "test123")
    @product.comments.create!(rating: 1, user: @user, body: "Awful bike!")
    @product.comments.create!(rating: 3, user: @user, body: "Ok bike")
    @product.comments.create!(rating: 5, user: @user, body: "Great bike")
  end
  it "returns the average rating of all comments" do
    expect(@product.average_rating).to eq 3
  end
end
