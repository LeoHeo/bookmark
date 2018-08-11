# 2개의 github 계정을 사용할때

- {username} 은 넣고싶은 variable이다.


## ssh 키를 만든다. 

```
$ ssh-keygen -t rsa -C "username@gmail.com" # 새롭게 등록할 계정
Generating public/private rsa key pair.
Enter file in which to save the key (/Users/{username}/.ssh/id_rsa): /Users/{username}/.ssh/id_rsa_{username} # 기존경로에 덮어쓰지 않게 주의한다.
```

## [github에서 ssh키 등록](https://help.github.com/articles/adding-a-new-ssh-key-to-your-github-account/)하고ssh config를 만든다.

```
$ touch ~/.ssh/config
$ vi ~/.ssh/config
```

`config` 파일에 아래 내용을 붙여넣는다.

```
# Default account
Host github.com
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_rsa
# another account
Host github.com-{username}
    HostName github.com
    User git
    IdentityFile ~/.ssh/id_rsa_{username}
```

## git clone를 할때 주소에 username을 추가한다.

- 기본적으로 clone 할때는 git@github.com:LeoHeo/bookmark.git 한다.
- 2번째 계정으로 clone을 할때는 아래같이 해줘야 한다.
- git@`github.com-{username}`:LeoHeo/bookmark.git

```
$ git clone git@github.com-{username}:LeoHeo/bookmark.git
```
