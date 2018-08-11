## 홀로 실행 가능한 JAR 만들기

- spring boot로 `./graldew bootJar`를 해서 jar 파일을 만들게 되었을때 실행을 아래처럼 한다.

```
$ java -jar build/libs/demo-0.0.1-SNAPSHOT.jar
```

- 근데 이렇게 하지 않고 [executable jar 만들기](https://docs.spring.io/spring-boot/docs/current/gradle-plugin/reference/html/#packaging-executable-configuring-launch-script) 를 참고해서
build.gradle에 아래와 같이 넣어주면 홀로 실행 가능한 jar를 만들 수 있다.


```groovy
bootJar {
  launchScript()
}
```

- 이렇게 추가를 하고 jar를 만들면 아래처럼 실행이 가능하다.

```
$ build/libs/demo-0.0.1-SNAPSHOT.jar
```


이 방법은 문서에 아래와 같이 나와 있다.
> On Unix-like platforms, this launch script allows the archive to be run directly like any other executable or to be installed as a service.

