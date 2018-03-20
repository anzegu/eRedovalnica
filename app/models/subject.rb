class Subject < ApplicationRecord
    has_many :users, through: :subjects_users
    has_many :grades, dependent: :destroy
end
