# tessered - tesseract-ocr Red binding
[tesseract-ocr](https://github.com/tesseract-ocr/tesseract) for [Red programming language](https://github.com/red/red)

So far, this program is a personal studying and would have many changes in the near future.  
But any advices or suggestions are welcomed.

To execute the sample code, install tesseract, following this introduction.
https://github.com/tesseract-ocr/tesseract

You need to compile to execute the sample code.  
Put the compiled files to tesseract dll folder.  
Also you have to specify the "tessdata" folder, the language training data folder , in the code.  
See the code excample comments.

## Files
tesseract-api.red
: import and routine definition for tesseract API

tessered.red
: object for ocr

sample.exe
: a sample code.