class BackOutSignUp < ActiveRecord::Migration
    def change
        add_column :user, :remember_token, :string
        add_index  :user, :remember_token
    end
end

    