## IAM 계정에 특정 S3 Bucket에 관한 모든 권한주기
- IAM 계정에 Polices를 들어간다.
- `Create Policy`를 한다.
- `JSON`을 클릭해서 아래 내용을 붙여넣기 한다.

```json
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Sid": "VisualEditor1",
            "Effect": "Allow",
            "Action": "s3:*",
            "Resource": [
                "arn:aws:s3:::[bucket_name]/*",
                "arn:aws:s3:::[bucket_name]"
            ]
        }
    ]
}
```
