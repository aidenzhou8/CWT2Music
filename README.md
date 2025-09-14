# CWT2Music (Work in Progress)

The goal of this project is to encode and decode audio files as pictures, taking advantage of the fact that the content of a signal can be preserved — after applying the continuous wavelet transform (CWT) — in its power and phase spectra. 
By concatenating the spectra and mixing its pixels using a privately kept rule, one obtains an encoded, visual representation of the audio file. 
Then, the decoder reverses that procedure and restores pictures of the spectra, which are converted to matrices. 
Lastly, the inverse CWT returns an estimate of the original audio. Due to the data lost in repeatedly switching modalities, obtaining a usable final result is a WIP. ```bach_demo.m``` provides a first prototype and proof-of-concept.

<img width="500" height="478" alt="Phase" src="https://github.com/user-attachments/assets/ea05a4bb-a6e6-4aa3-bdfc-0aac8bc12aee" />
<img width="500" height="838" alt="Signals" src="https://github.com/user-attachments/assets/471e330b-534a-490b-9f6c-c30d13a142a0" />
**Left:** The original audio encoded as a phase spectrum. 
**Right:** A comparison of the original and reconstructed signals. 
