class ReportManager::ExternalFile < ApplicationRecord
  has_one_attached :file

  #validate :check_file_type

  before_save :process_file

  def process_file
    p '>>>>>>>>>>> process file'
    p "content_type #{file.content_type}"
    p file.inspect
    #f = file.open(&:first).parse_csv
    # f.inspect
  end

  def get_csv
    #@csv_data = CSV.open(file_path, liberal_parsing: true, headers: true, col_sep: ';').read


    CSV.open(file_path, liberal_parsing: true, &:readline)
    # @csv_data.each do |row|
    #   p row.first[0].gsub('"', '')
    # end
  end



  def file_path
    ActiveStorage::Blob.service.path_for(file.key)
  end

  def parliamentarians_data_file?
    p get_csv.headers
  end

  def process_parliamentarians_data
  end

  private

  def check_file_type
    if file.attached? && !file.content_type.in?(%w(text/csv))
      file.purge # delete the uploaded file
      errors.add(:file, 'Must be a CSV file')
    end
  end
end
