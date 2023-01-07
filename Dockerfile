# 開発環境用

FROM python:3.9-slim

# パッケージのインストール
RUN apt-get update -y && \
    apt-get upgrade -y && \
    apt-get install git vim curl sqlite3 libsqlite3 -y && \
    pip3 install pipenv

# PYTHONPATHにappディレクトリを追加
ENV PYTHONPATH "${PYTHONPATH}:/app/src"
