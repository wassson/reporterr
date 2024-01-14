class CreateReportedError < ActiveRecord::Migration[7.1]
  def change
    create_table :reported_errors do |t|
      t.text :error
      t.string :severity
      t.json :context

      t.timestamps
    end
  end
end
