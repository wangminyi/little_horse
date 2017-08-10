class CreateRewards < ActiveRecord::Migration[5.0]
  def change
    create_table :rewards do |t|
      t.string :name
      t.string :reward_company
      t.string :undertake_company
      t.string :reward_nature
      t.string :reward_type
      t.date :reward_at
      t.string :file
      t.string :person_name
      t.string :person_gender
      t.string :person_work_info
      t.string :person_salary
      t.string :project_name
      t.string :project_company
      t.string :project_member

      t.timestamps
    end

    add_index :rewards, :name
    add_index :rewards, :reward_at
    add_index :rewards, :project_name
    add_index :rewards, :person_name
  end
end
