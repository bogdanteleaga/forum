Hanami::Model.migration do
  change do
    create_table :posts do
      primary_key :id
      foreign_key :user_id, :users, on_delete: :cascade, null: false
      foreign_key :topic_id, :topics, on_delete: :cascade, null: false
      column :title, String, null: false
      column :content, String, null: false
    end
  end
end
