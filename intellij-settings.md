## Intellij 느려질때 메모리 사이즈 늘리

## 아래경로로 이동해서 vmoptions 오픈
```bash
$ cd /Applications/IntelliJ\ IDEA.app/Contents/bin
$ vi idea.vmoptions
```

## 메모리 조정
- Xms(최소 메모리)
- Xmx(최대 메모리)

```
-Xms2048m
-Xmx4096m
```
