class ProductComponent < ViewComponent::Base
  with_collection_parameter :item

  def initialize(item:)
    super
    @item = item
  end
end
