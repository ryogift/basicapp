require "test_helper"

class MoviesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movie = movies(:kingdom)
  end

  test "映画の一覧画面が表示できること" do
    get movies_url
    assert_response :success
  end

  test "映画の登録画面が表示できること" do
    get new_movie_url
    assert_response :success
  end

  test "映画の登録ができること" do
    assert_difference("Movie.count") do
      post movies_url, params: { movie: { code: "test", name: "テスト" } }
    end

    assert_redirected_to movie_url(Movie.last)
  end

  test "映画の登録で失敗した場合に登録画面が表示できること" do
    post movies_url, params: { movie: { code: nil, name: "テスト" } }
    assert_response :unprocessable_entity
  end

  test "映画の詳細が表示できること" do
    get movie_url(@movie)
    assert_response :success
  end

  test "映画の編集画面が表示できること" do
    get edit_movie_url(@movie)
    assert_response :success
  end

  test "映画の更新ができること" do
    patch movie_url(@movie), params: { movie: { code: "test", name: "テスト" } }
    assert_redirected_to movie_url(@movie)
  end

  test "役者の更新で失敗した場合に編集画面が表示できること" do
    patch movie_url(@movie), params: { movie: { code: nil, name: "テスト" } }
    assert_response :unprocessable_entity
  end

  test "映画を削除できること" do
    assert_difference("Movie.count", -1) do
      delete movie_url(@movie)
    end

    assert_redirected_to movies_url
  end
end
