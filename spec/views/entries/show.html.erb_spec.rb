require 'rails_helper'

RSpec.describe "entries/show", :type => :view do
  before(:each) do
    @entry = assign(:entry, Entry.create!(
      :user => nil,
      :status => "9.99",
      :unique_id => "Unique",
      :duration => "9.99",
      :score => "9.99",
      :thumbnail => "Thumbnail"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Unique/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/Thumbnail/)
  end
end
