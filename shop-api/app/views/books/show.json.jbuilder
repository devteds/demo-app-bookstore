json.book do
    json.id @book.id
    json.title @book.title
    json.price @book.price.to_f
    json.image_url @book.image_url
    json.published_at @book.created_at
    json.description @book.description
end
