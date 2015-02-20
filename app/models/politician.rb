class Politician < ActiveRecord::Base
has_secure_password
has_many :bills
has_many :voters






end
