class AddProgramToStudent < ActiveRecord::Migration[5.2]
  def change
    add_column :students, :program, :string
  end
end
