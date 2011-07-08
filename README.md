# Description

Includes a few trivial haml helpers and partials to handle form errors and flash variables. 

# Files

    ./app/helpers/common_helper.rb
    ./app/views/shared/_flash.html.haml
    ./app/views/shared/_errors.html.haml
    ./app/views/layouts/application.html.haml

# Usage

Include the common_helper in the applicaiton_helper (bad practice?)

    module ApplicationHelper
      include CommonHelper
      ...
    end

In forms just use

    = form_for @object |do| obj
      = errors_for obj
      ...

To render flash divs

    = flashy flash

Or just render the partial passing the flash

    = render 'shared/flash', :flash => f
