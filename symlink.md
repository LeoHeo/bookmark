## Mac symlink Change

- 심볼릭 링크를 바꿔야 할 일이 있다면 아래 커맨드를 입력하자.

```shell
# ln -f -s [바꾸는 파일 경로] [원래 symlink가 있는 경로]
ln -f -s ../Cellar/terraform/0.11.11/terraform terraform
```