# frozen_string_literal: true

class City < ApplicationRecord
  has_one :guide, dependent: :destroy
end
