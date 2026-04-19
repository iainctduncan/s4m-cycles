<CsoundSynthesizer>
<CsOptions>
</CsOptions>
<CsInstruments>
sr = 44100
ksmps = 16 
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
  kdb = 50.0 + dbfsamp(krms)
  ; need to clamp or gets to negative infinity
  kdb = kdb < 0 ? 0 : kdb      
  chnset krms, "amp"
  chnset kdb, "dbs"
endin

; works best so far on soprano, better than live's too
; NB: when there is no sound, the variable is stuck at top freq
instr 2
  ain   in
  ;                    in, mincps, maxcps
  kcps, krms pitchamdf ain, 200, 1500 
  ;knotenum = cpsmidi(kcps)
  chnset kcps, "frq"

endin

; pitch opcode, useless on soprano
;instr 2
;  ain   in
;  koct, kamp pitch ain, 0.002, 6, 10, 0
;  kcps = cpsoct(koct) 
;  chnset kcps, "frq"
;endin

; plltrack - works on lower octave fails completely on higher
;instr 2
;  ain   in
;  apitch, aloc plltrack ain, 0.1  ; last num is feedback, 0.1 to 0.3?
;  kcps = k(apitch) 
;  chnset kcps, "frq"
;endin

; ptrack - doesn't not working well with soprano at all
;instr 2
;  ihop  init 256  ; try 128 to 1024 (powers of two)
;  ain   in
;  kcps, kamp ptrack ain, ihop ; pitch track with different hopsizes
;  kcps  port kcps, 0.01     ; smooth freq
;  kamp  port kamp, 0.01     ; smooth amp
;  chnset kcps, "frq"
;endin


</CsInstruments>
<CsScore>
i 1 0 100000   
i 2 0 100000   

e
</CsScore>
</CsoundSynthesizer>

