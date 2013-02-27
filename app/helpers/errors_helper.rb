module ErrorsHelper
  
  def looking_for(notfound)
    unless notfound.nil?
    	"<h2>You were looking for :
    		<div class='text-error'> 
    			<strong>#{notfound}</strong>
    		</div>
    	</h2>".html_safe
    end
  end
end
