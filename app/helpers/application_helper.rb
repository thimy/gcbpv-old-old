module ApplicationHelper
  def markdown(content)
    if content.present?
      content_tag(:div, class: "markdown-content") do
        markdown_parser(markdown_renderer).render(content.to_s).html_safe
      end
    end
  end
end
