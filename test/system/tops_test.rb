require "application_system_test_case"

class TopsTest < ApplicationSystemTestCase
  test "Topページに訪問する" do
    visit root_url
  
    assert_selector "p", text: "BasicApp"
  end
end
