## k8s auto complete
- k8s에서 auto complete이 기본적으로 안된다.
- `zshrc`에 autocomplete을 할 수 있게 넣어준다.

```
$ echo "if [ $commands[kubectl] ]; then source <(kubectl completion zsh); fi" >> ~/.zshrc # add autocomplete permanently to your zsh shell
```
