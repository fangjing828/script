#!/bin/bash
# install-crt
#./etc/rc.d/init.d/functions

export JAVA_HOME=/usr/java/jdk1.7.0_51
export FILE_PATH=/home/$(whoami)/CtripRootCertificateAuthority.crt
export PSD=changeit

install () {
	$JAVA_HOME/bin/keytool -import -trustcacerts -alias casserver -file $FILE_PATH -keystore $JAVA_HOME/jre/lib/security/cacerts
}
sudo install