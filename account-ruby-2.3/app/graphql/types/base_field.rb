require 'apollo-federation'

module Types
  class BaseField < GraphQL::Schema::Field
    include ApolloFederation::Field
    argument_class Types::BaseArgument

    # TODO comment out because it doesn't work
    # error: no implicit conversion of #<Class:0x0055bfda358230> into Hash
    #def resolve_field(obj, args, ctx)
    #  resolve(obj, args, ctx)
    #end
  end
end
