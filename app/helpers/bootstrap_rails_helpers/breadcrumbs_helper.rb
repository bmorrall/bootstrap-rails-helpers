module BootstrapRailsHelpers::BreadcrumbsHelper

  def add_breadcrumb(name, url = '', options = {})
    @breadcrumbs ||= []
    name = translate_breadcrumb(name, params[:controller]) if name.is_a?(Symbol)
    url = eval(url.to_s) if url =~ /_path|_url|@/
    @breadcrumbs << {:name => name, :url => url, :options => options}
  end

  def translate_breadcrumb(name, controller_path)
    scope = [:breadcrumbs]
    namespace = controller_path.split('/')
    namespace.last.sub!('_controller', '')
    scope += namespace

    I18n.t name, :scope => scope, :default => I18n.t("breadcrumbs.defaults.#{name}")
  end

  def render_breadcrumbs(divider = '/')
    render :partial => 'bootstrap_rails_helpers/breadcrumbs', :locals => {:divider => divider}
  end

end
