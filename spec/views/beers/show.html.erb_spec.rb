require 'rails_helper'

RSpec.describe "beers/show", type: :view do
  before(:each) do
    @beer = assign(:beer, Beer.create!(
      :name => "Name",
      :brewer => "Brewer",
      :rating => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Brewer/)
    expect(rendered).to match(/1/)
  end
end
