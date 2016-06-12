for GOOS in darwin linux windows; do
  for GOARCH in 386 amd64; do
    echo "Building $GOOS-$GOARCH"
    export GOOS=$GOOS
    export GOARCH=$GOARCH
    F="bin/salyangoz-$GOOS-$GOARCH"
    #print $F;
     if [ "$GOOS" = "windows" ]; then
        F="$F.exe"
    fi
    echo $F;
    go build -o $F
  done
done

export GOOS=linux
export GOARCH=arm
go build -o bin/salyangoz-linux-arm