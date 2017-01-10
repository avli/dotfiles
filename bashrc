[ -f ~/.aliases ] && source ~/.aliases

if [ -f $(brew --prefix)/etc/bash_completion ]; then
    . $(brew --prefix)/etc/bash_completion
fi

export PATH=$HOME/miniconda3/bin:/usr/local/bin:/usr/local/sbin:/usr/local/texlive/2015/bin/x86_64-darwin:$PATH

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

source `which virtualenvwrapper_lazy.sh`

# Spark
export PYSPARK_PYTHON=$HOME/miniconda3/bin/python
export PYSPARK_DRIVER_PYTHON=$HOME/miniconda3/bin/ipython
export SPARK_HOME=/usr/local/Cellar/apache-spark/2.0.2/libexec
export PYTHONPATH=$SPARK_HOME/python:$PYTHONPATH
export PYTHONPATH=$SPARK_HOME/python/lib/py4j-0.10.3-src.zip:$PYTHONPATH