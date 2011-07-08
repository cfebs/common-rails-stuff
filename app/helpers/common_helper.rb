module CommonHelper
  def errors_for object
    if object.errors.any?
      render 'shared/errors', :object => object
    end
  end
  
  def flashy f
    render 'shared/flash', :flash => f
  end
end
