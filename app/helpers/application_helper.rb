module ApplicationHelper
    def flash_class(level)
        case level
            when "notice"  then "alert-warning"
            when "success" then "alert-success"
            when "error"   then "alert-danger"
            when "alert"   then "alert-warning"
        end
    end
end
