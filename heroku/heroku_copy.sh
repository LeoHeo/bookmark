set -e

sourceApp="$1"
targetApp="$2"
config=""

while read line; do
  config="$config $line" 
done  < <(heroku config --app "$sourceApp" --shell )

eval "heroku config:set $config --app $targetApp"
