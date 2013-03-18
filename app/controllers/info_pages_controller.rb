class InfoPagesController < ApplicationController
  def faq
  end

  def terms
    render layout: 'legal_custom'
  end

  def privacy
    render layout: 'legal_custom'
  end

  def aboutus
  end

  def contact
  end

  def jobs
  end

  def quotes
  end
  
  def home
  end
  
end
