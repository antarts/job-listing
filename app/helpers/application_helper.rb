module ApplicationHelper
  def markdown(text)
    unless @markdown
      extensions = {
        hard_wrap: true,
        filter_html: true,
        autolink: true,
        no_intra_emphasis: true,
        strikethrough: true,
        fenced_code_blocks: true,
        gh_blockcode: true,
        tables: true,
        footnotes: true,
        lax_spacing: true,
        highlight: true
      }
      renderer = Redcarpet::Render::HTML.new
      @markdown = Redcarpet::Markdown.new(renderer, extensions)
    end

    @markdown.render(text).force_encoding('UTF-8').html_safe
end
  # create a custom renderer that allows highlighting of code blocks

  class HTMLwithPygments < Redcarpet::Render::HTML
    def block_code(code, language)
      Pygments.highlight(code, lexer: language)
    end
  end

  markdown = Redcarpet::Markdown.new(HTMLwithPygments, fenced_code_blocks: true)
end
