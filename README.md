# 使い方

## イメージファイルの作成

`git clone`したディレクトリ(Dockerfileが存在するディレクトリ)に移動して、以下を実行します。

```
$ docker build -t ubuntu_with_latex . --no-cache=true
```

## コンテナの起動(Mac)

```
$ docker run --privileged -d --name latex_server -v `pwd`/work:/mnt/work/ -it ubuntu_with_latex
```

## ユーザーのスタイルファイル

今回は、 `/mnt/work/input` にスタイルファイルを置いたので

```
# export TEXINPUTS=::/mnt/work/input
```

とする。

## Latexの使い方

# platex hoge.tex
