require 'rails_helper'

RSpec.describe "beers/edit", type: :view do
  before(:each) do
    @beer = assign(:beer, Beer.create!(
      :name => "MyString",
      :brewer => "MyString",
      :rating => 1
    ))
  end

  it "renders the edit beer form" do
    render

    assert_select "form[action=?][method=?]", beer_path(@beer), "post" do

      assert_select "input#beer_name[name=?]", "beer[name]"

      assert_select "input#beer_brewer[name=?]", "beer[brewer]"

      assert_select "input#beer_rating[name=?]", "beer[rating]"
    end
  end
end
