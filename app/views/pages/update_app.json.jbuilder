json.pages @pages do |json, page|
  json.id page.id
  json.name page.name
  json.photo page.photo
  json.display_items page.display_items do |json, item|
     json.display_item item
  end
end