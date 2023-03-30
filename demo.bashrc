function gpt() {
  local prompt="$1"
  local command="$2"
  local command_output="$(eval "$command")"
  local message="$(echo "$prompt: $command_output" | tr -d '\n' | sed 's/\r/\\r/g' | tr -d '\f')"
  local url="https://api.openai.com/v1/chat/completions"
  local model="gpt-3.5-turbo"
  local body="{\"model\":\"$model\", \"messages\":[{\"role\": \"user\", \"content\": \"$message\"}], \"temperature\": 0.7}"
  local headers="Content-Type: application/json"
  local auth="Authorization: Bearer ${GPT_API_KEY}"
  #body > body.json
  curl -s -H "$headers" -H "$auth" -d "$body" "$url" \
    | jq -r '.choices[0].message.content'
}

alias q="gpt"