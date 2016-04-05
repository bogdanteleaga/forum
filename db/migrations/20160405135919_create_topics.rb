Hanami::Model.migration do
  change do
    create_table :topics do
      primary_key :id
      column :title, String, null: false
      column :category, String, null: false
    end
  end
end
