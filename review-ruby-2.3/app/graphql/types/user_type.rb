module Types
  class UserType < Types::BaseObject
    key fields: 'id'

    field :id, ID, null: false
    field :username, String, null: true, external: true
    field :reviews, [ReviewType], null: true

    def reviews
      Review.where(author_id: object[:id])
    end

    def username
      'test'
    end
  end
end
