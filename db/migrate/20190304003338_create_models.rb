class CreateModels < ActiveRecord::Migration[5.1]
  def change
    create_table :issuers do |t|
      t.string :slug
      t.string :name

      t.timestamps
    end

    create_table :accounts do |t|
      t.string :email, null: false
      t.string :crypted_password
      t.string :salt
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.references :broker, foreign_key: { to_table: :accounts }

      t.timestamps
    end

    create_table :roles do |t|
      t.string :name, null: false
      t.string :key, null: false
    end

    create_table :account_roles do |t|
      t.references :account
      t.references :role
    end

    create_table :direct_trades do |t|
      t.decimal :price_per_share
      t.integer :number_of_shares
      t.string :status
      t.references :issuer
      t.references :seller
      t.references :buyer

      t.timestamps
    end
  end
end
