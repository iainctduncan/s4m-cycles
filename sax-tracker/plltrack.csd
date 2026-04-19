<CsoundSynthesizer>
<CsOptions>
; Select audio/midi flags here according to platform
; -odac    ;;;realtime audio out
;-iadc    ;;;uncomment -iadc if realtime audio input is needed too
; For Non-realtime ouput leave only the line below:
; -o plltrack.wav -W ;;; for file output any platform
</CsOptions>
<CsInstruments>

sr = 44100
ksmps = 32 
nchnls = 1
0dbfs  = 1

instr 1

  kd = p4
  ;a1 diskin2 "fox.wav", 1,0,1

  a1  in
  apitch, aloc plltrack a1, kd
  kcps = k(apitch)
  chnset kcps, "pitch"
  
  krms rms a1
  krms port krms, 0.01
  chnset krms, "amp"
  asig buzz krms, apitch, 10, 1
  out  asig * 2

endin


</CsInstruments>
<CsScore>
f1 0 65536 10 1 ;sine wave

i 1 0 1000 0.1
;i 1 7 6 0.3     ;more feedback

e
</CsScore>
</CsoundSynthesizer>

