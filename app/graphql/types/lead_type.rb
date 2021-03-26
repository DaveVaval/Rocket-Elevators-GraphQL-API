module Types
  class LeadType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: true
    field :company_name, String, null: true
    field :email, String, null: true
    field :phone, String, null: true
    field :project_name, String, null: true
    field :project_description, String, null: true
    field :department, String, null: true
    field :message, String, null: true
    # field :attachment, GraphQL::Types::BinaryType, null: true
    field :contact_request_date, GraphQL::Types::ISO8601DateTime, null: false
  end
end
