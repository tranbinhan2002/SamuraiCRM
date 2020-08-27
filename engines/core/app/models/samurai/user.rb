module Samurai
  class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable
  scope :ordered, -> { order('created_at desc') } # NEW SCOPE
  end
end
