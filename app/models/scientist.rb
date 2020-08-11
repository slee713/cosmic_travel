class Scientist < ApplicationRecord
    validates :name, :field_of_study, presence: true
    validates :name, uniqueness: {case_sensitive: false}
    has_many :missions
    has_many :planets, through: :missions
end
