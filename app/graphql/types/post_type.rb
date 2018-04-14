Types::PostType = GraphQL::ObjectType.define do
    # name of the type
    name 'Post'
    # description of the type
    description 'This represent a Post'

    # fields of the type
    field :id, !types.ID
    field :title, !types.String
    field :description, !types.String
    field :user, -> { Types::UserType }
end