# Godot Speech To Subtitles

Godot Speech To Subtitles (GSS) works as a Godot Singleton and Transcription Guide that helps you create readable subtitles for when your in-game character speaks.

GSS creates an Animation for the [Label](https://docs.godotengine.org/en/stable/classes/class_label.html) and RichTextLabel nodes object inside of Godot using a provided text file (.txt) which is formatted like a subrip file (.srt).

## Things I Recommend

- Godot Engine 4 (or above)
- Python 3.7+ and OpenAI (Optional: not needed if you already have or will make an SRT file.)

## How To Use

Download or copy and paste the captions.gd file into your project.
Create a Singleton for this script.

![Screenshot_88](https://github.com/1Othello/godot-speech-to-subtitles/assets/132980114/750c3696-43f4-4830-a6c0-b4c63d6d5b9d)

(This allows you to use it from anywhere in a script.)

Create a seperate script inside a scene with a Label or RichTextLabel.

Simple use:

```python
var data = {"Name": "my_subtitles", ""}

```

## Creating an SRT file (Tutorial)

(If you already have an SRT file then please convert it into a .txt file and scroll passed this section.)

An SRT file (also known as a SubRip Subtitle) is a type of file which is commonly used when creating captions for films and videos.

These files are similar to .txt files except they are formatted in a way that allows a program to read and know what's being said by someone and at what time.

Below is an image of what the inside of a .srt file looks like.
![stgz](https://github.com/1Othello/godot-speech-to-subtitles/assets/132980114/f541d6b6-a7c1-4d8f-aa97-2a4282177cde)

As you will be converting this file type into a .txt file you can just create a text file and structure it like above. (This takes a good while so I don't recommend it.)

Alternatively there are websites such as happyscribe and go-transcribe that will create a SRT file from any audio containin speech. (They may charge for this service.)

(It doesn't matter how you get it done, just make sure you have a .txt file in the same format as a .srt file.)

The method I'm about to describe uses OpenAI is Whisper along with Python. (You will need an OpenAI API key for this. [See here](https://www.howtogeek.com/885918/how-to-get-an-openai-api-key/#:~:text=How%20to%20Get%20an%20OpenAI%20API%20Key%201,Secret%20Key%22%20to%20generate%20a%20new%20API%20key.)

After you have your OpenAI API key make sure you have the openai library installed. (You may also need to install pytorch and ffmpeg if you get an error.)
```bash
pip install openai
```

Upon having installed everything simply create a python file with the following contents. (Also make sure you know the path to the audio file you want to transcribe.)

```python
import openai
openai.api_key = "OPENAI_API_KEY" # Replace with your API key.
def get_captions():
    audio_file = open("PATH_TO_AUDIO_FILE", "rb") # Replace PATH_TO_AUDIO_FILE with your audio file containing your character's speech.
    transcript = openai.Audio.transcribe("whisper-1", audio_file, response_format="srt", language="en")
    with open('raw_captions.txt', 'w') as f:
        f.write(transcript)
get_captions()
```

Run this simple script having made sure you replaced "OPENAI_API_KEY" and "PATH_TO_AUDIO_FILE" with the value that applies to you.

You should find a .txt file called "raw_captions" in the folder you ran the script. This is what you will be using to create the subtitles for your characters.


## Contributing

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)
