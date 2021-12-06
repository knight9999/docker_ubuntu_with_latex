# 使い方

## イメージファイルの作成

`git clone`したディレクトリ(Dockerfileが存在するディレクトリ)に移動して、以下を実行します。

```
$ docker build -t latex . --no-cache=true
```

## コンテナの起動(Mac)

```
$ docker run --privileged -d --name latex -v `pwd`/work:/work/ -it latex
```

## ユーザーのスタイルファイル

今回は、 `/work/input` にスタイルファイルを置いたので

```
# export TEXINPUTS=::/work/input
```

とする。

## Latexの使い方

```
# platex sample.tex
```

pdf化

```
# dvipdf sample.dvi
```

