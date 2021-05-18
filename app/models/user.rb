class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :jobs
  has_many :jobapps, through: :jobs

  has_many :user_jobs
  has_many :saved_jobs, through: :user_jobs, source: :job
  has_many :applied_jobs, through: :jobapps, source: :job

  has_one_attached :photo


end
