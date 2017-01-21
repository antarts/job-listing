module FlashesHelper
  FLASH_CLASSES = { alert: 'danger', notice: 'success', warning: 'warning' }.freeze

  def flash_class(key)
    FLASH_CLASSES.fetch key.to_sym, key
  end

  def user_facing_flashes
    flash.to_hash.slice 'alert', 'notice', 'warning'
  end

  def render_highlight_content(job, query_string)
    excerpt_cont = excerpt(job.title, query_string, radius: 500)
    highlight(excerpt_cont, query_string)
  end
end
