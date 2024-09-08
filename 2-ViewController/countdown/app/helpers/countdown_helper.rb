module CountdownHelper
    def date_string(time)
        Date::DATE_FORMATS[:month_day_comma_year] = "%B %e, %Y" # January 28, 2015
        time.to_formatted_s(:month_day_comma_year)
    end
end
