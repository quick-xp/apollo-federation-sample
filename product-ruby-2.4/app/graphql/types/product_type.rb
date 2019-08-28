module Types
  class ProductType < Types::BaseObject
    key fields: 'upc'

    field :id, ID, null: false
    field :upc, String, null: false
    field :name, String, null: true
    field :price, Integer, null: true
    field :weight, Integer, null: true

    def self.resolve_reference(reference, _context)
      Product.find_by(upc: reference[:upc])
    end
  end
end
