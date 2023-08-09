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

  def extends(layout, &block)
    # Make sure it's a string
    layout = layout.to_s

    # If there's no directory component, presume a plain layout name
    layout = "layouts/#{layout}" unless layout.include?('/')

    # Capture the content to be placed inside the extended layout
    @view_flow.get(:layout).replace capture(&block)

    render file: layout
  end
end
