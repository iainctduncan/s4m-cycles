<CsoundSynthesizer>
<CsOptions>
</CsOptions>
<CsInstruments>
sr = 44100
ksmps = 64 
nchnls = 1
0dbfs  = 1

; my pitch tracking instruments
; each instr is an alwyas on that sends out rms and frq values every ksmp
; they each use different tracking methods

; plltrack
; this one seems to give me frqs all over the place with a horn like sound
instr 1
  a_in  in
  kfdbk = p4
  krms rms a_in
  krms port krms, 0.01
  chnset krms, "amp"

  ;apitch, aloc plltrack a_in, kfdbk
  ;kcps = k(apitch)
  ;chnset kcps, "frq"
endin

; ptrack
;https://csound.com/manual/opcodes/ptrack/

instr 2
  ihop  init 1024  ; try 128 to 1024 (powers of two)
  ain   in
  kcps, kamp ptrack ain, ihop ; pitch track with different hopsizes
  kcps  port kcps, 0.01     ; smooth freq
  kamp  port kamp, 0.01     ; smooth amp
  
  chnset kcps, "frq"
  
  ; drive an oscillator
  ;asig  poscil ampdb(kamp)*0dbfs, kcps, 1
  ;      outs  asig, asig

endin


</CsInstruments>
<CsScore>
i 1 0 100000   
i 2 0 100000   

e
</CsScore>
</CsoundSynthesizer>

