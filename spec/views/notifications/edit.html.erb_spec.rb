require 'rails_helper'

RSpec.describe "notifications/edit", type: :view do
  before(:each) do
    @notification = assign(:notification, Notification.create!(
      :headline => "MyString",
      :content => "MyText"
    ))
  end

  it "renders the edit notification form" do
    render

    assert_select "form[action=?][method=?]", notification_path(@notification), "post" do

      assert_select "input#notification_headline[name=?]", "notification[headline]"

      assert_select "textarea#notification_content[name=?]", "notification[content]"
    end
  end
end
