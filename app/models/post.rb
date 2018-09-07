# frozen_string_literal: true

class Post < ApplicationRecord
  has_many :comments
  validate :user_name
  validates_presence_of :message, :user_name
  has_many :likes
end
