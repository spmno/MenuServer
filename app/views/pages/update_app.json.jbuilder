json.pages @pages do |json, page|
  json.id page.id
  json.name page.name
  json.photo page.photo
  json.dish_kind_id page.dish_kind_id
  json.display_items page.display_items do |json, item|
     json.display_item item
  end
end

json.kinds @dish_kinds do |json, kind|
    json.name kind.name
    json.photo kind.photo
end