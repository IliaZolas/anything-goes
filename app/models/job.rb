class Job < ApplicationRecord
    belongs_to :user
    has_many :accepted_jobs
end
