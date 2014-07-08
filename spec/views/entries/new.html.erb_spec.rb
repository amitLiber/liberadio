require 'rails_helper'

RSpec.describe "entries/new", :type => :view do
  before(:each) do
    assign(:entry, Entry.new(
      :user => nil,
      :status => "9.99",
      :unique_id => "MyString",
      :duration => "9.99",
      :score => "9.99",
      :thumbnail => "MyString"
    ))
  end

  it "renders new entry form" do
    render

    assert_select "form[action=?][method=?]", entries_path, "post" do

      assert_select "input#entry_user_id[name=?]", "entry[user_id]"

      assert_select "input#entry_status[name=?]", "entry[status]"

      assert_select "input#entry_unique_id[name=?]", "entry[unique_id]"

      assert_select "input#entry_duration[name=?]", "entry[duration]"

      assert_select "input#entry_score[name=?]", "entry[score]"

      assert_select "input#entry_thumbnail[name=?]", "entry[thumbnail]"
    end
  end
end
