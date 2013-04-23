def full_title(page_title)
  base_title = "Make Awesome - Sandwich Edition"
  if page_title.empty?
    base_title
  else
    "#{base_title} | #{page_title}"
  end
end