<CsoundSynthesizer>
<CsOptions>
</CsOptions>
; ==============================================
<CsInstruments>

sr	=	44100
ksmps	=	8
nchnls	=	8
0dbfs	=	1

ga1 init 0
ga2 init 0
ga3 init 0
ga4 init 0
ga5 init 0
ga6 init 0
ga7 init 0
ga8 init 0

; just makes linear ramps and sends them
instr 1	
  ga1   line p4, p3, p5
endin

instr 2	
  ga2   line p4, p3, p5
endin

instr 3	
  ga3   line p4, p3, p5
endin

instr 4	
  ga4   line p4, p3, p5
endin

instr 5	
  ga5   line p4, p3, p5
endin

instr 6	
  ga6   line p4, p3, p5
endin

instr 7	
  ga7   line p4, p3, p5
endin

instr 8	
  ga8   line p4, p3, p5
endin


instr 9
  outo  ga1, ga2, ga3, ga4, ga5, ga6, ga7, ga8 
endin


</CsInstruments>
; ==============================================
<CsScore>

i 9 0 100000

</CsScore>
</CsoundSynthesizer>

