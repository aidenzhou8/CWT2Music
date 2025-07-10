## Work in Progress

The goal of this project is to encode and decode audio files as pictures, taking advantage of the fact that the content of a signal can be preserved — after applying the continuous wavelet transform (CWT) — in its power and phase spectra. 
By concatenating the spectra and mixing its pixels using a privately kept rule, one obtains an encoded, visual representation of the audio file. 
Then, the decoder reverses that procedure and restores pictures of the spectra, which are then converted to matrices. 
Lastly, the inverse CWT returns an approximate of the original audio. 

Due to the data lost in repeatedly switching modalities, obtaining a usable final result is a WIP. ```bach_demo.m``` provides a first prototype and proof-of-concept.
