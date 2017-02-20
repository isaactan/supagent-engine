module ApplicationHelper

    def read_only_text_field(object_name, method, options = {})
          text_field(object_name, method, :disabled => true)
    end
end
