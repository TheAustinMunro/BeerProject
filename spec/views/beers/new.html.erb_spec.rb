require 'rails_helper'

RSpec.describe "beers/new", type: :view do
  before(:each) do
    assign(:beer, Beer.new(
      :name => "MyString",
      :brewer => "MyString",
      :rating => 1
    ))
  end

  it "renders new beer form" do
    render

    assert_select "form[action=?][method=?]", beers_path, "post" do

      assert_select "input#beer_name[name=?]", "beer[name]"

      assert_select "input#beer_brewer[name=?]", "beer[brewer]"

      assert_select "input#beer_rating[name=?]", "beer[rating]"
    end
  end
end
