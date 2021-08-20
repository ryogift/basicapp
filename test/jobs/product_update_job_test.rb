require "test_helper"

class ProductUpdateJobTest < ActiveJob::TestCase
  def setup
    @product = products(:one)
  end

  test "プロダクト名がtestに変更されること" do
    ProductUpdateJob.perform_now(@product)
    assert_equal @product.name, "test"
  end
end
