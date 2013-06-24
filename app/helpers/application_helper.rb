module ApplicationHelper
  def markdown!(marked)
    Redcarpet::Markdown.new(Redcarpet::Render::HTML, :autolink => true, :space_after_headers => true).render(marked).to_s.html_safe
  end
end
