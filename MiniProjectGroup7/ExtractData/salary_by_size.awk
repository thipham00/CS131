{
    # Check for the "$XXXK-$XXXK" pattern in each line
    if (match($0, /\$[0-9]+K-\$[0-9]+K/)) { #check if entire line ($0) contain pattern
        salary_estimate = substr($0, RSTART, RLENGTH)  # capture portions of lines that matches pattern then assign them to salary_estimate: extracts substring from $0 starting at poition specified by RSTART and with a length of RLENGTH
    }

    # If "1 to 50 employees" is found, handle the stored pattern
    if ($0 ~ /1 to 50 employees/) {
        if (salary_estimate) {
            print "1 to 50 employees,", salary_estimate > "SalaryBySize.csv"
            salary_estimate = ""
        }
    }
    else if ($0 ~ /51 to 200 employees/) {
        if (salary_estimate) {
            print "51 to 200 employees,", salary_estimate > "SalaryBySize.csv"
            salary_estimate = ""
        }
    }
    else if ($0 ~ /201 to 500 employees/) {
        if (salary_estimate) {
            print "201 to 500 employees,", salary_estimate > "SalaryBySize.csv"
            salary_estimate = ""
        }
    }
    else if ($0 ~ /501 to 1000 employees/) {
        if (salary_estimate) {
            print "501 to 1000 employees,", salary_estimate > "SalaryBySize.csv"
            salary_estimate = ""
        }
    }
    else if ($0 ~ /1001 to 5000 employees/) {
        if (salary_estimate) {
            print "1001 to 5000 employees,", salary_estimate > "SalaryBySize.csv"
            salary_estimate = ""
        }
    }
    else if ($0 ~ /5001 to 10000 employees/) {
        if (salary_estimate) {
            print "5001 to 10000 employees,", salary_estimate > "SalaryBySize.csv"
            salary_estimate = ""
        }
    }
    else if ($0 ~ /10000\+ employees/) {
        if (salary_estimate) {
            print "10000+ employees,", salary_estimate > "SalaryBySize.csv"
            salary_estimate = ""
        }
    }
}
