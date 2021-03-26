module Types
  class BuildingDetailType < Types::BaseObject
    field :id, ID, null: false
    field :information_key, String, null: true
    field :value, String, null: true
    field :building_id, Integer, null: true
  end
end
