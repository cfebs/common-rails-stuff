module CommonHelper
  def errors_for object
    if object.errors.any?
      render 'shared/errors', :object => object
    end
  end
  
  def flash_on
    render 'shared/flash'
  end
end
