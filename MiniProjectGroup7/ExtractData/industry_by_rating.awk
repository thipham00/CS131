{
    # Check for the "X.X" pattern in each line
    #for loop intertes each field $i in current line, NF variable representing number of fields in current line
    for (i = 1; i <= NF; i++) {
        if (match($i, /^[0-9]\.[0-9]$/)) { #check if fields match pattern X.X at the start of field (^[0-9]) and the end of field ([0-9]$) 
            rating = $i
        }
    }

    if ($0 ~ /Telecommunications/) { #check if entire line contains string
        if (rating) { #check if rating is not empty, ensure valid pattern X.X was found in line
            print "Telecommunications," rating > "IndustryByRating.csv"
            rating= "" #reset rating var to empty string after printing, so it won't reuse the previous string
        }
    }
    else if ($0 ~ /\"Oil, Gas, Energy & Utilities\"/) {
        if (rating) {
            print "Oil, Gas, Energy & Utilities," rating > "IndustryByRating.csv"
            rating = ""
        }
    }
    else if ($0 ~ /Health Care/) {
        if (rating) {
            print "Health Care," rating > "IndustryByRating.csv"
            rating = ""
        }
    }
    else if ($0 ~ /Insurance/) {
        if (rating) {
            print "Insurance," rating > "IndustryByRating.csv"
            rating = ""
        }
    }
    else if ($0 ~ /Finance/) {
        if (rating) {
            print "Finance," rating > "IndustryByRating.csv"
            rating = ""
        }
    }
    else if ($0 ~ /Business Services/) {
        if (rating) {
            print "Business Services," rating > "IndustryByRating.csv"
            rating = ""
        }
    }
    else if ($0 ~ /Biotech & Pharmaceuticals/) {
        if (rating) {
            print "Biotech & Pharmaceuticals," rating > "IndustryByRating.csv"
            rating = ""
        }
    }
    else if ($0 ~ /Information Technology/) {
        if (rating) {
            print "Information Technology," rating > "IndustryByRating.csv"
            rating = ""
        }
    }
    else if ($0 ~ /Government/) {
        if (rating) {
            print "Government," rating > "IndustryByRating.csv"
            rating = ""
        }
    }
    else if ($0 ~ /Non-Profit/) {
        if (rating) {
            print "Non-Profit," rating > "IndustryByRating.csv"
            rating = ""
        }
    }
}
