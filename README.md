# UECDnsSetting
UECWireless or AIAWirelessに接続しているときにDNSと環境変数を設定するbatファイル

# 概要
UECWireless及びAIA-Wirelessに接続しているときにdns.batを実行するとDNS及び環境変数に以下の値を設定します

## DNS
130.153.8.60

130.153.8.40

## 環境変数
http_proxy=proxy.uec.ac.jp:8080

https_proxy=proxy.uec.ac.jp:8080

## プロキシ設定
設定＞ネットワークとインターネット＞プロキシ＞手動プロキシセットアップのアドレスとポートを以下の値に設定
アドレス：http://proxy.uec.ac.jp
ポート：8080

# 使い方
タスクスケジューラでうまいことやってください

※環境変数をいじるので管理者権限が必要です
