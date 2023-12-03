{
    # Check for the "X.X" pattern in each line
    for (i = 1; i <= NF; i++) {
        if (match($i, /^[0-9]\.[0-9]$/)) {
            rating = $i
        }
    }

    if ($0 ~ /Telecommunications/) {
        if (rating) {
            print "Telecommunications," rating > "IndustryByRating.csv"
            rating= ""
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
