<CsoundSynthesizer>
<CsOptions>
</CsOptions>
<CsInstruments>
; my pitch tracking instrument
sr = 44100
ksmps = 64 
nchnls = 1
0dbfs  = 1



; send out a message only if amp above threshold
instr 1
  prints "instr 1 starting\n"
  k_onset_threshold chnget "onset" 
  ;kd = p4
  a_in  in
  
  ;apitch, aloc plltrack ain, kd
  ; todo: how to track this properly, should be average??
  ;kcps = k(apitch)
  ;chnset kcps, "kcps"
  
  ; get the rms value of a ksmp
  krms rms a_in
  krms port krms, 0.01
  ;chnset krms, "amp"
  
  ;if krms > krms_threshold && krms - krms_last >  krms_threshold then
  if krms > krms_threshold then 
    ;printks "rms over threshold, updating frq\n"
    schedule(2, 0, 0, krms) 
  endif

endin

; scheduled instr
instr 2
  prints "instr 2: %f\n", p4
  ;outvalue "frqout", p4
endin

</CsInstruments>
<CsScore>
f1 0 65536 10 1 ;sine wave

i 1 0 1000 0.1
;i 1 7 6 0.3     ;more feedback

e
</CsScore>
</CsoundSynthesizer>

