module Shapes
  module Presenter
    class Enum < Shapes::Presenter::Primitive

      def form
        content_tag(:label, 'Text') +
        text_area(:resource, :value) +
        content_tag(:label, 'Separator') +
        text_field(:resource, :separator)
      end

      def struct_form
        content_tag(:label, "Text (#{@resource.ident})") +
        hidden_field("resource[struct][#{@resource.ident}][ident]", @resource.ident) +
        text_field_tag("resource[struct][#{@resource.ident}][value]", @resource.value) +
        content_tag(:label, "Separator (#{@resource.ident})") +
        text_field_tag("resource[struct][#{@resource.ident}][separator]", @resource.separator)
      end

      def to_html(options, &block)
       resource.value * "#{resource.separator} "
      end

    end
  end
end
