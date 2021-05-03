# alias
alias vi='nvim'
alias vim='nvim'
alias gcb='git checkout -b'
alias gcm='git commit -m'
alias gp='git push'

# PATH
set -x PATH /Users/murayama-daiki/.gem/ruby/2.6.0/bin:/Users/murayama-daiki/Library/Python/3.7/bin/:/Users/murayama-daiki/Library/Python/3.8/bin/ $PATH
set -x PATH /usr/local/go/bin $PATH
set -x PATH (go env GOPATH)/bin $PATH
set -x PATH $HOME/.anyenv/bin $PATH
status --is-interactive; and source (anyenv init -|psub)

#AWS
export AWS_PROFILE=saml
export AWS_DEFAULT_REGION=ap-northeast-1

