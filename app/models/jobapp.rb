class Jobapp < ApplicationRecord
    belongs_to :user
    belongs_to :job
    has_many :accepted_jobs
    has_many :declined_jobs

    has_one_attached :photo
end
