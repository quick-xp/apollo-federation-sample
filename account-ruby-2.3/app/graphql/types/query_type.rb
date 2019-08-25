module Types
  class QueryType < Types::BaseObject
    field :search_user, UserType, null: true do
      description "Find user by id"
      argument :id, ID, required: true
    end

    # Then provide an implementation:
    def search_user(id:)
      User.find(id)
    end
  end
end
