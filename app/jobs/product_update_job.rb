class ProductUpdateJob < ApplicationJob
  queue_as :default

  def perform(product)
    product.update!(name: "test")
  end
end
