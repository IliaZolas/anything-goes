class UserJob < ApplicationRecord
    # belongs_to :user
    # belongs_to :job
    has_many :jobs
    has_many :users
    has_one_attached :photo
end
