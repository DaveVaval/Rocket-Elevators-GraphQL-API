class FactIntervention < DwhRecord
    belongs_to :building
    has_many :buildings
    has_one :battery
    has_one :column
    has_one :elevator
end
