module ApplicationHelper
  def markdown!(marked)
    marked = marked.to_s
    marked.sub!('[-more-]','')
    Redcarpet::Markdown.new(Redcarpet::Render::HTML, :autolink => true, :space_after_headers => true).render(marked).html_safe
  end
end
