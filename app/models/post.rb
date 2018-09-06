# frozen_string_literal: true

class Post < ApplicationRecord
  has_many :comments

  validates_presence_of :message, :user_name
end
