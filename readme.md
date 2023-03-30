Copy paste the function to your bash.bashrc, and use the command in a bash shell

Examples:

Answers rhetorical questions:
q "why hasn't regex been banned yet?"

Reads a CSV:
q "suggest a dish from the following $(cat menu.csv) and tell me its price"

Reads a PDF and stores its summary in a txt:
q "can you read this $(pdftotext mybiography.pdf - | cat) and write a summary" > summary.txt
