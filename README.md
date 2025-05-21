# README


# horizontal_sharding

## Below is how you will fetch the users based on sharding
def fetch_users_from(shard)
  ApplicationRecord.connected_to(shard: shard) do
    User.all.to_a
  end
end

puts fetch_users_from(:shard_one)
puts fetch_users_from(:shard_two)
