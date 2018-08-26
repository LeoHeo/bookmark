## Race Condition

Multithread 환경에서 공유된 자원에 접근하는데 thread들이 동시에 공유된 자원을 바꿀려고 하기 때문에 원하는 결과가 제대로 안 나오는 경우
Ex) 1개의 은행 계좌를 가지고 두 명의 사람이 동시에 입 출금을 진행하는 경우

멀티쓰레드 환경에서 공유되는 num

```
int num = 0;

1) thread1 -> num += 1을 할려는 순간
2) thread2도 동시에 num에 접근 -> num += 3
3) thread1
   expect: num = 1
   actual: num = 4
```

위에 같이 동시에 num에 접근하기 때문에 thread1이 예상한 결과는 num = 1인데 num = 4가 된다
