class SubjectArea < ActiveRecord::Base
	has_and_belongs_to_many :prospectus_requests
end
