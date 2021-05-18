class Job < ApplicationRecord
    belongs_to :user
    has_many :accepted_jobs
    has_many :user_jobs
    has_many :jobapps
    # has_many :applying_users, through: :jobapps, source: :user

    has_one_attached :photo
    
end
