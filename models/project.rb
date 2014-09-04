class Project < Sequel::Model
  one_to_many :images
end
