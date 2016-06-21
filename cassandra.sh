#!/bin/bash

echo "Start downloading cassandra 2.2.6"

wget http://ftp.tsukuba.wide.ad.jp/software/apache/cassandra/2.2.6/apache-cassandra-2.2.6-bin.tar.gz
tar -xvzf apache-cassandra-2.2.6-bin.tar.gz
mv apache-cassandra-2.2.6 $HOME/Application/
rm apache-cassandra-2.2.6-bin.tar.gz

FILE=$HOME/.cassandra.sh
if [ -f $FILE ];
then
   rm $FILE
fi

echo "#!/bin/bash" >> $HOME/.cassandra.sh
chmod a+x $HOME/.cassandra.sh

echo 'export CASSANDRA_HOME=$HOME/Application/apache-cassandra-2.2.6' >> $HOME/.cassandra.sh

echo "Setted up CASSANDRA_HOME"
echo $CASSANDRA_HOME

echo 'export PATH=$PATH:$CASSANDRA_HOME/bin' >> $HOME/.cassandra.sh
echo "Added CASSANDRA's bin folder to PATH\n\n"

echo "Please run below command to continue setting:"
echo "source $HOME/.cassandra.sh"

