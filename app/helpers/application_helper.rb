require "redcarpet"
require "redcarpet/render_strip"

module ApplicationHelper
  def markdown(content)
    if content.present?
      markdown_to_html = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
      markdown_to_html.render(content).html_safe
    end
  end
end
