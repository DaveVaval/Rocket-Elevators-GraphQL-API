module Types
  class BatteryType < Types::BaseObject
    field :id, ID, null: false
    field :building_id, Integer, null: true
    field :status, String, null: true
    field :date_commissioning, GraphQL::Types::ISO8601Date, null: true
    field :date_last_inspection, GraphQL::Types::ISO8601Date, null: true
    field :certificate_of_operations, String, null: true
    field :information, String, null: true
    field :notes, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :battery_type, String, null: true
    field :columns, [ColumnType], null: true
  end
end
