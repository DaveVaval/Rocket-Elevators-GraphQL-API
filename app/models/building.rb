class Building < ApplicationRecord
    belongs_to :customer, foreign_key: "customer_id"
    belongs_to :factIntervention
    has_many :batteries
    has_many :building_details
    has_many :factInterventions
end
