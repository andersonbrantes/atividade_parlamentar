class ReportManager::ExternalFile < ApplicationRecord
  has_one_attached :file
end
