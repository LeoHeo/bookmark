## 폴더를 만들고 바로 이동

```bash
function mkcd() {
    mkdir -p "$*" && cd "$_"
}

$ mkcd foo
```


## 내 ip 보기
```bash
function myip() {
  ifconfig | grep "inet " | grep -Fv 127.0.0.1 | awk '{print $2}'
}

$ myip
```

## gitignore 쉽게 만들기

```bash
function gi() {
  curl -L -s https://www.gitignore.io/api/$@
}

$ gi intellij > .gitignore
```

