require 'rails_helper'

RSpec.describe "entries/index", :type => :view do
  before(:each) do
    assign(:entries, [
      Entry.create!(
        :user => nil,
        :status => "9.99",
        :unique_id => "Unique",
        :duration => "9.99",
        :score => "9.99",
        :thumbnail => "Thumbnail"
      ),
      Entry.create!(
        :user => nil,
        :status => "9.99",
        :unique_id => "Unique",
        :duration => "9.99",
        :score => "9.99",
        :thumbnail => "Thumbnail"
      )
    ])
  end

  it "renders a list of entries" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Unique".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "9.99".to_s, :count => 2
    assert_select "tr>td", :text => "Thumbnail".to_s, :count => 2
  end
end
