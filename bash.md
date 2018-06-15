## 정규식에 해당하는 모든 파일 삭제
- `ls | grep -P "^2018(.*).png" | xargs -d"\n" rm`
