# Mini Judgment System（ミニジャッジシステム）

同一ディレクトリ内の `input.txt`, `output.txt`, `main.py` , `judge.sh` を用いて `judge.sh` を実行すると、`main.py` を `input.txt` を標準入力として実行し、出力を`output.txt`と比較して **AC / WA / RE** を表示します。

---

## 仕様

同じディレクトリ内に以下の3ファイルが存在することを前提とします。

- `input.txt`：テストケースの入力データ
- `output.txt`：期待される出力データ
- `main.py`：標準入力を受け取り、標準出力を返すPythonプログラム

判定は以下の通りです。

- **AC**：`main.py` の実行が成功し、出力が `output.txt` と完全一致した場合
- **WA**：`main.py` の実行が成功したが、出力が `output.txt` と完全一致しなかった場合
- **RE**：`main.py` 実行時にエラーが起きた場合（SyntaxError/例外など）

---

## 使い方

### 1) 実行権限を付与（初回のみ）

```sh
chmod +x judge.sh

### ACの確認
python3 main.py < input.txt > output.txt
./judge.sh
