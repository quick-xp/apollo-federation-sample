module Types
  class ProductType < Types::BaseObject
    key fields: 'upc'
    extend_type

    field :upc, String, null: false, external: true
    field :reviews, [Types::ReviewType], null: true

    def reviews
      Review.where(product_upc: object[:upc])
    end
  end
end
