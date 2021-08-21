require "test_helper"

class MovieComponentTest < ViewComponent::TestCase
  def setup
    @movies = movies
  end

  def test_component_renders_something_useful
    render_inline(MovieComponent.with_collection(@movies))
    assert_selector("td", text: @movies[0].code)
    assert_selector("td", text: @movies[1].code)
  end
end
