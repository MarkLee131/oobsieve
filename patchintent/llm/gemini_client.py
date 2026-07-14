from __future__ import annotations
import os
from google import genai
from google.genai import types


class GeminiClient:
    """LLMClient backed by Google Gemini (google-genai SDK).

    Reads the API key from GEMINI_API_KEY (falling back to GOOGLE_API_KEY).
    """

    def __init__(self, model: str = "gemini-2.5-pro", max_output_tokens: int = 4096):
        self.model = model
        self.max_output_tokens = max_output_tokens
        api_key = os.environ.get("GEMINI_API_KEY") or os.environ["GOOGLE_API_KEY"]
        self._client = genai.Client(api_key=api_key)

    def complete(self, system: str, user: str) -> str:
        resp = self._client.models.generate_content(
            model=self.model,
            contents=user,
            config=types.GenerateContentConfig(
                system_instruction=system,
                max_output_tokens=self.max_output_tokens,
            ),
        )
        return resp.text or ""
