module Types
  class QueryType < Types::BaseObject
    field :top_reviews, [ReviewType], null: false do
      argument :first, Int, required: false, default_value: 3
    end

    def top_reviews(first:)
      Review.first(first)
    end
  end
end
