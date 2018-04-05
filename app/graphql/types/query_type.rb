Types::QueryType = GraphQL::ObjectType.define do
  name "Query"

  # To fetch all the posts
  field :allPost, !typeṣ[Types::PostType] do
    description "This return all the posts"
    resolve ->(obj, args, ctx) {
      Post.all
    }
  end
end
