Sequel.migration do
  change do
    alter_table :images do
      add_foreign_key :project_id, :projects
    end
  end
end
