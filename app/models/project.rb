class Project < ApplicationRecord
    belongs_to :client
    has_and_belongs_to_many :users
    has_and_belongs_to_many :prducts

    enum priority: { low: 0, medium: 50, high: 100 }
    enum project_type: { poc: 0, pilote: 50, win: 100 }
    enum licence_type: { WCM25: 25, WCM50: 50, WCM100: 100, WCM250: 250, WCM500: 500, WCM1000: 1000 }
end
