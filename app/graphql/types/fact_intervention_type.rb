module Types
  class FactInterventionType < Types::BaseObject
    field :id, ID, null: false
    field :employee_id, Integer, null: false
    field :building_id, Integer, null: false
    field :battery_id, Integer, null: true
    field :column_id, Integer, null: true
    field :elevator_id, Integer, null: true
    field :start_of_intervention, GraphQL::Types::ISO8601DateTime, null: false
    field :end_of_intervention, GraphQL::Types::ISO8601DateTime, null: true
    field :result, String, null: false
    field :report, String, null: true
    field :status, String, null: false
    field :battery, [BatteryType], null: true
    field :column, [ColumnType], null: true
    field :elevator, [ElevatorType], null: true
    field :building, BuildingType, null: true 

    def building
      Building.find(object.building_id)
    end
  end
end
