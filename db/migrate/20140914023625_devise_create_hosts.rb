class DeviseCreateHosts < ActiveRecord::Migration
  def change
    create_table(:hosts) do |t|
      ## Database authenticatable
      t.string :email,              null: false, default: ""
      t.string :encrypted_password, null: false, default: ""

      ## Recoverable
      t.string   :reset_password_token
      t.datetime :reset_password_sent_at

      ## Rememberable
      t.datetime :remember_created_at

      ## Trackable
      t.integer  :sign_in_count, default: 0, null: false
      t.datetime :current_sign_in_at
      t.datetime :last_sign_in_at
      t.inet     :current_sign_in_ip
      t.inet     :last_sign_in_ip

      ## Personal Info
      t.string :name
      t.string :phone
      t.string :url1
      t.string :url2
      t.string :location_name
      t.string :street
      t.string :street_number
      t.string :city
      t.string :state
      t.string :zip
      t.string :country

      ## Confirmable
      # t.string   :confirmation_token
      # t.datetime :confirmed_at
      # t.datetime :confirmation_sent_at
      # t.string   :unconfirmed_email # Only if using reconfirmable

      ## Lockable
      # t.integer  :failed_attempts, default: 0, null: false # Only if lock strategy is :failed_attempts
      # t.string   :unlock_token # Only if unlock strategy is :email or :both
      # t.datetime :locked_at

      ## Admin Role
      t.boolean :admin, default: true



      t.timestamps
    end

    add_index :hosts, :email,                unique: true
    add_index :hosts, :reset_password_token, unique: true
    # add_index :hosts, :confirmation_token,   unique: true
    # add_index :hosts, :unlock_token,         unique: true
  end
end
