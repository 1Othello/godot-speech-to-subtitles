import openai
openai.api_key = "OPENAI_API_KEY" # Replace with your API key.
def get_captions():
    audio_file = open("PATH_TO_AUDIO_FILE", "rb") # Replace PATH_TO_AUDIO_FILE with your audio file containing your character's speech.
    transcript = openai.Audio.transcribe("whisper-1", audio_file, response_format="srt", language="en")
    with open('raw_captions.txt', 'w') as f:
        f.write(transcript)
get_captions()
