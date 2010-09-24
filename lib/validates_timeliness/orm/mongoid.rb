module ValidatesTimeliness
  module ORM
    module Mongoid
      extend ActiveSupport::Concern
      # You need define the fields before you define the validations.
      # It is best to use the plugin parser to avoid errors on a bad
      # field value in Mongoid. Parser will return nil rather than error.

      module ClassMethods 
        # Mongoid has no bulk attribute method definition hook. It defines
        # them with each field definition. So we likewise define them after
        # each validation is defined.
        #
        def timeliness_validation_for(attr_names, type)
          super
          attr_names.each { |attr_name| define_timeliness_write_method(attr_name) }
        end

        def define_timeliness_write_method(attr_name)
          type = timeliness_attribute_type(attr_name)
          method_body, line = <<-EOV, __LINE__ + 1
            def #{attr_name}=(value)
              @attributes_cache ||= {}
              @attributes_cache["_#{attr_name}_before_type_cast"] = value
              #{ "value = ValidatesTimeliness::Parser.parse(value, :#{type}) if value.is_a?(String)" if ValidatesTimeliness.use_plugin_parser }
              write_attribute(:#{attr_name}, value)
            end
          EOV
          class_eval(method_body, __FILE__, line)
        end

        def timeliness_attribute_type(attr_name)
          {
            Date => :date,
            Time => :datetime,
            DateTime => :datetime
          }[fields[attr_name.to_s].type] || :datetime
        end
      end

    end
  end
end
 
module Mongoid::Document
  include ValidatesTimeliness::HelperMethods
  include ValidatesTimeliness::AttributeMethods
  include ValidatesTimeliness::ORM::Mongoid

  def reload_with_timeliness
    @attributes_cache = {}
    reload_without_timeliness
  end
  alias_method_chain :reload, :timeliness
end
