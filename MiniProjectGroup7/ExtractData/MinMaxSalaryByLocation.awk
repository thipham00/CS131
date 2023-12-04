
BEGIN {
    FS = ","; #set field separator FS to ,
}

NR > 1 {  #skip header
    gsub(/[$K]/, "", $2); #remove $ and K from 2nd fields
    split($2, range, "-"); #split 2nd into array range using - as delimiter
    salary = range[1]; #extract min/max salary values from range array
    location = $1;
    if (!min[location] || salary < min[location]) min[location] = salary; #update the minimum salary value for a specific location in the min array
                                       # check if min array for current location undefined or if salary les than curent min value for that location 
    if (!max[location] || range[2] > max[location]) max[location] = range[2]; #update max value for specific location in max array
}

END {
    for (loc in min) {
        printf "%s, $%sK-$%sK\n", loc, min[loc], max[loc]; #printed formatted result: add $ and K back to salary values
    }
}

#loc is loop var that iterates over indices of min/max array.print summary of salary for differrent location based on dataset  in each interation of loop
# % is placeholder used in format string to indicate where and how the corresponding var should be formatted in output
