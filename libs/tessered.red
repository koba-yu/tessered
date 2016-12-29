Red [
    Title: "tessered"
    File: %tessered.red
    Author: Koba-yu
]

#include %tesseract-api.red

tessered!: object [

    api: tesseract-api

    settings: context [
        tessdata: %./tessdata
        lang: 'eng
    ]

    ocr-image: function [
        filepath [file! string!]
        return: [string!]
    ] [
        handle: api/create
        ini-code: api/init handle to-local-file settings/tessdata to string! settings/lang
                    
        unless ini-code = 0 [
            throw rejoin ["api initialization failed. result code:" ini-code]
        ]

        pix: api/read-image to-local-file filepath        
        api/set-image handle pix
        
        text: api/get-utf8-text handle        

        api/dispose handle
        api/dispose-pix pix
        text
    ]

    to-jpeg: function [
        read-file [file! string!]
        destination [file! string!]
        return: [integer!]
    ] [
        handle: api/create
        ini-code: api/init handle to-local-file settings/tessdata to string! settings/lang
                    
        unless ini-code = 0 [
            throw rejoin ["api initialization failed. result code:" ini-code]
        ]

        pix: api/read-image to-local-file read-file
        ret: api/write-jpeg to-local-file destination pix
        api/dispose handle
        api/dispose-pix pix
        ret
    ]
]