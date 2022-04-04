#!/usr/bin/env bash
set -Ceu
#---------------------------------------------------------------------------
# pugソースからHTMLファイルを出力する。
# CreatedAt: 2022-04-05
#---------------------------------------------------------------------------
Run() {
	THIS="$(realpath "${BASH_SOURCE:-0}")"; HERE="$(dirname "$THIS")"; PARENT="$(dirname "$HERE")"; THIS_NAME="$(basename "$THIS")"; APP_ROOT="$PARENT";
	cd "$HERE"
	pug some.pug -P 
	pug var.pug -PO '{"doctype":"html", "title": "タイトル2", "headline": "見出し2", "content": "本文2。"}'
	pug var.pug -PO var.json
}
Run "$@"
