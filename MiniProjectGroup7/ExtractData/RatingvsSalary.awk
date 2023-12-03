{
    # Check for the "$XXXK-$XXXK" pattern in each line
    if (match($0, /\$[0-9]+K-\$[0-9]+K/)) {
        salary_estimate = substr($0, RSTART, RLENGTH)  # Store matched salary pattern
    }

    # Extract rating if it's present
    if (match($0, /[0-9]\.[0-9]/)) {
        rating = substr($0, RSTART, RLENGTH)  # Store matched rating pattern
    }

    # Print salary vs rating if both are available
    if (salary_estimate && rating) {
        print salary_estimate, ",", rating > "SalaryRating.csv"
        salary_estimate = ""
        rating = ""
    }
}

