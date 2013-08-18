class Relationship < ActiveRecord::Base
  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"
  validates :followed_id, presence: true
  validates :follower_id, presence: true
  attr_accessible :followed_id, :follower_id
  def change
  	create_table :relationships do |t|
  		t.integer :follower_id
  		t.integer :followed_id

  		t.timestamps
  	end

	  add_index :relationships, :follower_id
	  add_index :relationships, :followed_id
	  add_index :relationships, [:follower_id, :followed_id], unique: true
	end
end
