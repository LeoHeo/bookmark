## Two-factor가 적용된 github repo https로 clone 하는 방법
- two-factor가 적용되어있으면 https로 clone을 할때 주의해야할 점이 있다.

```shell
$ git clone https://github.com/LeoHeo/collect.git
username: {github username}
password: {계정 비밀번호}
fatal: Authentication failed for 'https://github.com/username/repository.git/'
```

분명 제대로 입력했는데 위와같이 나오는 경우가 있다.
two-factor가 적용된 계정일 경우 https로 clone을 할 경우
password가 아니라 token을 발급 받아서 password로 써야한다.
[access_token](https://help.github.com/articles/https-cloning-errors/#provide-an-access-token)에 해당 내용이 나온다.


```shell
$ git clone https://github.com/LeoHeo/collect.git
username: {github username}
password: {token}
```
