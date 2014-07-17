json.array!(@projects_testimonials) do |projects_testimonial|
  json.extract! projects_testimonial, :id
  json.url projects_testimonial_url(projects_testimonial, format: :json)
end
