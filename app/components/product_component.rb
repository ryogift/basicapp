class ProductComponent < ViewComponent::Base
  def initialize(product:)
    @product = product
  end
end
