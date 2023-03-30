Add the function to your bash.bashrc

q "suggest a dish from the following $(cat menu.csv) and tell me its price"

q "can you read this $(pdftotext cv.pdf - | cat) and write a summary" > summary.txt