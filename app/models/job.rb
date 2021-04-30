class Job < ApplicationRecord
    belongs_to :user
    has_many :accepted_jobs
    has_many :user_jobs
    has_many :jobapps
    has_one_attached :photo
    
end
