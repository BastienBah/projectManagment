class Prduct < ApplicationRecord
    belongs_to :manufacturer
    has_and_belongs_to_many :projects
    has_many :versions
end
