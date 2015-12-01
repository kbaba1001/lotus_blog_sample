Lotus::Model.migration do
  change do
    create_table :microposts do
      primary_key :id
      column :content, String, null: false
      column :user_id, Integer, null: false
    end
  end
end
