# Godot Speech To Subtitles

Godot Speech To Subtitles (GSS) works as a Godot Singleton and Transcription Guide that helps you create readable subtitles for when your in-game character speaks.

## Things I Recommend

- Godot Engine 4 (or above)
- Python (Optional: not needed if you already have or will make an SRT file.)
- Whisper (Optional: not needed if you already have or will make an SRT file.)

```bash
pip install foobar
```

## Creating an SRT file (Tutorial)

(If you already have an SRT file then please convert it into a .txt file and scroll passed this section.)

An SRT file (also known as a SubRip Subtitle) is a type of file which is commonly used when creating captions for films and videos.

These files are similar to .txt files except they are formatted in a way that allows a program to read and know what's being said by someone and at what time.

Below is an image of what the inside of a .srt file looks like.
![stgz](https://github.com/1Othello/godot-speech-to-subtitles/assets/132980114/f541d6b6-a7c1-4d8f-aa97-2a4282177cde)

```python
import foobar

# returns 'words'
foobar.pluralize('word')

# returns 'geese'
foobar.pluralize('goose')

# returns 'phenomenon'
foobar.singularize('phenomena')
```

## Contributing

Pull requests are welcome. For major changes, please open an issue first
to discuss what you would like to change.

Please make sure to update tests as appropriate.

## License

[MIT](https://choosealicense.com/licenses/mit/)
