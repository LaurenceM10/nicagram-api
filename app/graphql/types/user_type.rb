Types::UserType = GraphQL::ObjectType.define do
    # name of the type
    name 'User'
    # description of the type
    description 'This represent a user'

    # fields of the type
    field :id, !types.ID
    field :username, !types.String
    field :email, !types.String
end
