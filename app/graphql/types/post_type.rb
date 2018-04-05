Types::PostType = GraphQL::ObjectType.define do
    # name of the type
    name 'Post'
    # description of the type
    description 'This represent a Post'

    # fields of the type
    field :id, !types.ID
    field :username, !types.String
    field :email, !types.String
end