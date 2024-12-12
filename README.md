# connect-go-sample

connect-go を動かすリポジトリ

https://connectrpc.com/docs/go/getting-started

## コマンド

### image build

- `docker compose build`

### buf generate

- `docker compose run --rm app sh`
- `cd ./proto && buf lint && buf generate`

### 起動

- `docker compose up`

## テスト用スクリプト

```sh
curl -H "Content-Type: application/json" \
-d '{"name": "Jane"}' \
-w '\n' -D - \
http://localhost:8080/greet.v1.GreetService/Greet
```