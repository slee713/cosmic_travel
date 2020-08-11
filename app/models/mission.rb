class Mission < ApplicationRecord
  validates :name, :scientist_id, :planet_id, presence:true
  validates :name, uniqueness: {case_sensitive: false}
  belongs_to :scientist
  belongs_to :planet
end
