require "test_helper"

class ProductTest < ActiveSupport::TestCase
  def setup
    @product = products(:one)
  end

  # validates
  test "名称が必須であること" do
    @product.name = ""
    @product.valid?
    assert_includes @product.errors[:name], I18n.t("errors.messages.blank")
  end

  test "名称が100文字以内であること" do
    @product.name = "a" * 101
    @product.valid?
    assert_includes @product.errors[:name], I18n.t("errors.messages.too_long", count: 100)
  end

  test "名称がユニークであること" do
    product_dup = @product.dup
    assert_not product_dup.valid?
  end
end
