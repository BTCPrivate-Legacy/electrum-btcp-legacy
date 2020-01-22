FROM ubuntu:18.04

ENV VERSION 1.1.1

RUN set -x \
    && apt-get update \
    && apt-get install -y curl \
    && curl -sL https://github.com/BTCPrivate/electrum-btcp/archive/P!${VERSION}.tar.gz |tar xvz \
    && mv electrum-btcp-P-${VERSION} electrum-btcp \
    && cd electrum-btcp \
    && apt-get install -y $(grep -vE "^\s*#" packages.txt  | tr "\n" " ") \
    && pip3 install -r requirements.txt \
    && pip3 install pyblake2 \
    && protoc --proto_path=lib/ --python_out=lib/ lib/paymentrequest.proto \
    && pyrcc5 icons.qrc -o gui/qt/icons_rc.py \
    && ./contrib/make_locale

WORKDIR /electrum-btcp

ENV DISPLAY :0

CMD ./electrum-btcp
