 # class DatepickerInput < SimpleForm::Inputs::Base 
	#  def input 
	# 	@builder.text_field(attribute_name, input_html_options)
	# 	@builder.hidden_field(attribute_name, { :class => attribute_name.to_s + "-alt"}) 
	#  end 
 # end 

module SimpleForm
  module Inputs
    class DatePickerInput < Base
      def input
        @builder.text_field(attribute_name,input_html_options)
      end    
    end
  end
end





