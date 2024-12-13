
conjure --version > conjure-version.txt

function run {
    essence=$1
    dir=$2
    mode=$3

    rm -f $dir/$mode.trace $dir/$mode.eprime

    mkdir -p $dir
    conjure modelling -ac $essence -o $dir/$mode --unnamed-symmetry-breaking $mode 2> $dir/$mode.trace
    mv $dir/$mode/model000001.eprime $dir/$mode.eprime
    rm -r $dir/$mode
}
export -f run;

parallel --no-notice --eta \
    --joblog joblog \
    --results gnuparallel-results \
    "run {1} {1//}/outputs {2}" \
    ::: */*.essence \
    ::: none full \
        Complete-Consecutive-Independently \
        Complete-Consecutive-Altogether \
        Complete-AllPairs-Independently \
        Complete-AllPairs-Altogether \
        Complete-AllPermutations-Independently \
        Complete-AllPermutations-Altogether



LC_ALL=C sort -n joblog -o joblog
# this is to drop the 2nd and the 3rd columns
# 2nd is the host, which we always expect to be ":"
# 3rd is the StartTime
cat joblog | cut -f 1,4- > joblog.cropped
mv joblog.cropped joblog

