# HDFS
alias hf='hdfs dfs'
alias hls='hf -ls'
alias hcat='hf -cat'
alias hget='hf -get'
alias hput='hf -put'
alias hrm='hf -rm'
alias hcp='hf -cp'
alias hmkdir='hf -mkdir'
alias hdu='hf -du -h'

# Server pwd
alias spwd='echo $(hostname -i):$(pwd)'

# Backup file
backup(){
    for filename in "$@"; do
        cp $filename $filename.bak
    done
}
