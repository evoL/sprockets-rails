namespace :sprockets do
  desc "Generate and install the Sprockets concatenated JavaScript file"
  task :install_script => :environment do
    Sprocket.new.install_script
  end
  
  desc "Install any assets provided by Sprockets scripts"
  task :install_assets => :environment do
    Sprocket.new.install_assets
  end
end