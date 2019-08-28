module Types
  class ReviewType < Types::BaseObject
    key fields: 'id'

    field :id, ID, null: false
    field :author_id, Integer, null: false
    field :author, Types::UserType, null: true, provides: { fields: 'username' }
    field :product_upc, String, null: false
    field :score, Float, null: false
    field :body, String, null: true

    def author
      { __typename: 'UserType', id: object[:author_id]}
    end
  end
end
