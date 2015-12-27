# Download file from ISJ


[位置参照情報ダウンロードサービス](http://nlftp.mlit.go.jp/isj/ "位置参照情報ダウンロードサービス")


# How to use



docker run --rm -v $PWD:/data -t manabu/isjcsv2geojson:0.3.0 32000-13.0a.zip  > 32000-13.0a.json
