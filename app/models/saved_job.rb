class SavedJob < ApplicationRecord
    belongs_to :user
    belongs_to :job
    has_many :jobs


end
