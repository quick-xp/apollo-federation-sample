module Types
  class UserType < Types::BaseObject
    key fields: 'id'

    field :id, ID, null: false
    field :name, String, null: true
    field :username, String, null: true
    field :email, String, null: true

    def self.resolve_reference(object, _context)
      User.find(object[:id])
    end
  end
end
