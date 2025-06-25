curl -X POST http://localhost:4000/v1/chat/completions -H "Content-Type: application/json" -d '{
    "model": "qwen3-30b-moe-ollama",
    "messages": [
        {
            "role": "user",
            "content": "Hello!"
        }
    ]
}' -H "Authorization: Bearer sk-1234"
