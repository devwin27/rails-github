class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :repos, :type, :type_repo
  end
end
