json.extract! book, :id, :title, :author, :publication_year, :admin_id, :created_at, :updated_at
json.url book_url(book, format: :json)
