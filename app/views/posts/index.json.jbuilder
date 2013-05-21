json.array!(@posts) do |post|
  json.extract! post, :name, :title, :content, :exerpt, :location
  json.url post_url(post, format: :json)
end