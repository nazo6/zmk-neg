# keyball zmk

# ビルド

## 環境

ビルド環境はLinuxを想定しています。他の環境で動くかはわかりません。

また、依存関係として

- git
- uv
- cargo-make

を使用しています。事前にインストールしておいてください。

## ビルド手順

1. zephyr sdkをインストール

[この](https://docs.zephyrproject.org/3.5.0/develop/getting_started/index.html#install-zephyr-sdk)
手順に従い、zephyr sdkをインストールしてください。

2. zmkをセットアップ

このリポジトリにはzmkを自動でセットアップするためのスクリプトが含まれています。リポジトリのルートで

```bash
cargo make zmk-init
```

を実行してください。

3. ビルド

There are script to automatically setup

## Credits

- paw3395 driver: https://github.com/ALpotato/zmk
