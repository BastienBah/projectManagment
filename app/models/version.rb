class Version < ApplicationRecord
    belongs_to :prduct

    enum wcm: { '3.7': 0, '3.8': 10 }
    enum status: { 'New': 0, 'In developpment': 10, 'To be tested': 20, 'Is validate': 30 }
    enum format: { Classic: 0, Javascript: 10, Typescript: 20 }
end
