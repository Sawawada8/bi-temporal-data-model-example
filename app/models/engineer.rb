# frozen_string_literal: true

class Engineer < ApplicationRecord
  include ActiveRecord::Bitemporal

  has_many :skills
end
