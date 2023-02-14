class AddRecordingLink < ActiveRecord::Migration[6.1]
  def change
    add_column :pieces, :reference_recording, :string
  end
end
