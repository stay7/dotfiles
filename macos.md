
**영문키 반복 허용**

`defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false`

**shift + space 로 한영키 변경**

https://gist.github.com/dongminkim/5856427?permalink_comment_id=4255371#gistcomment-4255371
```
defaults export com.apple.symbolichotkeys - | plutil -convert json -o - - |
  jq '.AppleSymbolicHotKeys["61"].value.parameters[2] = 131072 | .AppleSymbolicHotKeys["60"].value.parameters[2] = 655360' |
  plutil -convert xml1 -o - - | defaults import com.apple.symbolichotkeys -
# 이후 컴퓨터 재로그인
```
