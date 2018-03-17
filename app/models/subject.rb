class Subject < ApplicationRecord
    has_and_belongs_to_many :users
    has_many :grades, dependent: :destroy
end
