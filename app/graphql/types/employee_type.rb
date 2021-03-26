module Types
  class EmployeeType < Types::BaseObject
    field :id, ID, null: false
    field :last_name, String, null: true
    field :first_name, String, null: true
    field :title, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :user_id, Integer, null: true
    field :factInterventions, [FactInterventionType], null: true

    field :interventionsCount, Integer, null: true
    def interventionsCount
      object.factInterventions.count
    end

    field :interventions, [FactInterventionType], null: true
    def interventions
      object.factInterventions.all
    end

  end
end
