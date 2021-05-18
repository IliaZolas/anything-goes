class Jobapp < ApplicationRecord
    belongs_to :user
    belongs_to :job
    belongs_to :applying_user
    # has_many :applying_users, class_name: "User"


    has_one_attached :photo
end
