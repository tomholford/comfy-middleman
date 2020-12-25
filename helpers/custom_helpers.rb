module CustomHelpers
  def host
    config[:host]
  end

  def active_nav_item?(nav_title)
    return 'active' if (current_page.data.title == nav_title) || (nav_title == 'Blog' && current_page.path =~ /^blog\// && is_blog_article?)

    ''
  end

  def external_link_to(name = nil, options = nil, html_options = nil, &block)
    opts = { target: '_blank', rel: 'nofollow noopener' }
    if block_given?
      options ||= {}
      options = options.merge(opts)
    else
      html_options ||= {}
      html_options = html_options.merge(opts)
    end
    link_to(name, options, html_options, &block)
  end
end
