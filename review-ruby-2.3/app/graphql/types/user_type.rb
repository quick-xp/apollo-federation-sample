module Types
  class UserType < Types::BaseObject
    key fields: 'id'
    extend_type

    field :id, ID, null: false, external: true
    field :username, String, null: true, external: true
    field :reviews, [ReviewType], null: true

    def reviews
      Review.where(author_id: object[:id])
    end

    def username
      'review_override_name'
    end
  end
end
