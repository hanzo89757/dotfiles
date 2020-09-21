# HDFS configure
source /usr/local/hadoop3rc
export KRB5PRINCIPAL=reco_hago
export KRB5KEYTAB=/usr/local/hadoop3/etc/hadoop/reco_hago.keytab

# Parse log
alias dg_parse="python $HOME/utils/parselog.v6.py comment,like,vv,follow,dr,click auc eval"

# Python virtualenv
if [ -f "$HOME/venv/bin/activate" ]; then
    . "$HOME/venv/bin/activate"
fi
