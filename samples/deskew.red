Red [
	Title: "deskew an image"
	File: %deskew.red
	Tabs: 4
	Author: "Koba-yu"
]

#include %../libs/lepapi.red

pix: read-pix to-local-file %./images/skewed-image.jpg
pix: deskew pix
write-jpeg to-local-file %./images/deskewed-image.jpg pix