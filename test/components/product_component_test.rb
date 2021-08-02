require "test_helper"

class ProductComponentTest < ViewComponent::TestCase
  def setup
    @products = products
  end

  def test_component_renders_something_useful
    render_inline(ProductComponent.with_collection(@products))
    assert_selector("td", text: "MyString1")
    assert_selector("td", text: "MyString2")
  end
end
