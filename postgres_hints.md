## docker postgres 유의사항

## 접속
-  `ip`로 접속해야 한다.
- `jdbc:postgresql://192.168.0.181:5432/confluence`

## pg_nba.conf

```
TYPE DATABASE   USER     ADDRESS     METHOD
host   all      all      ::1/128.     md5
```

- method가 `md5` 이면 비번 입력해야함
- method가 `trust`이면 비번 입력안해도 됨
