module Types
  class ReviewType < Types::BaseObject
    field :id, ID, null: false
    field :author_id, Integer, null: false
    field :product_upc, String, null: false
    field :score, Float, null: false
    field :body, String, null: true
  end
end
