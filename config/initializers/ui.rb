# Switch the javascript_include_tag :defaults to
# use jQuery instead of the default prototype helpers.
# Written by: Logan Leger, logan@loganleger.com
# http://github.com/lleger/Rails-3-jQuery

ActiveSupport.on_load(:action_view) do
  ActiveSupport.on_load(:after_initialize) do
    ActionView::Helpers::AssetTagHelper::register_javascript_expansion :defaults => ['modernizr-1.5.min', 'rails', 'application']
  end
end

ActiveSupport.on_load(:action_view) do
  ActiveSupport.on_load(:after_initialize) do
    ActionView::Helpers::AssetTagHelper::register_stylesheet_expansion :defaults => ['blueprint/screen', 'blueprint/print', 'style']
  end
end
