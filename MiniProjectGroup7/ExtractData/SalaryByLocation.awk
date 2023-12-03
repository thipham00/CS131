BEGIN{
	print "Location, Salary Estimate" > "SalaryByLocation.csv"
}


{
	# Check for the "$XXXK-$XXXK" pattern in each line
	if (match($0, /\$[0-9]+K-\$[0-9]+K/)) {
		salary_estimate = substr($0, RSTART, RLENGTH)  # Store matched pattern
	}

	if ($0 ~ /\"[a-zA-Z]*, NY/) {
		if (salary_estimate) {
			print "New York," salary_estimate > "SalaryByLocation.csv"
			salary_estimate = ""
		}
	}
	else if ($0 ~ /\"[a-zA-Z]*, NJ/) {
                if (salary_estimate) {
                        print "New Jersey," salary_estimate > "SalaryByLocation.csv"
                        salary_estimate = ""
                }
        }
	else if ($0 ~ /\"[a-zA-Z]*, CA/) {
                if (salary_estimate) {
                        print "California," salary_estimate > "SalaryByLocation.csv"
                        salary_estimate = ""
                }
        }
	else if ($0 ~ /\"[a-zA-Z]*, IL/) {
                if (salary_estimate) {
                        print "Illinois," salary_estimate > "SalaryByLocation.csv"
                        salary_estimate = ""
                }
        }
	else if ($0 ~ /\"[a-zA-Z]*, TX/) {
                if (salary_estimate) {
                        print "Texas," salary_estimate > "SalaryByLocation.csv"
                        salary_estimate = ""
                }
        }
        else if ($0 ~ /\"[a-zA-Z]*, AZ/) {
                if (salary_estimate) {
                        print "Arizona," salary_estimate > "SalaryByLocation.csv"
                        salary_estimate = ""
                }
        }
        else if ($0 ~ /\"[a-zA-Z]*, DE/) {
                if (salary_estimate) {
                        print "Delaware," salary_estimate > "SalaryByLocation.csv"
                        salary_estimate = ""
                }
        }
	else if ($0 ~ /\"[a-zA-Z]*, PA/) {
                if (salary_estimate) {
                        print "Pennsylvania," salary_estimate > "SalaryByLocation.csv"
                        salary_estimate = ""
                }
        }
        else if ($0 ~ /\"[a-zA-Z]*, FL/) {
                if (salary_estimate) {
                        print "Florida," salary_estimate > "SalaryByLocation.csv"
                        salary_estimate = ""
                }
        }
        else if ($0 ~ /\"[a-zA-Z]*, OH/) {
                if (salary_estimate) {
                        print "Ohio," salary_estimate > "SalaryByLocation.csv"
                        salary_estimate = ""
                }
        }
	else if ($0 ~ /\"[a-zA-Z]*, United Kingdom/) {
                if (salary_estimate) {
                        print "United Kingdom," salary_estimate > "SalaryByLocation.csv"
                        salary_estimate = ""
                }
        }

}
