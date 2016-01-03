require 'rails_helper'

RSpec.describe "beers/index", type: :view do
  before(:each) do
    assign(:beers, [
      Beer.create!(
        :name => "Name",
        :brewer => "Brewer",
        :rating => 1
      ),
      Beer.create!(
        :name => "Name",
        :brewer => "Brewer",
        :rating => 1
      )
    ])
  end

  it "renders a list of beers" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Brewer".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
