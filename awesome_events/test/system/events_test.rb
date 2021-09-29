require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase
  test "/events/:id ページを表示" do
    event = factoryBot.create(:event)
    visit event_url(event)
    assert_selector "h1", text:event.name
  end
end
