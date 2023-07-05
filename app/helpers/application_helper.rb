require "redcarpet"
require "redcarpet/render_strip"

module ApplicationHelper
  def time(time)
    time.strftime("%kh%M")
  end

  def markdown(content)
    if content.present?
      markdown_to_html = Redcarpet::Markdown.new(Redcarpet::Render::HTML)
      markdown_to_html.render(content).html_safe
    end
  end
end
