class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users, id: :uuid, default: 'gen_random_uuid()' do |t|
      t.string :name
      t.integer :age
      t.jsonb :address, default: '{}'
      t.timestamps
    end
  end
end
