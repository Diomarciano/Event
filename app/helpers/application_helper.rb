module ApplicationHelper
	def data_currency(data)
    	number_to_currency(data, unit: 'Rp. ', :precision => 0)
  	end

  	def flash_class(level)
    case level
        when :notice then "alert alert-info"
        when :success then "alert alert-success"
        when :error then "alert alert-error"
        when :alert then "alert alert-error"
    end
	end

end
