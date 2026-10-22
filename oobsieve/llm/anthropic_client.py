from __future__ import annotations
import os
from anthropic import Anthropic

class AnthropicClient:
    def __init__(self, model: str = "claude-fable-5", max_tokens: int = 4096):
        self.model = model
        self.max_tokens = max_tokens
        self._client = Anthropic(api_key=os.environ["ANTHROPIC_API_KEY"])

    def complete(self, system: str, user: str) -> str:
        msg = self._client.messages.create(
            model=self.model,
            max_tokens=self.max_tokens,
            system=system,
            messages=[{"role": "user", "content": user}],
        )
        return "".join(b.text for b in msg.content if getattr(b, "type", "") == "text")
