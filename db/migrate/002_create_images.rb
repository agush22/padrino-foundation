Sequel.migration do
  up do
    create_table :images do
      primary_key :id
      String :file, :null=>false
      String :name
      Text :caption
      DateTime :created_at
    end
  end

  down do
    drop_table :images
  end
end
