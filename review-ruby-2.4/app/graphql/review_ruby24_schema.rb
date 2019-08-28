class ReviewRuby24Schema < GraphQL::Schema
  include ApolloFederation::Schema
  # TODO { _service { sdl } } results in GraphQLSchemaValidationError
  #mutation(Types::MutationType)
  query(Types::QueryType)
end
