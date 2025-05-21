class ShardTwoRecord < ApplicationRecord
  self.abstract_class = true

  connects_to database: { writing: :shard_two }
end
