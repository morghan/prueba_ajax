class Articulo < ActiveRecord::Base
	validates_presence_of :titulo
	has_many :contenidos, :dependent => :destroy
end
