module SprocketsHelper
  def sprockets_include_tag
    javascript_include_tag("/sprockets/#{ render(:inline => "<%=  yield :sprockets_scripts %>") }")  if @content_for_sprockets_scripts
  end

  def sprockets_path
    javascript_path "/sprockets/#{ render(:inline => "<%=  yield :sprockets_scripts %>") }" if @content_for_sprockets_scripts 
  end

  def sprockets_scripts *scripts
    @scripts ||= []
    @scripts += scripts
    @content_for_sprockets_scripts = SprocketsApplication.encode(@scripts.sort)
    nil
  end
end
