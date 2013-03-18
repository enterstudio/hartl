module InfoPagesHelper
  
  # Returns the full title on a per-page basis.
  def full_title(page_title)
    base_title = "Hartl App"
    if page_title.empty?
      base_title
    else
      "#{base_title} | #{page_title}"
    end
  end
  
  #Returns the current active-page on a per-page basis
  def aboutusActive?(page_title)
    'class="active"' if page_title == "About Us"
  end
  
  
  #For systematic navigation links...
  
  def g_home_logo(page_title)
    if page_title.empty?
      '<a href="#"><img class="brand" width="26" src="/assets/botflip-logo.svg"></a><a href="#" class="brand">Miniflip</a>'.html_safe
      # link_to "MiniFeed", "#", class: "brand"
    else
      '<a href="/"><img class="brand" width="26" src="/assets/botflip-logo.svg"></a><a href="/" class="brand">Miniflip</a>'.html_safe
    end
  end
  
  def g_home_link(page_title)
    if page_title.empty?
      content_tag(:li, class: "active") do
        link_to("#") do
          '<i class="icon-home icon-large"></i> Home'.html_safe
        end
      end
    else
      content_tag(:li) do
        link_to(root_path) do
          '<i class="icon-home icon-large"></i> Home'.html_safe
        end
      end
    end
  end
  
  def g_about_link(page_title)
    if page_title == "About Me"
      content_tag(:li, class: "active pushdown") do
        link_to("About", "#")
      end
    else
      content_tag(:li, class: "pushdown") do
        link_to("About", about_path)
      end
    end
  end
  
  def g_contact_link(page_title)
    if page_title == "Contact"
      content_tag(:li, class: "active") do
        link_to("Contact", "#")
      end
    else
      content_tag(:li) do
        link_to("Contact", contact_path)
      end
    end
  end
  
  def g_faq_link(page_title)
    if page_title == "FAQ"
      content_tag(:li, class: "active") do
        link_to("FAQ", "#")
      end
    else
      content_tag(:li) do
        link_to("FAQ", faq_path)
      end
    end
  end
  
  def g_careers_link(page_title)
    if page_title == "Careers"
      content_tag(:li, class: "active") do
        link_to("Careers", "#")
      end
    else
      content_tag(:li) do
        link_to("Careers", careers_path)
      end
    end
  end
  
  def g_privacy_link(page_title)
    if page_title == "Privacy"
      content_tag(:li, class: "active") do
        link_to("Privacy", "#")
      end
    else
      content_tag(:li) do
        link_to("Privacy", privacy_path)
      end
    end
  end
  
  def g_quotes_link(page_title)
    if page_title == "Quotes"
      content_tag(:li, class: "active") do
        link_to("Quotes", "#")
      end
    else
      content_tag(:li) do
        link_to("Quotes", quotes_path)
      end
    end
  end
  
  def g_terms_link(page_title)
    if page_title == "Terms"
      content_tag(:li, class: "active") do
        link_to("Terms", "#")
      end
    else
      content_tag(:li) do
        link_to("Terms", terms_path)
      end
    end
  end
  
  
end
