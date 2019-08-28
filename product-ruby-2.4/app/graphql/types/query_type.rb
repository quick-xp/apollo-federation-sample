module Types
  class QueryType < Types::BaseObject
    field :top_products, [ProductType], null: false do
      argument :first, Int, required: false, default_value: 3
    end

    def top_products(first:)
      Product.first(first)
    end
  end
end
