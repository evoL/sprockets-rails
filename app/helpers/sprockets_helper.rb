module SprocketsHelper
  def sprockets_include_tag
    javascript_include_tag "/sprockets.js"
  end

  def sprockets_path
    javascript_path "/sprockets.js"
  end

  # def sprockets_folder folder
  #   @scripts ||= []
  #   cut = 16
  #   path = File.join('app', 'javascripts', folder)
  #   if Dir.exists? path
  #     @scripts += Dir.glob(File.join(path, '*.js')).map { |name| name[cut..-4] }
  #   end
  #   nil
  # end
  # 
  # def sprockets_scripts *scripts
  #   @scripts ||= []
  #   @scripts += scripts
  #   nil
  # end
end
