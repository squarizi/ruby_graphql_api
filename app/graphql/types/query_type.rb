Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'

  # queries are just represented as fields
  field :allLinks, function: Resolvers::LinksSearch

  field :users, !types[Types::UserType] do
  # resolve would be called in order to fetch data for that field
  	resolve -> (obj, args, ctx) { User.all }
  end

  field :votes, !types[Types::VoteType] do
  # resolve would be called in order to fetch data for that field
  	resolve -> (obj, args, ctx) { Vote.all }
  end
end