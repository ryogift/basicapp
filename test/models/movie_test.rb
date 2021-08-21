require "test_helper"

class MovieTest < ActiveSupport::TestCase
  def setup
    @movie = movies(:kingdom)
  end

  # バリデーションの確認

  test "有効であること" do
    assert @movie.valid?
  end

  test "コードが存在すること" do
    @movie.code = ""
    assert_not @movie.valid?
  end

  test "コードは一意であること" do
    dup_movie = Movie.new(code: @movie.code, name: "test")
    assert_not dup_movie.valid?
  end

  test "名称が存在すること" do
    @movie.name = ""
    assert_not @movie.valid?
  end
end
