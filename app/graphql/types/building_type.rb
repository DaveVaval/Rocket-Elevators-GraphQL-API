module Types
  class BuildingType < Types::BaseObject
    field :id, ID, null: false
    field :address_building, String, null: true
    field :full_name_administrator, String, null: true
    field :email_administrator, String, null: true
    field :phone_administrator, String, null: true
    field :full_name_technical_contact_building, String, null: true
    field :technical_contact_building_email, String, null: true
    field :technical_contact_building_phone, String, null: true
    field :customer_id, Integer, null: true
    field :batteries, [BatteryType], null: true
    field :factInterventions, [FactInterventionType], null: true
    field :details, BuildingDetailType, null: true
    



    field :battery_count, Integer, null: true
    field :fact_count, Integer, null: true

    def fact_count
      object.factInterventions.count
    end

    def battery_count
      object.batteries.count
    end

    def details
      BuildingDetail.find(object.id)
    end

    field :interventions, [FactInterventionType], null: true
    def interventions
      object.factInterventions.all
    end

    field :customer, CustomerType, null: true
    def customer
      Customer.find(object.customer_id)
    end

  end
end
