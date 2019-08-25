module Types
  class ProductType < Types::BaseObject
    field :id, ID, null: false
    field :upc, String, null: false
    field :name, String, null: true
    field :price, Integer, null: true
    field :weight, Integer, null: true
  end
end
