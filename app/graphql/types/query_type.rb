Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  # To fetch all the posts
  field :postList, !types[Types::PostType] do
    description "This return all the posts"
    resolve ->(obj, args, ctx) {
      Post.all
    }
  end

  # To fetch all the users
  field :userList, !types[Types::UserType] do
    description "This return all the users"
    resolve  ->(obj, args, ctx) {
      User.all
    }
  end
end
