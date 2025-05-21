class ShardOneRecord < ApplicationRecord
  self.abstract_class = true

  connects_to database: { writing: :shard_one }
end
