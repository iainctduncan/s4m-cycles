<CsoundSynthesizer>
<CsOptions>
</CsOptions>
<CsInstruments>
; my pitch tracking instrument
sr = 44100
ksmps = 64 
nchnls = 1
0dbfs  = 1


; get the rms value of a ksmp and send out
instr 1
  ihold
  a_in  in
  krms rms a_in
  krms port krms, 0.01
  chnset krms, "amp"
endin

instr 2
  ihold
  a_in in
  kfdbk = p4
  apitch, aloc plltrack a_in, kfdbk
  kcps = k(apitch)
  chnset kcps, "frq"
endin

</CsInstruments>
<CsScore>
i 1 0 100000   
i 2 0 100000 0.1

e
</CsScore>
</CsoundSynthesizer>

