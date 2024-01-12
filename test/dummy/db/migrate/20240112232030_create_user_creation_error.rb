class CreateUserCreationError < ActiveRecord::Migration[7.1]
  def change
    create_table :user_creation_errors do |t|
      t.text :error
      t.string :severity
      t.json :context

      t.timestamps
    end
  end
end
