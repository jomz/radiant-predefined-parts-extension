require 'radiant-predefined_parts-extension/version'
class PredefinedPartsExtension < Radiant::Extension
  version RadiantPredefinedPartsExtension::VERSION
  description "Have a list of predefined parts to select from"
  url "http://github.com/jomz/radiant-predefined-parts-extension"
  
  def activate
    Radiant::Config['predefined_parts.parts'] ||= 'body, content-sec, video' if Radiant::Config.table_exists?
    
    admin.page.edit.add :main, 'predefined_parts_includes', :before => 'edit_header'
  end
  
end
