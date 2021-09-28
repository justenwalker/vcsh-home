export GOPATH=${GOPATH:-"$HOME/go"}
if [ -d $GOPATH ]; then
    pathmunge $GOPATH/bin
fi
GOROOT=${GOROOT:-"/usr/local/go"}
if [ -d $GOROOT ]; then
    pathmunge $GOROOT/bin
fi