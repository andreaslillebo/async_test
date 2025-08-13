class Post < ApplicationRecord
  broadcasts_to ->(post) { "posts" }, partial: "posts/post", target: :posts
end
