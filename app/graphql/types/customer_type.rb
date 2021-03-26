module Types
  class CustomerType < Types::BaseObject
    field :id, ID, null: false
    field :created_at, GraphQL::Types::ISO8601Date, null: true
    field :company_name, String, null: true
    field :company_address, String, null: true
    field :full_name_company_contact, String, null: true
    field :company_contact_phone, String, null: true
    field :company_contact_email, String, null: true
    field :company_description, String, null: true
    field :full_name_service_technical_authority, String, null: true
    field :technical_authority_phone, String, null: true
    field :technical_authority_email, String, null: true
    field :user_id, Integer, null: true
  end
end
