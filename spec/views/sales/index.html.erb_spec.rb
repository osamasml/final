require 'rails_helper'

RSpec.describe "sales/index", :type => :view do
  before(:each) do
    assign(:sales, [
      Sale.create!(
        :good => "Good",
        :price => "Price"
      ),
      Sale.create!(
        :good => "Good",
        :price => "Price"
      )
    ])
  end

  it "renders a list of sales" do
    render
    assert_select "tr>td", :text => "Good".to_s, :count => 2
    assert_select "tr>td", :text => "Price".to_s, :count => 2
  end
end
