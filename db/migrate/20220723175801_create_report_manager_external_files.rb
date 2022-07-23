class CreateReportManagerExternalFiles < ActiveRecord::Migration[7.0]
  def change
    create_table :report_manager_external_files do |t|
      t.string :name

      t.timestamps
    end
  end
end
