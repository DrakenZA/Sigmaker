class Siginfo < ApplicationRecord
  serialize :links, Array

  has_many :Siglinks
  accepts_nested_attributes_for :Siglinks, :allow_destroy => true







end
