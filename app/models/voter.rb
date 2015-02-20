class Voter < ActiveRecord::Base
has_secure_password
belongs_to :politician
has_many :votes





end
