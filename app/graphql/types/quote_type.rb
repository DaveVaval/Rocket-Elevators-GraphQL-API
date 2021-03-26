module Types
  class QuoteType < Types::BaseObject
    field :id, ID, null: false
    field :building_type, String, null: true
    field :number_of_apartments, Integer, null: true
    field :number_of_floors, Integer, null: true
    field :number_of_basements, Integer, null: true
    field :number_of_elevators, Integer, null: true
    field :maximum_occupancy, Integer, null: true
    field :product_line, String, null: true
    field :elevators_required, Integer, null: true
    field :elevator_amount, Integer, null: true
    field :elevator_unit_price, String, null: true
    field :elevator_total_price, String, null: true
    field :elevator_installation_fees, String, null: true
    field :final_price, String, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :company_name, String, null: true
    field :email, String, null: true
  end
end
