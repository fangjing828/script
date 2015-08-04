APP_NAME=registry-dashboard
VERSION=$1
sudo cp /home/$(whoami)/${APP_NAME}-${VERSION}.war /opt/ctrip/web/work/${APP_NAME}.war