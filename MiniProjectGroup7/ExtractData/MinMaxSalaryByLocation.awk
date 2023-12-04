
BEGIN {
    FS = ",";
}

NR > 1 {
    gsub(/[$K]/, "", $2);
    split($2, range, "-");
    salary = range[1];
    location = $1;
    if (!min[location] || salary < min[location]) min[location] = salary;
    if (!max[location] || range[2] > max[location]) max[location] = range[2];
}

END {
    for (loc in min) {
        printf "%s, $%sK-$%sK\n", loc, min[loc], max[loc];
    }
}

