class SavedJob < ApplicationRecord
    belongs_to :user
    belongs_to :job
    has_many :jobs
    has_one_attached :photo


end
