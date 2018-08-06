## Jar 파일에서 resources 파일 접근할때
- 로컬에서 하면 File이나 InputStream이나 별차이가 없다.
- 근데 `jar`로 말고나서는 차이가 난다.

```java
File test = new File(Test.class.getResource("/test.json").getFile()); // 못 불러옴
InputStream is = Test.class.getResourceAsStream("/test.json");        // 불러옴
```
