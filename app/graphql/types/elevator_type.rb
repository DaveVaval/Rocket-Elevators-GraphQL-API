module Types
  class ElevatorType < Types::BaseObject
    field :id, ID, null: false
    field :serial_number, String, null: false
    field :model, String, null: false
    field :status, String, null: false
    field :date_of_commissioning, GraphQL::Types::ISO8601Date, null: false
    field :date_of_last_inspection, GraphQL::Types::ISO8601Date, null: false
    field :certificate_of_inspection, String, null: false
    field :information, String, null: false
    field :notes, String, null: true
    field :column_id, Integer, null: true
    field :elevator_type, String, null: true
  end
end
