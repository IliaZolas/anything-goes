class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :jobs
  # has_many :accepted_jobs
  # has_many :saved_jobs
  # has_many :jobsaves, :through => :saved_jobs, :source => :jobs
  has_many :user_jobs
  has_many :saved_jobs, :through => :user_jobs, :source => :jobs, class_name: "Job", foreign_key: "job_id"

  has_one_attached :photo
  
end
