Sequel.migration do
  up do
    create_table :projects do
      primary_key :id
      String :name
      String :url
      Text :description
    end
  end

  down do
    drop_table :projects
  end
end
