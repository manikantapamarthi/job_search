class Job < ApplicationRecord
  enum commitment: [:full_time, :part_time, :contract, :internship]
end
