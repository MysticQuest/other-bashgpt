function gpt() {
  local prompt="$1"
  local url="https://api.openai.com/v1/chat/completions"
  local model="gpt-3.5-turbo"
  local body="{\"model\":\"$model\", \"messages\":[{\"role\": \"user\", \"content\": \"$prompt\"}], \"temperature\":"0.7"}"
  local headers="Content-Type: application/json"
  local auth="Authorization: Bearer $OPENAI_API_KEY"

  curl -s -H "$headers" -H "$auth" -d "$body" "$url" \
    | jq -r '.choices[0].message.content'
}

alias q="gpt"