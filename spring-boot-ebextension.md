## Spring boot ebextension 포함 시켜야 할때

> 추가해서 빌드만 하면 문제가 없습니다. 하지만, embedded tomcat 을 사용하면서 .jar로 배포하는 경우에는 jar에 저렇게 .ebextenions 폴더를 포함시킬 수 없기 때문에 따로 배포전에 jar 파일과 함께 .ebextenions 폴더를 하나의 zip 파일로 묶어서 배포해야 제대로 설정파일이 적용됩니다.

> zip -r application.zip application.jar .ebextensions


## Reference
- [Elastic Beanstalk Configuration files(.ebextensions)](http://woowabros.github.io/woowabros/2017/08/07/ebextension.html)
