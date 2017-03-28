require 'rails_helper'

RSpec.describe "notifications/new", type: :view do
  before(:each) do
    assign(:notification, Notification.new(
      :headline => "MyString",
      :content => "MyText"
    ))
  end

  it "renders new notification form" do
    render

    assert_select "form[action=?][method=?]", notifications_path, "post" do

      assert_select "input#notification_headline[name=?]", "notification[headline]"

      assert_select "textarea#notification_content[name=?]", "notification[content]"
    end
  end
end
