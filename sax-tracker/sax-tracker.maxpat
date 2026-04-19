{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 1,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ -640.0, -977.0, 1081.0, 840.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 129.0, 59.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 129.0, 106.0, 52.0, 22.0 ],
                    "text": "adc~ 45"
                }
            },
            {
                "box": {
                    "id": "obj-107",
                    "maxclass": "gswitch2",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 589.2000074386597, 183.80000257492065, 30.4000004529953, 28.800000429153442 ]
                }
            },
            {
                "box": {
                    "id": "obj-108",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 589.2000074386597, 244.0, 61.0, 22.0 ],
                    "text": "s #0_s4m"
                }
            },
            {
                "box": {
                    "id": "obj-109",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 589.2000074386597, 219.1999996304512, 61.0, 22.0 ],
                    "text": "(frq-in $1)"
                }
            },
            {
                "box": {
                    "id": "obj-106",
                    "int": 1,
                    "maxclass": "gswitch2",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 299.60000109672546, 444.00000661611557, 30.4000004529953, 28.800000429153442 ]
                }
            },
            {
                "box": {
                    "id": "obj-105",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 900.0000134110451, 195.00000140070915, 29.5, 22.0 ],
                    "text": "60"
                }
            },
            {
                "box": {
                    "id": "obj-103",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "orientation": 1,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 846.7000126838684, 370.5, 75.0, 47.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.gain~",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.gain~",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~"
                }
            },
            {
                "box": {
                    "id": "obj-102",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 926.4000138044357, 438.0, 68.0, 22.0 ],
                    "text": "dac~ 51 52"
                }
            },
            {
                "box": {
                    "id": "obj-101",
                    "maxclass": "gswitch2",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 849.1000127196312, 194.40000289678574, 31.20000046491623, 23.199997007846832 ]
                }
            },
            {
                "box": {
                    "id": "obj-100",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 800.3000119924545, 312.29999965429306, 31.0, 22.0 ],
                    "text": "plug"
                }
            },
            {
                "box": {
                    "autosave": 1,
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "id": "obj-98",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 8,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal", "signal", "", "list", "int", "", "", "" ],
                    "patching_rect": [ 846.7000126838684, 335.5, 92.5, 22.0 ],
                    "save": [ "#N", "vst~", "loaduniqueid", 0, ";" ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_invisible": 1,
                            "parameter_longname": "vst~[1]",
                            "parameter_modmode": 0,
                            "parameter_shortname": "vst~[1]",
                            "parameter_type": 3
                        }
                    },
                    "saved_object_attributes": {
                        "parameter_enable": 1,
                        "parameter_mappable": 0
                    },
                    "snapshot": {
                        "filetype": "C74Snapshot",
                        "version": 2,
                        "minorversion": 0,
                        "name": "snapshotlist",
                        "origin": "vst~",
                        "type": "list",
                        "subtype": "Undefined",
                        "embed": 1,
                        "snapshot": {
                            "pluginname": "Pianoteq 8.vstinfo",
                            "plugindisplayname": "Pianoteq 8",
                            "pluginsavedname": "",
                            "pluginsaveduniqueid": 1349793905,
                            "version": 1,
                            "isbank": 0,
                            "isbase64": 1,
                            "blob": "39241.CMlaKA....fQPMDZ....A.Ec3DG.HPv.....f3TVfLEckkla2EVdfPDHCwVXyMWZiEFa.........jYCPImUKkB..H.VFQET8iI..n....fLvHiMu.yLuHSLW.....UZg41azUVbffiKz3xLuHCLxTCL1DyLAmgxDvBvRtjXQYcy3BMZmQFarEFuXB..zQFcMMQE..vE....NkEHSQWYo41cgkGHDAxPrE1byk1XgwF.....G....zzajElbzQGR....TgVZyABbxU1bkQGHuYlYkI2bfDFHi8VahklakQFHsk1Xo41Yf.WYxMGbkMFcoYWYfbWZzgFHgAxXrE1byk1XgwFHy8VctQlK.....PT...vE....NkEHSQWYo41cgkGHDAxPrE1byk1XgwF.....xQA..bjTUUE...fA....AL.vMQkbqA..TvE.+KfFffTX4QlafzBHS8lagQWXfjlafbDHsElZuI2PvNjdBNCfxjSGfdDGX.4QAIGr.MBI.UyI.0yI.8yI.EjI.QD.CwmI.gjI.wD.C4mI.8TI.A0I.E0I.IUI.M0I.QUfV.jUp.zUQ.JRbTAr.ckAPhjLe.KPWoAnJwwBvBzTH.oRBI.fGcRGvBTRn.zNC.HR87Ar.MxCfNDG..nR+X.n6vQA2vAAPNjQFriMB.KP.P.j2fSM.tCO.LTQDbSOCx.n6vgA2vwCPtiN..5PbH.j2TyCCETO.tiP.LzPHbSPAZDnEwQEPVjPLAXQ.AAnGwADPdzQTApLb.PQbX.Ob7.jxXi.EkD.7nyG.dDPVvSPFHSOAlVQ+vAnCwADPNDQkA3P2b.nxvgB7vQCPJyMGvSMF.ZQbLAjEIjL.JSP.viPBtCnGwgB.VzNH.4QAEHH.djOc.5MbnvPb7.j2bB.ftCGD.4P7PwNvbDr.oBH.tCPF.KP9DAf2ziDvBjPN.3P.cAr.czI.wzI.E0I.UEI.k0N.skfG.TVl.DUn.zSl.jSp.TSf.DSm.TRk.zPk.jNn.jJl.D.lLDTB.JRb..Sbr.jHgDALEUEvND.N.HREIXEf5DGW.oS+..fLkCKf9DGW.4SIACnGwAEPdDP..pRb.AjJcD..9TPB3zOjbzPWnTQCd.nHwg.EwACPhDPBTjPP.6PQ3AfEIjKvNTElLDFnLzFeMjGm.pRb..rCABEPpjMB.HR2v.rCQBJCkh.fxDGU.ISCEArCsBH.pTOF.6PrDAnCwwCGwA..xTP..4PCY.rC0RBPdTQY.6PwX.fCMTHvNDNC.3Q.IBrCwyIC4CJC4iRC8iICEDICMjICQDJCQzCfdDGR.4QKY.rCYDHfBDGE.6PLI.n7vABPBjQMvyMN.6PUMAfG0yCfVDGE.6Pd4.jEIzEvNTYO.5Qb.AfEAD.fdD..bDGG.6PtEAjGIzEvNzclLze+.HOmX.nEwwCPVDTI.3QA4EnCwA..VDPS.4PLMAn8vwDP1iPM.HP.gSOAMHBCYSCfpDGX.oR8L.nBwAA9vQDP5SNFHDLpAnO1L3CvBDIb.pLbf.r.Ei..JjLT.oLn.Ar.kiI.wSD.JSNW.KP9XBPAYBPCYBPGYBPJUBPLcBPOIAfJoSEvBTU.Ljdj.zW.LjXj.TX.LjPl.jS.LDFH.pRbrfObP.jJkE.fJDGH.oOQMfPNQ.r.IC.CAvI.A.E.5CQ.HjQCtBnBwAB9vAAPJjSE3CR0.nPFAgOCEXNJsyAfxDGP.ISJMCnNwAB.xzPG.oSMsFnLwQBPxjVa.nS.o.n9vA.CwwCP5CPVLjPR.HS+vwPCkgO.M3.fNDGL3CG.vDGC.4PKofOHA.SaUCfCUDBLMzB9Hzfh.5PbTPRbr.jC4D.IgkAfBDGH3CGG.IPCgfOAsAfCcDG.MDAvBDOI.nO+zAr.AkH.k0I.0UfX.jWl.TXr.XRrXDr.4UIfNDGB.KPY8.jC0iAfBDGC3CGDnDGI.KPSY.j.Ai.9TC.J8yGvBzSM.3PBw.P8r.r.szA.5yOe.KPGoBPCU.nLwgB.pzNJ.ISC0.r.8CJ.sCAf5DGS.oSHs.r.oyI.gCCf9DGR.4SMkAfL8CAvBTLm.D.a.ZTb7.jQUkA.5TPH.pObHfPbz.jBoz..9DQ..oO7v.fQkDKBUzD9.jfrApObffPb.PTb7.j9zC.Qok.BEzJ.FEQHHTPS3CPCJAn2vgBPdSRB.pOb.vTbz.j9DD.Sc0K.dCQ.3CPT.KPcTBP3bBP+XBPAYBPEYBPKYBPScBPWUBPXkDfS0i.vBTUh.JVbX.r.oj.f5CGFbCGA.IVUYfOGIvMEUAr.wSF.dCPG3SPF.KPoHBP.rAnVwwCPZUTi.6PUXxPY7.nUwQEPVERH.6PczBfX4iKfNEGQ.4TK0AfV8CHvNDHd.XU+f.rCMhICkB..NEPW.ZTbz.rC4h.f5CGF.YT.8fO5.Ar.IB.CESI.5iO..KPy.vPwbBP6fBP+.vPxXBPCAvPzXBPFAvP4XBPJAvP5PBPLYBPM4DPLAvP6LBPJAvP7LAnUwwA.FUOH.YUGQ.r.YD.C8CAf5CGO.oO+LAr.ID.CIzEPdiIO.KP7.vPFMAf9Dj.fNEGQ.4THA.r.cC.CkzF.diHK.KP0.vPKYBP0.vPKQ.fU0CBfFEGQ.YTFk.r.MC.C0TG.NEPH.KPv.vPQQBPs.vPUk.nOwQEP9TS..XT+f.r.kB.CoEJ.cB.C4kI.YB.CM1G.9jPG.KPi.vPqcAn9vg.4vQCvBzG.LzbB.oO+XPN7P.nNwQEP5DQF.KP..vP6UxP+UAfNIzfI.pSbbAjNMjAf1CGI.nOyf.j87yL.5zPJ.JSbDAjLcTO.xDQ2.pSb7.jNQ0afxDGP.ISLkAfN0yR4zCG83CBLADAfpDGS.oRKc.n9vwDP5CN6.nO8LnPfJCGa.oLrrCfJYSgJHCI4.pRbLAjJoSf4.KPhTBPuvCP3XBP7HBP9XBP.YBPCwBPFYBPIYBPLcBPMMBPOcBPQcBPQ0DfJYQMfxDGY.IS2jDr.A0Af1DGY.YS5b.r.4zH.sjI.YjH.xTOD.KP9P.fM8yDfRDGM.KPvH.jD8DIvBDHN.pObb.MbH.fDUjBP5yKEPSKB.KP.vCf9XSBzXifSAJQbP.MbbfObX.jDwzCzPC.9nCS.5yOBPCPePjOAhBnEwgEPVTQ.A5Qbb.fEATCPdzQVAJMb.PQbr.Obn.jE0j.zbCB7bCS.dTP.viOIPSNA5VQ8PAnDwQDPRzSxAJMbrvNb.Aj63y.znBCfVDGT.YQFQ.fDsyI6HTBz3SfiUDO0.5QbDAjGcTN.djQKAZNbvAj4zxEfdDGT.4QBMHV.dzNy.ZKbn.RbTAjsPhAH8RDvBzJO.XNvTAr.ciI.0CJ.AjI.MjI.cTH.hzKA.KPKYBPMoCPOcBPPcBPPQBPM4AfsjBBvBzPe.JRbb.r.ACAflCGD.IRB8PN77.r.APfmAHRg.CnLwAEPxjPmAZQb.AfL4y.PVzQ..XNzHBn1vAEPZiMAtBfEA..PVjDqAJRb7.jHQD..VzNvYyNe.5Qb7.jGYkBfdCGS.HR8D.j2fSf7A3Q9jAnJwwCPpTRAN.nCwgCPNjSH.nR9z.nuvgEP9BMJ.3MvHHGvNjdL.5QbH.fC4CDPdzQJ.6PoYxPaQxPOcxPAcAnEwwCPVjR..6PvPAfG8CCfBCGF.6Ph7.jvfSEvNDGb.3KjHCrCAhICIhICQhICYxI.VTO..6PnnAnHwQCvNjJF.IRGEBrC8RICgSICETFfBDGB.HL+r.rCoj.PBDSG.HR4X.nwvwEPFSN..6PRYxPWgxPccxPlUxPxcxP8QxP+AEnEwQEPVjQO.HP9bVL1LCnxvgCCwwCPJCLBLDQ..XQ7LnWxPxCC4SFfJDGOXBGD.oPzbgInPDr.YyF.ZhMK.KP.cBPEAvPtkBPJAvPOMBPOAvPxXBPTAvPbXBPXAvP.XBPaYBPeUBPicBPpcBP+IEn4vQCPliTD.nPA0.r.UkI.QCJ.APfkATIl.DLl.TNn.jOl.TPl.jQj.TSn.jUl.TWl.jXk.TZl.zeUAXN9n.n6vwCPtiQCAJObDAj7rjL.tCOV.KPQcBPjb.nxvABNwAAPJSWI3DXK.KP.f.f7HjLxTzf3.pLbj.jxrUM.JCRBFAnOwQDP9jRr.nS7r.nQwgDPF0SPA3SBABnBwgAHwABPJjXGfjTU.XTA8CR.MnKfhDGN.IRP0BfHgTfqA5Pb7.jCgTD.JDOk.ZQb7.jEEkF.NzOLAJOb3.UbP.j77zATYFA.VTPBlGU8..nXwwCPhUSAl.fXIDCfFEGO.YTLInF.FUOh.JUbbAjTQTGvBjIl.zMi.DPb.pSbH.fT8yAvBzQH.oSM8Ar.4TC.xiNd.KPTcBPaAvPQTBPmAvPTbBP+8.fNA..f5DGg4ze..6PWzAnQwwDPFUSa.6PZTBPe0AnNAfBvBTS.LTGl.DQE.pRb3.jJ0TDvBjP.LjHF.XT8HBr.UD.CchI.gD.C0hI.sD.CEiI.4D.CQCI.AE.CUyI.IE.CciI.ME.CoCJ.QE.C4SCf5DGO.oSNo.r.QE.CQDI.4D.CwzF.pDOK.KP.AvPXcAnOwwC6vA.vBDJ.LTZD.4SNsvNCkBr.A..C0GG.5zNK.6P+w.f6DTf88DPH.pRbDAjJczV.pTNk.JObTASbH.j7bSCLwDK.xSPARFS9rAnHwQDPhzPzAHR9TAnGwgDPdTTd.pOb7.j97i..dTRChCnGwgCPdTUX.pLbDAf9vi.PJCP+.ZQbf.fG8SBPVDPv.XQAQBnGwwEPdDQeAZQbDAjEwTI.dDPgA5Mbz.j2Tj.fNDGQ.4PTA.fEoCBx3CK2PDgI.5Jb7AfCADAPtBIE9EfqPCKfpDGW.oRyTFr.ghH.cCJ.0yI.8SI.EzI.QDI.cjI.wjI.8TN.IkI.UkI.YUf+.zUn.JSbTAfJgBAPxDNJAZSbXAjMkyFvBjUm.HS2..r.E0I.Yj..1zOW.JQbn.r.oiAPRDQN.pObH.Mb.Aj9Pi.vBzIE.IMtzAfDMDAvBD.V.nO5v.M2HXefRDGDPCGD3CGI.IQD8.My.fO13CfDIzA93CBz7Sf4.ZQbTAjEoyM.VDPB.5QbLAjGMzYfVDGDPCGKvCGA.YQZY.M63.O93AfG4CE7HjBz.TfZUDO4.JQbDAjDwjdfVDGS.YQNA.nzvAA6vA..RzOQ.IM4.vN9LCf6.TFz.TfIUzMy.5QbTAjGgzM.dTQAFAnGwwA4vgEPdDNWjiDCREfGkiIfhDGMzBGP.IRvb.r.UBCP1RIa.KPvbBP4jAf4jhCvBTOl.DPl.zPl.zQl.TRl.DSl.zSZ.HRpv.r.EkI.MkI.E0I.oTBfhDGP.XKoT.jHwSBflCG..KP93Bj4rhBvBTLl.zKj.jLl.TMl.zMn.DNl.DNW.pRb3.r.gyAPpzOe.KPzz.fHcSDfxDGH.KPrz.jLsj..pzOW.KPdXBP.n.nEwQA.lCMH.pMbb.jEkDC.xzOD.oM0PDr.AxI.MRI.QxI.YxI.chM.VTLU.KPlnAnHwACvBDIH.IRI4Ar.EhI.A...ZyLn.5QbHvMbDAjGAEA2rCB.hDPBVBnHwQEPhDPG.3QdvCnJwQDPpTRE.HR6jDnuvg.CwwDPNzR.7ROH.3M5bgR97Gr.4gH.ARafdDGG.KPcP.fCkCBPdDRa.KP.TFnvvg.EwgIPBCP.TDTW.3Q+jwKvHnBEgyBfhDGS.IRFIEfv3SHfFCGI.DGO.YL3..PEI.fH0ifcAZQb7.f.ECBPVjOLAXL6XBnxvABCwA..VjNO.oL2.vPGM3I.JSKTApPbz.fCwCBPJDOK.pIbTAjl7RGvBzJl.TOG.nI67Ar.EjJ.UjI.oDJ.ME.CEFI.oE.CcSI.AF.CAvN.Q1I.k1I.A2H.8Wfz.ZNbz.j4DlB.JTPY.KPaUBP6bBP.LXa.AhI.IhI.QhI.cxI.kRI.sxI.4xE.liOG.5Nbj.r.MiAPtyQe.KP5XBP+jAn7vQCvBzPB.IOLQBr.Yj..tCPj.KPDEBnxvgAvBjJG.oLaA.nNwwCP5DXO.KP.H.f7HDLxHzfDApLb7.jxvzO.JCQBd.nOwwEP9DQs.nS8H.nQwQDPFkTVA3SAkAnBwA.HwwCPJzXBfjVd.XTAgBRAM3LfhDGM.IRVQEfH4SfX.5PbHAjCYzV.JTOO.ZQb7.jEsTH.NTP2.JUbX.Obb.jT4EB7jjI.VzOBVEUA8.nXwADPhUSAV.nQwA..hkPO.YTMQEr.8BI.oCJ.8iI.EDI.QzI.F0M..KPE4AnTwQBvBzPF.IUL8Ar.oiI.EBJ.A..CEwGf5DGG.KPpX.jNYkG.R0OB.KP7.vP.TBPCUBPIAvPQbBPOcBPXcBPfIBPkAvPTXBPZY.fNUiHvBDQ.LzEB.ZTbDAjQszDvBzIm.D.i.zIm.TN.LTFD.pRb3.jJ4DEvBTPG.HO7PPT9jAr.cD.CwgI.8jI.gEJ.UlI.IGI.8GUfxDGO.ISHkCnNwADP5jSE.nR73.r.AF.CMhI.MD.C8RB.xzO..5Sb.wNbD.jOcEC6PD.vBTG.LDPl.nSAA.r.A..C4DH.tCQF.6PYcxPjcxPvgyP4YxP+sEnJwwDPpzPdAnR6fvS1TBn7vgDPxiP..JSbTAjLQTK.xSQApBS.YDnHwwDPhzO+.HRE0CnGwwCPdzRg.pOb7.j93C..dzQCFDnGwADPdzRI.pLbPAjxDTKfVDGB.nO2TAjE8CF.dD...5QbDBfEITGPdDIzAZQbz.jE8j..dTPANPQ+3.nCwQCPNzTD.5Mbv.j2DzE.JyOsbyPD1CnqvQFPthKB.3P.U3QqvCUf9DGZ.4S5D3UvBDIm.zKl.TNl.TOn.zOj.jPl.TQl.jRl.zS3.jTm.TUk.zUl.TVl.jVl.zVKAzVm.DWAFAnQwwG.9TKF.YTj.EnRwQC.F0MJ.oT8XAr.oEI.MkI.kzI.JUO..KP9bAnJwAA2vACvBTLB.oREgvMrzAr.4AH.pTPG.KP.T3FfZDGDnDGQ.oQ2HfR9D3CvBjIl.jLn.jNm.TOk.zOk.TP6.zPh.3MfP.r.UDJ.cjI.kDI.ozEfJCGS.oL3HBr.czH.AjI.ACJ.8gI.ghI.YCI.0iI.EzI.QzJ.cjI.oDLfhDGH.nR9j.jHADBvBzQD.nQgj.nEwQFvBTRC.YQubAfH4CCvBzSa.XQ6r.r.gkI.40I.MVI.c1RfhDGA.KPj4.jHIzEvBjVf.pRbf.r.sTA.hzPH.oR9jAr.ciI.A.K.JSMQ.JRbDAjHkDAfNCGDTDGK.nR+f.jyLyAEYC.vBzGn.jMl.TPm.jRT.XQ9HAr.UE.CgmI.QF.CYFI.8G.CgkICcDJC4hICA..++B.PI2bUk4f..PR....J....LGckkla2EVdtkG.....a....bjbg4FYfLEckkla2EVdfPDHn3TY2ARVuI2Zo...........vI2as8F...P.....A....D....fB....yQWYo41cgkma4A....vF....GIWXtQFHSQWYo41cgkGHDABJNU1cfj0axsVJ...f+X...............................PkQ+++++C....................fb4EFaP....H...............7+++++ar81bQ....D....P.....FA..........A....D...............D...............D...............D...............D.....C....C8laiUlbzABRgwFa.....D...............D...............D...............D....................v..B..fkF.......QP...f+jF....aWI5OAxNyL+iY.Bcu+fXlY7C.NybOPYlY+vNyL+CayL6OP....w1Ly9ChYlwOHZlo+.fyG4C7++2OflYF+BRlY8K3++2uXYlw+BjyL4Cz3+zu.zLS+vy8S9C9++6uvKyb+RDQj.LrLyvu3++u+BzLy7K...Xs.37Q9fyLy+CvMyjO.3Ly8.nwk6KHyLAvfYl4+BKyL9K9++6uv...+viYl9KF..DPxb4H.QkYl+C.J1gOf9++9h+++9KiYl8uvxLi+B...VK8Ly3O.MyL+hyLy+C.NybOTyLy+.PBLzKn++uuLlY1+B...VKPD+luDLL8+.Hz89CACS+O3++u+BZlY7KTlY1O.lYl9HyLy.DoYl8O...H.gXv4+KHyLAv7Xlo+h+++9K...BP.NyL+PYl4.LMyLJvfxLy9BfyL2CzLyHPH0LS+.ZlY5KL..vO...H.QalY9CmYlGPj..f+fYlY9KXlY.vj..f+PZlY+C8Ly3OxyLK.A..PBDVlYIv.tLS9hxLSAL9++Hvn++W.CzLSBL9++HvxLyr.CNyrALYlYQvC....D...............L....................v.....................C....D....P.....A........9C.....A.........vF3EkOC.H...FV.......pAA...9CV....QNUI+b0X+NxOqc1I+T.tl7SDMbxObo3I+TDFq7yW1pxOdDwJ+XI7p7i6LuxOiPYK+vKfu7C.n9xOjcdL+fW8v7ybEHyO6N1L+LzNl7SGr0wO8GJG+rBnn7SHzLyOVh0L+P1Wz7ydgeyOJFBN+zx467CCt1yORtQO+X3S87SU0FzO0bxP+TTEE8CULVzO7dwQ+nWkJ8ig8A0OxbDU+D.JZ8y0I70OpgzX+L0in8ipw.2OMT4b+zSK58SZsx2ON1cf+fQVD9SMhZ3OMCHh+DAIJ9yNT.4OXKAk+3W1X9SAbs4OzKEn+7UFj9iE7j5O8JLq+LeIw9ShMU6OMlkt+HOB99S1y56O5lYv+TBeA+ikiL7O0VMw+jpSF+CREk7OlHqx+nEVK+iz.x7OvFxy+HFWP+SrmE8OiuQz+ndnP+y0xE8O0oBz+7N.Q+iXIA8OffFz+HfjP+SUIC8OxXTz+H52P+S...................Jv...n.A..1JD.....C.H...E...mPA.........................P...................Jv...n.A....v..B..fI.......fZP..fqBI..........AN.f...XB.......nFD..3pPB........9Sf.B........fzD..................f....+....9y..B..fgE......fZP...f+fE....wKx7OWwo228CtQVAPNahW+.qNf.bQ6d7OqP529TRJ4.bV10yuWTex+tXzi9C5sJ9OGEX2+73Pv3SvN0APEMrY+x0eE+qy10iunjrA+JBR57q4lECv1UFd+Lcgq4SWm5lulMeV+.N3J+KMZJ9upjh6+ZXNr.rMNQ9OuS6s+hIV76CtRcBPieJK.MTDD9S.kuCv+.Oq9naj68CJV2+uEKV4+.C5y.bCcl9OT1vN.E6ZB1SIM4BP47dw+H9iC8CNWbyOSSnJ.s7hT.jKCpCPv8bn8JIvS.TO.C7uozpO9dl1r.rY+QBPSJ18+p+vG.bzfJ9u8+ch97JTc.jZZR.vDrRr+XxEH.TTDy9uKsQC.wZ6b.b2XQAv3Qnl+rHc5.DXKrAP2KK..eNoh6S55oCvbYnN.Wy9a9CWSS8uGB+m+dgTH3qb087uRxQh9NNS99KmnA5OqWzn+FY598yRDFyuGecG.O.f...XXA......nFD...3OXA........j..........9C...3OI.....H....P...f+.....D...3O...f+B...9C....v...P.C...Ab....f+B...9qC.....A....L........f+.........3O...P.A....L....P...P.A...9K....f...f+B....D....PB.....H...Dv...P.i....3u...f+.....D...3O.....C...9K...3O...P.A...AzB.....B....L...3u...P.C....L...3O...P.C...9K....P.....B...9K...3uD....AL...3u.....A....L....vAB....jB.....C...9C....f...f+B...9C..........C....H...3u...f+....9iA...P.A...9C....f.....A....L...3O...f+L.....v...f+B...9C...3OD....9K........P.A...A7..B..fgE......fZP...f+fE...vdyb2OWoQgz8Snv22Od8Xf+v2EH9CPUh2O5QWg+TtmK9igk02ORgre+XjLD9S8zv3OWH0c+7e548CTH92OwmJZ+DORA9S1Mn2OCLxc+ThkH9ydMG3OF6Oh+HrYK9Crfd3OQb0d+jBWu8ivhZ3OvyYb+zreG9iND.3O5ewf+jjbs8SUW32OIp5f+j2pz8CPgY3OgZ.e+z.P.9iKJl1OMlEh+vYZE9CyA.2O4H.g+XRD.9SaOE2OE51b+3JJ38iKYA3OWYUh+n32H9Cyfj3OAtIf+L2OC9yFTN3OgqLc+vcV38iwR91OK1vg+njgv8igfm2OVY2f+vVg48ie5H3OTheh+L68E9i7+I2O4auh+LYOC9S+q02OXxPg+HLU88iHTq3Ogrzb+DNMr8Cw4Z2O93+h+rXen8C+9b2OCXwY+P7t.9yoZl1OG1ef+30oI9y52c3OYAzh+f5W38iPpt3OMVJc+H....P.....UA...TTb0EFafPWYsAWYxEVak4FcJPEZkAxbzElajElbjABc04VZtcFKfbGZkIWYfPGZkAxaiQWX1UFHoMGHjklcoQVYjARZtARLx.RYwUWXrAxbzUFby4BC.......xBA..HMD..X4P...xCA..5OD..XAQ..vKDA..HQD..DFQ..fdDA.fIRD..XIQA..........A.......2CwC...PQ....FA....ve.........b.....QkYVX0wFc..........f.....C.H...VZ.......DAA...9SZ.........fN..............9S.....A....D.....C....C.H...zB.......f+....HD..PfP...HBA..jHD...jP...QBA..vID..PmP...wBA..FKzB.......n.EH...HPAB...ATf.....EH...3OAB....D........f+L.f...XB.......nFD..3pPB........9SfC.H...FV.......pAA...9CV....6kNl+b0jvo1OO3Di+TIOG9C5os1OBInf+fNs98i6wK3Ogreg+nwzn8SPUC2OWFhb+7g2G9i3oD4OsOdT+XZp.9SVTo3OBQYh+nxcn8Swar0OAMkh+L1gR8yqCc4OSBmY+fLeP9SNMi4OGund+nPS68C9hi4O8nkU+n1558y3441OqC6f+HeYO9yEeA2Odeah+bwBQ9iknK2O9nkb+j7OE9SU+F3OM6di+3sul8SRtP2ONz6i+jKUJ9S50c3OeytY+.QFD9CA1o1OEUfg+nIm48SVExzOPySg+TDd68CvLe3O+WvY+3.no8SR8p1OvZBZ+btNL9irPz3Ozlji+3Yfn8yNU40ORjcg+L69w8SLcS1OzYoa+38sI9CHiK6OKLhJ+HO9K8yR450OrKOV+v6K18Skc81Ovgxf+jLAC9idYN3O7.ca+DTiv8iwSM3OLuKf+b4Lr8CbpE3Oz5NX+nTDC9y..B..PA..5QT..........L.f...T..fdDE........3O.....L.f...T...bBE.............f+L.f...T...bBE..........A...............MyLy81LyL2S...................vu....+....9y..B...M.......fZP...bBA..XKz........f+HH.....C.H...l........pAA..tJj..........DH...3OC.H...l........pAA..tJj........f+DH...hPC.H...DB.......pAA..PJD..fpP...sBA...KD..vrP...1BA..hKDB.........HH...3OD....AD...LP...HAA...ED...3OC.H...z........pAA..vID..fsPC........9ifC.H...v.......fECA..HOD..XAQD....H....v.....C........9i....P.C....P.....C.H...l..............9i..........D....3OC.H...l..............9i........f+D3..B...Q..........lLYR93ue+7C...3OD.........Pf...f+D3..B..fI.............f+H..........AB....PyLyjO....................+D....PyLyBPC.H...l........pAA..tJj........f+DH...3u....+L.f...XB........GD...oPB........9SfA....D....P.....L....LzatMVYxQGHHEFarY....fXigVXrwF...LP...bAA...9ilYl4O.....nv0ivC...............PyLyzO..vqCA...9C...3OA....X........3O...f+L.f...XoA......PDD...3OoA...Lb8n8CiHEtd+XAEtd3O...f+b8nv8yGEt1OHEtd+XlYF9iBWO3Ob8nf+fT358C6Qg2OT35g+fqGE9yLyL2OHEtd+XlYl8Cov02OT35g+Lb8n8C...3OCWOh+zLyL9CEtd3OT35g+T.ov02Ob8nf+fT358CtdT3OeT3h+7QgK9S.CWOZ+Lb8n8SA35Qg+7nv08y0iB2Ob8nf+nv0C9iBWO3OIDWOJ9CEtd3OHEtd+b8nv8iqGE1OZlYV+HEtd8iqGE1O6Qga+rGEt8yIjBWO+PJb88SyLyzOWOJb+7nv08Cov02O1iBW+7Qgq8yiBWuO8nvU+PJb88SOJb0OJb8f+XlYF9ydT31OCWOZ+Lb8H9CtdT3OT35g+v0iB9Sb8n3OeT3h+PJb88SyLy3OyLyb+7nv08CWOJ3OCWOh+b8nv8SyLy3OtdTf+XlYl8yLyL2OT35g+....9yLyL2O35Qg+DWOJ9SyLy3OMyLi+P3..B...M.......fZP...bBA..XKz........f+HH.....C.H...VZ.......DAA...9SZ.........LoBWORuNnv0izC.....OJb87pv0i1iBWOZuJb8H7lBWO1SJb8Xu.....vdT31qBWOROOJb87zLyL0C6QgaurGEt8VPyLybOJb8H7jBWO1qBWOBOOJbc89nv00q.Jb8n7xdT31K6QgauX.....PJb8XuOJb87zLyL2qBWOBuJb8H8zLyL06iBWOu.....7nv0yqBWOJOOJbc8zLyL06iBWeuOJbc8nv0izSJb8XOMyLy8BCxE2qBWOROOJb87pv0ivK.....Jb8H8nv0iziA.....jBWO1KXpkSOJb8H77nv00iBWOBuJb8H7dgBWOJOJb8n8jBWO16iBWWOJb8H7vdT31SyLyTOMyLy8lBWO1ayLyTOJb8H8pv0ixayLyTuOJbc8jBWO16iBWWOMyLS8pv0izayLyTOJb8H8vdT31SJb8XOMyLS8zLyL0CgA.........P.........+.....z........f+....9C...3OC.H...z........pAA..vID..fsPC........9ifC.H...z........pAA..vID..fsPC........9ifC.H...VZ.......DAA...9SZ.......f+.cgqGwOBnYlY8C...3O...f+PI...3O...f+b........3Ow0ih9XlYl8SyLy7OZlYl9f...........................17d9................L.f...XoA......PDD...3OoA...nHhn5SfYrjm9XjxuXkO4USl9DHjQ6CRgKqOeReh9TQiL6S+hkoO3adq9LXK35iPmVuONNNp9H6vL6SyLyvOOJb89ziBW6yCpCwO6f5.+jBWO7yiBWuOjBWu935Qg7CRgquOrGEN+PgqG7iYlYxO1iB29n.m.6Cub3sOb8nv9HEtd7iYlYtOyEGE+LyLy7yqGE1OEtdD+DWOJ7CRgqyOOJb89vhuB5CUKitO1iBG+Dm.m7iqGExOOnND+....8y0iB2ORgqG+7nv06ysssxO8nv09rCpC7Sx9wvO9i8K+nYlY8iT350O1iBG+LxfD8ShTmyOk5bJ+X8J+7y0iB2OMyLS+DEtd7SJb8zOHEtN+rv0i7C4q3wOVv.k+75QA9ydT31O6Qga+7w8nvwOZlYl+XlYl+C8nv+OhqGs+z0ih9CWOJzOZlYt+3Qgq9SBWO1OQgqG+XOJb8SlYlwOgqGU+vdT38CRgq6OHEtl+....9ydT33OOJbc+DWOJ8SqGE.POJbc+35QA+SgqG8Oov0q+HEt99CWOJ7OlYl4+v0iB+yGEtCPC.H...z........pAA..vID..fsPC........9ifC.H...FV.......pAA...9CV.......f+bpsVC3OcHgLA9SynG3OqPjf+f3mB9yPVM3OVd.g+j6vD9CT5S3OyoWg+nP6E9S5ma3Oj54g+vxCH9Cuvh3O2cVh+3TLJ9C6Tq3OHPxh+Tv4K9Cvcx3OpXTi+nGUM9Cvcx3Omt3h+rqII9yb5U3Os5rf+Xq0.9CBu+2OH79e+PH...3OLN.f...XXA......nFD...3OXA...z9P.9iIVf6e+Lcu78C5M22OkUre+rpG+8yOe42ODQge+PjM98ylj92OAKxe+bQf.9CVUC3Or1Cf+vNw98ioG.3O3vBf+3Xj98y.b22Osune+rP298yFe82Ow1xe+vHk.9iz+B3OZn8e+rtr88yvD52Otsme+DBD.9ybn+2O7iWe+Ty688ivk42Ouq5e+jVF+8SNe92O...f+TrS.9SwNA3OAVl5+8CHfvxe+DDZ.9ich82O7Ype+fch88CFa.3O...f+j8U+8Sb.92OXmXe+H1I98C1nA3O3L6e+3wJ98SP752ONZ9e+Px788C6D62OiISe+XZv.9CBzC3O7dAf+..x58CYZ+1OdhcX+HBrl8CbYm1Ozlta+TrSr8SwNQ2Oichc+zI148SmXm2OBTrS78C...3O...f+P.rHx2OE6Df+XmX+8SwNA3OE6Df+Hnch82OAxNw98S.....oA......PDz..B..fcH............f+bH.......LvAB....z.........fBD....v.....K....Nv...n.C..fBLD.....A..fBL...3u...f.C........3O...f+B...9C...DP...f+....AL...3u.....C...AD...Lv.....C....b....f.A...BT......A....zF...f.A..fCD...DP...f+B...9C........3.A........3u...P.A....L...Dv.....C....D...Dv...f.C...AD........f+B...9C....v...v.C....L...Lv.....A........HP...f.U....Hv...f+....AL....v...n.C..fBLB.........CL...Dv...f+B...9C...Dv.....A...9K...3uI....AL...3O...f.C....L...DP.....C...9K...DP...f+....9S....P.A...Aj....f+B...BD...HPK.....L...3u...P.C..fBL...Dv.....C..fBL...3O...3.C........3O...f+L...........A...BL...HvF...fBL...Hv...P.C...CL........f.C...BrD...f+.....L....P...v.A..fBD...Dv..........L...Nv....AC..fBL....P...n.A....D........f+....9K....v.....K....3u.....C....b....f+...fDz..B..fcH............f+bH.......DvAB...AzF...f+.....D........f.C...DL...Lv...f+.....L...Pv...f.C...9K....v...f+....BL...3O.....C...BL...JP.....A...AD...Dv.........9K...LP...3.A....D...LP...v.AA....v...f+B..fBL...3O.........BD...3u...f+....AD...3u...P.C....D....v...n.C..fBD..........HA...3u...P.C...CL...Dv...DAC..fBL....v........fBD...Lv.....C..fBL...Dv...v.C..fCL....v....AC..fBL...JvD.....D..........C...AL...DvAB...9af...P.qA...HP.........9K....P...f+B..fBL...Dv.....C...9C....P.....C...9K.........AC..fBL...Lv...f+....AL...3u.........9K...3O.....C...9C...Dv...v.C...Cbf...f+L...........C..........AB...CTC...P.A........DP...v.A...9K...JP.....C...CL....P...3.A..fBL........v.A...CjA.....A..fCL...NP...v.A....D..........L....LP...f.A..fBD...SPC.H...1g.............9yg.......P.I....Pv...f.A...Bz....f+.....L...Jv...n.GH...HPB...fBL...Lv...v.m.........f.A.........P...f+B...BL...DP........fBL...Jvd....AL...3O...f.A...9K...3O...P.A..fBD...3O.....C...AL...3u.....C..fBL...3u...n.A...9C..........A...AD...3O...f.A....L...Dv........fBL....v...DAC...CL...Hv.....C....LB...f+....AL...3O...P.C..fBL...Nv...f.C....L....vH....9K...Dv...f.C....D...LP...f+.....L...Dv...P.W....Hv...f+B.........P...P.A...AzD.....A........LP...f.A..fBD...DP.........AD...Nv...f.C...CL...Dv.....C...CL...Hv...P.C...9C...3u.....C....LD...f.C..fCL...Lv...3.C..fBL....v.........AD...Dv...f+B....L...3O...f+B....D....v...f+B...9q....3.C..........C....9K...3O...f+B...9a............A...f+.........Dv.....A....jA.....C........3u.....C...AD........PAM.f...XGB............3OGB.......BbA...DAC...9K...HP...P.C...BL...HvAB...ArA...P.A..fBL...Lv...f+B...9C..........L....HP...P.C...AD...DPP.....L...Dv...f.C....D...Jv...f+.....D...HP...P.A........Jv...f.A.........P...n.C...9K...3uH.....L........P.A...CD...3O.........BL...3O...f+X....Lv...f.C...9K..........A...BD...HPA...........E...fCL....v...v.C....L....P.....Y....Nv.....C.........v...f+.....L....vK....9K....v...P.C....L...Jv.....A...AD....P...P.A.........P.....0....Dv.....A...AL....v...f+B..PDL...Jv.....A.........v...f+B........3u...f+R....LP.....C...9K...Qv...DACA....v...f+B...AL........P.C........3u...P.C...CD..........C...AD....P.....C...BL....v.....OA...PP.........9K...LP...n.A..fCL...Dv...P.A...BL...DP.........AL...Jv...f.C...DD...3O.........BL....P...TAM.f...XGB............3OGB........PB...f.C....D...JP.....C...BL...Jv...v.C........3u...f+V....3O...f+B...AL...JP.....A....z....n.A....D...3u...f+p....3O...P.A..fBD....P...P.A...CD...NP...f+....9K..........P....DP.....A...AD....v.....y....DP...f+.....L...HP...P.A...9K....v...P.C..PDL....v.....A...BD...HPf...fBD...3O...P.A...CL...Dv...f.C...9K....v.........AL....P...P.A...9C...JP.....C....D...3u...f.C....D...LP...P.C....D...HP...f+B....D...3O...P.A...BD....P.....C..fBL....v.....6....Lv.....C...AL...Pv...f+B...CL...DP.....A...9C........f.C...CL...Hv...f+B...9q....P.C..........A....9K...3uAB...AT...........PF...n.A...BL...Dv...f.C..fBL...LP...f.C...9C...JP...v.A....L...Nv...P.C....L...Dv...v.C..fCL...Rv...f.C..fCL....v...v.C..fBL....v...f.C...Br....f+B...AL...VPC.H...1g.............9yg.......HAW....Hv...P.A........Dv...f.C...BLA...f+.........3u.....C....rB...P.A...BD...3O...v.C...AD........f+B....L...3u...n.A..fBj....P.A...CD...LPj.....D........f+B...AD...JP.....C...9C..........C...9C...DP...f.C...BD...3O...f+B...9C...Jv....AC...CL...3O.....C..fBD...NP...f+....9K...Dv...f.C.........P...f.C....L...Dv...P.A..fBD...DP.....A....jI.....C..fBL...3u.........9K...3O...P.A...9K...HP...f+.....D...JP...v.A..fBD....v.....A........3O.....C...9K...Hv...f+..........P.....C..fCD...HP.....C...AL........P.C...9K....v.........9C....v...f+B..........E....BD...3u.........9K...Nv...3.SA...Lv...3.C...9C...DP...n.A...9K........v.C....L...Nv...f+B..fDL...Jv...f+...fBL...Hv...n.C...9K....v....AC...Db......C....LA........PDL...Nv...n.C..vEz..B..fcH............f+bH.......PvD....CL...DP.....C...BL...HvAB...BzC...P.C..fBL...Dv...P.A..fBD....P...f.C....D........f.C...AL........P.A....D...JP...n.EA...DP...f+.....L...Hv...f.A...BL....P.........9C....P...f.A...CL....P...f+.....L...Dv...n.C..fBr....P.C...9C...3OL.....D...JP.....C........Hv.....C...9C...3u..........L...Lv.....A....DA...f.A...9C....v...f.C...BrG.....C..fCL...3u...f.A..fBD...DP...f.A...9C...LP...f.A...9C...DP...n.C...9K...Dv...f+B.........v.........CL..........A...9C....v...f+.....L...Hv...P.C...BL...3u...f+x....Hv.....C...BL...3O...f+B...9C..........C...BD...Dv...v.C..fBL...JvA....9K...3uI....AL...JP...f.C...DL...Jv...P.C....L........n.C..fBrA...f.C...9C........f+....CL...3u...f+l..........AC...AL...3O...f.A...9K........P.C...9C...XPC.H...1g.............9yg.......P.S....3u...P.A....L...Lv...v.m.....P...P.A...AL...3u.........9K...3O...P.C....D....PZ.........Hv...P.C..fBD........P.A..fCD...DP...f+B....L...3u.........AL...HP...n.C...AL........P.A...9K...DP...f+.........Hv...3.C..fBL..........DH...DPB....BL...3u...f+F....Jv...n.m.....v.........BL...3u...f+....BD...3O...f+B..........A.....L....vN....BL...HP.........BD...Dv.....C...9K....P...f.A...AL....P..........L...Nv...3.K....Dv.....A....DD...n.C........3u...f+....AL....v...3.C...CL...Dv...f.C........3u.....A...BL...Dv..........fC...f+.........Jv...f+.........Jv...f.C...AL...DP...P.C...9C........f.C..........Q....9C...Hv.........9K...3O.....A....L........f.A...AD....P...f.A...9C....v...P.A...BD...DP...P.U....HP.....C...BD...JP.....C..HFz..B..fcH............f+bH.......HvV....9K...JP.........CL...Jv...f.A...EL...Nv...f+B....L...3u...f.C.........P...f.C...CL....v...P.A...9C....P...n.A....L....vC.........JP...f+B...96E...f.C..fBL...3O...f.A...BL........f+B........Dv....AC..PDL...Dv...f+....CD...DP...f.C...AL....v...f+B..PDL...Dv...f+...........AB...ATf.....G....Dv...P.W....Hv.....C....D...3u.....C....7....P.C...BL...HP...f.EH...DPF..........v...v.C...AL....v..........P....P.C...ALH..........L...3u........fBL...Hv...n.C...BL....P...f+.....D...Hv.........AL...HP...P.A...AL...DP...f.C...DL...Nv...P.C...BL....v...f+B....L........3.C...DL...Lv...f.C..........AB....b......A....Tf...f+T....3u.........AD...3O.....A....z....f+B..fBD...3O...f+H....3u.....A....DA..........D...3O.....A..PFz..B..fcH............f+bH.......RvR....9C...HP...f.C..PDL...Lv...f.A...9K...3O.....A...AD...3u...P.C...BL...Jv...v.C....L....P..........PD...n.A....D...3O.........BD....v...f+....CL....v...P.A...BL...LP...P.A...9K....v...3.C..fBL...JvN.....L........v.A...AL....v...f.C...9K...Hv.....C...BL...Dv.....C...9K...3O...f+rB...3u.........9K...3O.....A...9C...DP...v.A....D..........A...AD...JP.....A....L...Jv.........DL....P.........BL...Lv..........D...DP...f+B..fBL...3O...n.C...BL...3u.........9K....P...f.C...9C...LP...n.A........Dv.....C...AD....v.....GA...Jv...f+B...9C...3u.....C...9K...Qv...v.C...BL...Dv........fBL...Hv..........L...HP.....C....7B.........9K...Dv...f.C...BD..........C........Dv.....C...BL...HvH....9K..........C...9C..........C...9K...3O...lAM.f...XGB............3OGB.......96....f+....AD...Hv...f.q....HP...3.C...AL...3u.....C...BD...Jv...P.A....D....v.....W....LP...P.A...BD...LP..........PA...P.A...9C........f+B...9C...3OE....AD...3O...P.A...AL....P.....E....Hv...f.y.....v.....A...AD..........A...AD...3u.....C...9C...DP...f+B...9C...3OD....BD...DP.....C..........E....9C........3.A...BD...DP...P.I.....P...P.A...AzA...f+....9K...Hv.....C..fBL....v...f+B...9q....P.C....D....PW...fBD...3O.....C....D........P.C..fBL..........A...BD....v...n.A....L....P...f.A...BL...DP...f+B...DL...Jv...f+....9K...3O...f+DH...DvL....DL...Hv...P.C...BL....v...n.C...DL...Dv...f+...fBD...3u...n.C..fBLA...f.C...9K...Jv...v.C...Crf...n.a....Qv...HAC..PDL...Pv........PDL...QvA...fDL...RvE...fCL........3.C..PDL...Pv...nAM.f...XGB............3OGB.......A7B...f.A........Hv...P.C...CD........f.A..fBD...LP.....C...BD...HPD....9K...3O...v.A...BD...HPA...fBD...JPZ....AD...LP...n.A....D...Dv.........BD...3O...3.A...CD...HP.........DL...Hv...f.A...AD...NP...n.A....D...Hv...n.C...AL...3u.....A........HP...f.Y.....P.........9C....v...f.A....D....PG....BD...PP.....A...AD...JP....AA...CD...LPX...fCD....P...f.C....L...JP...f+B.........v.....A....L...DP...n.A...AD........f.C...9K....v.....A...BD........f+....CD...HP..........PA...n.A...AL....v...P.C...9K...3uG....9C........f+...fCL...Pv.........CL...LvA.....D....PO.........Dv...f.C...DL...Lv...3.C...BL...Jv....AC...AL...Hv...P.C...DL...3u...DAC..PDLA...f.C..fBL...Sv...DAC..PDr.....AC..PDL...QvA...fDL...RvD....DL...Hv.....C..PDL...QvA....DL..fZPC.H...1g.............9yg.........O.....P...f+....BL...HvB....9C....v.....OH...DPZ....9K...Dv...v.A...AD...3O...P.A...9C........3.A...BL...PP...P.A...9C...HP..........D...DP........fCL...Hv.........AD...JP.....A........3u...f+F.....v.....S....3u...P.C........3O...f+T.....P..........D...3O.....A....DA...f.A..fBD...3u.....A....Tf...n.Q.....P...n.C....L...Dv...P.K....3O..........PA.....C.........P...P.A...AL...DvP....CL...Dv...f+B....D...3O...P.C....D........n.A....D...DP.........DL...Nv...P.C...9C...3OAB....z..........BL....v.....2....Dv...f.C..fCL...3u.....C...9C....v...f+B...AD....v.........9K..........fA...Nv...f.C...AL...Lv.....C........Qv...f.C....L...Lv...f.C..fBL...Hv...n.C...BL...Dv...v.C..fCL...Jv...f.C..fBD........f.C..fBL...Jv...rAM.f...XGB............3OGB......fBbC...P.A........Jv...P.A...CL........P.A...9C...Hv...f+....BL....v.....A....jf...f+FH...LPG....BL...DP.....C...AL....P...P.C...BD...HPH.....L...3u.....A........Nv.....A........Jv...n.q....Hv.....A...9K........f+.....L...3O...n.A.........P.....w....3O...f+B...AD....P...f+....9K...DP...f.A....D..........C...9K...3uH....AD...LP...f.A...9C....P...f+B...AL....v.....O....Hv...v.C....L....vBB....v....v.A...9C...3u...f+V....Hv.....C..fBL...Dv..........fA...P.C....L...Nv...f.C....L...3u...f+NA...Lv...f+B...AL........f+B...AL....P...f+B...BL...DP.........AD...Dv...f.A...BL...Lv...n.C..fCL...Hv...f.G....Dv...P.q....3u.....C....D........f+B...BL...3O...f.C....L...3u...f+J.........f+B...9a....n.C..fB7....P.C...9K...Jv...tAM.f...XGB............3OGB......PDr....P.A..fBL...JvF.....D...Dv.....C...AL...3u.....A....TD...P.C....D...HP.........CD...3O...f+B...CD...Dv.........9K...3O...f+B....L........P.A..fCL...NvL.....L...DP...f.A...AD........P.C........Hv...P.A...BD....v...f+....9CA...f.A...9K...HP...f+....9i....P.A....D....PA....9K...3uV.....L....P...P.A..fBD....P...n.C....L...PP...P.A........3u.....C...9K....v...f+B....D........n.C...CL...3u...f+....9K...3uAB...Az....f+.....D...3O...f+j....Dv....AC...BL...Dv...f.A...BL...3u........fBL...JvG....BL...Dv...f+B..fCL...Hv...P.C....L....vU....AD...Nv.........9C...Dv...f.C...9K...Dv...f+...fBL...Hv..........L...Hv.....C...9C....v...P.A........Dv...n.C..fBLA...f+B........3u.....A....TB...f+.........Dv...f+....9K...3O...v.C.........v...vAM.f...XGB............3OGB.......Cr....P.A...CL...LvF.....D...Jv.........9C....v...P.C...A7C...f+B...9C...3u.....A...BD...3O...f+B...BL...3O.....C...AD..........C..fBD...Hv...f.GH...JvJ.........JP.........9K...Dv...v.C...9C....v...P.C...9K...3uD....9C...3u..........L....vN....9C....P...f+B........Jv.....C....D...HP...f+....9K....P...f.C........3u...f+F.....P.....k....3O...n.C....D...HP...P.C...BL...Dv...f.C...9K...3uA....AL...DvQ....9C........f+....AL........f+B..fDL...Jv...f.C..fBL...Dv...P.A....L...3u...v.C..fBL...Dv...P.6A...3u.........9K...Nv.....C........Hv...f+B...BL...Pv...v.C...BL...Dv...f.C....L...Jv...f+B...9C...Jv...f+B...AL...Pv...f+B....D...3O...P.A...9K...Jv...f+....BD...HPAB....r......A...AD...DPD.....D...Dv.....A...BD...HPB....9C........xAM.f...XGB............3OGB.......Cr....P.A...BL...HvBB....vH.....C.........v...P.C....D........3.A........3u...n.A...9C...3u...n.C....D...3u.....C...9C...Hv...DAC....L...Hv...f+.....L...3O...f+B....L...3u...P.C...9C...3u...v.A........3O...f.C...9K...3uAB..fBbA.....A...AD....v...v.A...BD...HPF.....L...Dv...P.A....L...Dv.....C....LB.....A...9C...Hv...f+....AD........f.C...AL...DvW...fBL....v...f+B....L...Hv...P.A...9C...3u.....A...9K........n.C...DL....v..........D...Dv...f+....BL....v...f+B...AL...Hv...f.m....JP...P.C...CL...Hv...f+B....L....P...n.C...9C...3OE....AL....P...n.C...9C...Dv...P.GH...3uC....AL...3O...........A...3.C...9K...DP..........f....f+B....L....vB....9C..........DH....vA...........E....AL........f+....9K..........DH...cPC.H...1g.............9yg.......f.a....3O...n.C...AD...Hv...P.C....L....vN.........Hv.....A..fBD...3O...3.A...9K...HP...f+B....L...Hv...P.A.........P.....M.....v...P.C...9C...3OJ....AD...3u.....A..fCL...Lv...f+.....L........f.A....L....vO.....D...3O.....C...9K...Dv.....A...AD...Dv.........BD...3O....AA...AL........P.C...A7B.....A.........P.....C...9K....v...f+....AD...Dv...f.C..fBL...JvW.....L...HP...P.C....D...3O.........9K...DP...f+.........Jv....AC....L...Dv...P.A.........v...f+....CL...Sv...P.C....L..........HA...3u...f.C...9C...3u.........CL....v.....A........Jv...f+....AL..........C...AL....P...f.C...9K...3uB....AL..........r.....P.....C...9C....P.........9C...DP...f+B....D...DP...f+....9if.....DH...3OA...........B....9K..........DH..fcPC.H...1g.............9yg.......P.q.........v.C...9C...Nv.....A........3O...P.C...BL...3O...f+P.........f+B....D...Dv...P.K....Nv.....A....DC...f+.........Jv...v.C...9K....P.........9K..........C.........v.....GH...JPD....CD........P.A....L....vA....9K...3uC....AD....P...f+....9S......A....zA...f+B........3u...f+....AD...3O..........Pf.....e....3O...v.C...AL...Lv...f.C....L..........PA....P...n.A........3O...P.A.........v...3.C...CL...3O...f.C....D...3u...P.C..fBL...Nv...f.C...AL...3O.....C....rC.....A...AL....v...P.A...AL...Jv...P.C...BL...Dv.....A....L....P...f.C..fBL...JvH.....L...Nv.....C..fCL..........C........Dv...P.K....Nv...P.C...AbE...f+B....L...Dv.....C...AL...3u....AC...9K...Jv...f.C...DL...Nv...v.C..fBL...Hv...3.C...BL...Jv...f.C..fBL...Dv...3AM.f...XGB............3OGB........TB...f+....BL...HP.....A...AD..........A...BL...DP...P.I....PP...f+....9y....f+B..fCD....P.....U....JP...f+.........3O...........D...3.A...BD...3u...f.C...BD....P...f.C....D...DP...v.A...9C...HP...f+B....D...JP...f.A...BDF...P.A...BD...DP...HAA....L...DP.........AL........n.A...BD...Jv.....A...BD...LP.....C........3u...P.A....D...JP...f+B........DP...P.EH...LPC.....D...Lv..........v....f+...fBD...3O...f+DA....v...P.C...AD...3O...f.A...9C....P...f+B...9C...LP.....C...9K........f+....AL...3u...f+....9Sf...P.y....Nv...f.C...CL...Jv...f+B...CL....P...v.C...9K...Jv...f+B....L....vF....BL...Jv...f+B..fCL...3u...v.C...CLA...3.C...CL...Nv...v.C...CbA...f+B...CL...Nv...f.C..fCL...NvAB...B7....3.C...AL...Nv...3.KH..fdPC.H...1g.............9yg.......f+N.........n.C...9K...3uC....AD...Dv.....A....DA...P.A........LP...f+....9iD..........L...HP...3.A...AD...Dv.....C........DP.........9C....v...n.C...AL....P...f+B...9C...HP...f.E....3u...f+l.....P.....C...AD........f+....AD....P...f.A...BL...HvAB...D7A...v.C....D...Jv...f+....9K...DP...f.C...BbH...v.C...AL....v.........9K...Hv...n.A..fCD...JP...f+....AD...HP...HAC....D...3u.....A..fCD...3u.........BL...Dv...f+B....L...Hv...n.C...BL...Dv...f.C....L...3u...n.C...9C....v.....a....Jv...f+B.........v.....A...AL...DvG....BL...3u...v.C...9C...Jv...f+B....L....vCB...Abf.....y....3O...f+B....L........n.C....L...Hv.....C...9K...Jv...P.C..........LB..vGz..B..fcH............f+bH........PJ...fBL....v...f+B...AD...Dv...f+....AL....P...f+B...9C...3OE....BD...DP...f.C....D...3u...f+V....Dv...n.C...AL....P...P.A...AjA...n.C...9K...Dv.........CD....P.....I....3O..........Pf...f.4....JP...P.A........JP...f.C...CD...Jv...f+..........P.....C.........v...f+....9CF.........BL...Dv...f+B...9C........f+.........JP...v.A...BD...3O...P.A...BL...Lv...P.C...AD...Dv...P.A...9K...Jv...f.C....D...3u...f+J....Dv...f+B...9af.....WA........3.C...9C...Dv...f+B........HP.........9K....P...n.C........Hv...P.C...9K...Dv.....C...AL...3u.....C...AL...DvAB..fBb......C....rA...P.C.........v...P.C....L...Hv...f.S.....v...P.C...9K...Dv...P.G...........3H..fePC.H...1g.............9yg.......f+b....Jv.....A..fBL....v...v.C....L...........B...NP.........BD....P.........BD..........A....L...Hv...f+....BD........f+....CL...Dv.........9C....P...P.C........HP...f+.........JP...f+.....D...LP...3.A...CD....v...n.C..fBLB.....C...BL....v..........L...3O...f.C....L....vD...fBL...3O...f.A...9C...3OD....BD...JP.....A...9C...3OD.....L...Hv...P.C...9K...3uB...fCD...Hv...f.GH....vF....BL........f.C...AL...3O.....C....rA...f.A........Dv.....A....L...3O...f+j....Dv.....C...9K...Hv...n.C...AL....v.........AL...DvC...fBL...Hv...n.C..fBbA.....C...BL...Dv..........L....vA...........bB...Hz..B..fcH............f+bH.......LvH....DL....P...f.C...AD...3u...3.C...AD...3O...f+3A........v.C...BL...Dv...f.C..fBL....v....AC...AL....P...f.C..fBL...Nv.........DL...LP.....C..fBL...3u...n.C...9C...3u.........BL....v...f+B...AL........f.C..........F...fCL....v...P.C...BL........f.C...BrA...3.C...BL........f+....BL....v.....SA...DP.........CL....v...f.C...DL...Dv...f+....AL...3u...P.C..PDL...3u...P.C....L...3O...n.C...BL...Pv...P.C...AbB.....C........3u...P.C...9C...3u.....C...CL...Hv...f.e....Jv...v.C...9K...Dv...P.A...BL...3u...f+FH...DPH...fBL...JP...P.C...9K....v...f.C........Dv...P.G...........vI..PfPC.H...1g.............9yg.......P.c....Pv.....A........3u...P.C...9K....P.....k.....v.....A...AD........f.C...9K...Hv...v.C...AD...DPC....9C...Qv...f+....9SB...f+B....L....P.........BD...3u...f.A...9K...3O...f+vA...DP...f+B...9C...Lv.....C........3O.....C..fBL...3O...f+B...AL...Lv...f+B...AL....P.........9K...3O...n.A....D........3.C....L...Jv.....C.........v.....GH...LvC....9K...Hv.....C....b............I.....A...CD...3u.........9K...Dv.........BD........f+....AL...Hv........fCL........P.C....D...Dv...f+....AL....P.........9K...3O.....C...9K........f+..........P...f+..........v.....A........3u...f+F...........nI..ffPC.H...1g.............9yg.......f+j....Jv...f+...fBD...3u.........BD....P...n.A...9C...3OS..........v...P.A........Dv...P.A..fCD...JP.....C...AD....P...n.A...BD...DP...f+....AD...NP...v.A...BD...HPM...fBD...LP...P.A...9C...JP...f+....DD...HP...f+.....D...LP.....A....L....vD....9K...HP.....A...AD...DPAB..fCj......A...BL...HvK....AD....P...f+.........3O.....C........HP...f+...fCL..........D....3O...f+b....HP...P.A...9K...Lv...f.C...CD....P.....wA...DP.....A........Hv...f+....CL....v...n.C...9K........f.A...DD........f.A....L....P...f+.....L...Lv...DAC...CL...PP.....A...AL...Lv....AC...AL..........zI..vfPC.H...1g.............9yg.........X....Lv...f+B....D...3u...3.C....D....PD.........Jv.....C...9C...3OD....9K...Dv..........D....Pb...PDL....v...P.C...BD...3O...P.C...AD....v...f.A...AD....P...f.A..fCD....v...f.A...9K...3O.....A...BL...DP...f+....9K...3O.....C..fBL...3O...f.C...9K...3uJ....9C....v...P.A..fDL...Hv...P.A....L...Jv...f+B...AL...DvAB.....F...f.C...AL...3u...P.C...9K....v.........CL........f+.....L........n.C...CL...Hv...P.C...BL...Jv.........9C....v...P.C....L...Dv...P.S.........f+....CD....v.....O....Hv.....C...9K...3uG....BL....v...f+.....D....v...f+B....L....vB....9K..........3I...gPC.H...1g.............9yg.......f+H....Hv...f+B...9a...........ff.....u.....P...f+.........3O.....C...BD...JP.....A...DL...Hv..........Pf...f+V....DP...f+....BD...3u...f.A...BDA........fBL...Hv..........Pf...f.G....3O...f+.C...Jv...P.C...9K..........C...9K...HP.....A...AD...Jv...f+B....L...Dv.....C....D...Dv...f+B...BL........f+.....L...Dv...f+B........Jv...P.C...CL...Dv...f.A....L........3.C...BL...Dv...3.C...AL...Lv.....C...BL........f.C..fBL...Dv.........BL...3O...f+B...AL...DvA....9K...3uB...fBL...Dv...P.W....Lv.....C...BL...Jv..........Po...EBM.f...XGB............3OGB.......BjF.....C...AD........f+....BD...DP...f.A....D...DP.....A...CD....PMyLO.A..fBD...PP.....A..fBD...PP...f.A..fBD...LP...n.A...DD...NP...v.A..fBD...JPI....CD...JP...P.A..fBD...3O...P.A...CD...NP...P.A...Aj.....AA...BD...HPa....DD...SP...n.A...CD....v...f+.....D...3O...f+B....D...Hv...f+..........P.....C...9C....P.........BD...DP...f+B..fBD...DP...n.A....D...JP...f+B...9KF...P.A....D...3O...f+B...BL...Nv...n.A........JP...P.A....D....v.....A....L..........C...BL...Lv.....A..fBL...Hv....AC....L..........jJ..fgPC.H...1g.............9yg.......P.OA....v...f+B...AL...Jv...f+B...9C....P...P.A....D...Dv...f+B..fBL...HP.....C...9C...DP........fBD...3u...f+F....DP...P.EH...3OV....CD....v...n.A...9C...DP...P.C....L...LP...f+.....D...JP.....A..fCD....P...f+B...9C....v...f.A..fBD....P...f+B..........B....BL...DP...P.w.....P...f+....AD...3O...f+B....L...3u...f+...fDD...3u...P.A...AL...Dve.........Dv...f+B...9C....v...P.C...9C....v.....A....L...JP...f+....AL...Jv.........BD...DP.........AD...Hv...f+B...9C...Hv...P.C...AD....v...P.C....D...Dv...n.C..........mB..bHz..B..fcH............f+bH.......HvE....9C...HP...n.A....L....P.....oA...3u.....C...AL........f.C...CD........P.C........3O...P.A....L...Dv...f+....CD...3O.....A..fBD...3u.....A...9C....P...P.C...CD...DP..........v......C...9C...DP...P.EH...3uG....AL....v.........9K...3O....AC...AL...DvAB..fCrC.........9K...Jv...P.A...CL...Pv.....C...AD...Hv...f+B..fBL...Dv...v.C....L....vE....AD....v...P.C.........v.....W....Hv...n.C...9K...Dv..........fA...P.C...BL...3u........fBL..........DH...3uA....AL...DvAB.....g.....Q...........C...9C..........D....3O...f+DH...3uB.....L...3u...f+RH.....WB..fHz..B..fcH............f+bH........vB...fBD...DP...P.I....QP.....A....TC...n.A....D...DP...P.C..fBD...HP...f.C...9C...JP...P.A..fBD...PP...n.A..fBz......A..fBD...DP...P.EH...DvD.........DP.....A...9K...3uB...fCD...3O...f+r....HP...HAA....D...Dv...f.C...AD...Hv.....A...BL...3u..........f....f+.....L....vX....AL...Hv.....A...AL...DP...f+B........Lv...3.C..fBL...NP.....A...BL...Nv...f+.....L...Lv.........9K........f+B...9C....P...n.C..fBbA...P.C...BL...Lv...f.C...9K...3uL....BL...Dv...n.C....L...Hv...P.C..fBL...Lv.....C...BL...Lv...f.C...B7....n.C...AL...Jv...n.m....Hv...n.C...AL...Hv...P.C....L...Lv...f.C...AL...DvAB....Pl...IBM.f...XGB............3OGB......fBbf...f+3....Hv...P.C.........v...f+B........Dv.........BD....v...f+B........HP.....C....bI...f.A...9K...Dv...P.A..fCL...Dv.........9K..........A...AL...Jv...f+B...AL...HP...3.A...9C...3u....AC....L...3O.....C...9K...Dv...f+B...AD...Jv.........9K....v...f+.....L...3O...P.C....D...Hv...f+B...9aA...P.C...BL...Dv...3.C....D....PB....AL...3O...f+7....Lv.....C...CL...Hv...f+.....L...3O...f+B.........P.........AD....v.........9C...3OAB...9af...f+X....HP...f+B...AL...DP...f+...........C....9K...3O...P.C...AbA...f+.........Hv...P.C...BL...HvA.....L....vA...........cB..nHz..B..fcH............f+bH........vj....AD....P.........9C...HP...P.A..fCD...HP.....A...9C...3u...f+.....D...LP...f+B....L........n.A...CD...JP.....C...9K...HP...P.A..fBD........f+B...BD...LP.....C..fBD...3O.....A...BL....P...f+....9S....f+B...9af...f.K....3u...f+....9CF...f.A...9C....v...f.C...9C...3u.....C...9K........f.C..fBL...3O...P.C...9K....v...f+B...BL..........C...BL........3.C........Jv...n.O....Lv...P.C....L....vAB...9q....f.C...9K...3uD....9C........n.C...CL...LvAB..fBbB...P.C........Nv...v.C..fCL...Lv...3.C..fBL...Lv...v.GH...NvA...........iB..rHz..B..fcH............f+bH.......PvC...fBL...3u..........v......C...AL..........DH...3OD....AL...3O.....C...AL...DvI....AD...3O...f.A...9C...Hv...f+B....D...Lv..........f....f.C...AL...DvA.....D....PJ.........Pv...n.C...9C........3.C..fBL....v...n.C...9K...3uC...PDL...Dv...f+B...9aA...v.C.........v...v.C..fBL...JvI....9C...Jv.....C.........v...f+.....L...Jv.....C....b...........Pf...v.G....3u...f+FH.....B....9K..........DH...DvA...........B....9K..........H.....v...........s...LBM.f...XGB............3OGB.......Bbf...v.4....JP.........9C...DP...f.A...AL...HP...n.A...BD...LP...P.A...CD...JP...v.A...Cj....P.A..........N.....L....P...f+B..fCL...Dv...f.C...BD...PP...n.A...BL...3u...P.A.........v.....m....DP...P.C...9C....P...P.A....L...DP..........L....vAB...ArA...f+B...BL...Lv...DAC..fBL....v.....+....Jv...f+....CL...3u...P.C...BL...Lv....AC...CL...Dv.....C...9K....v...P.C...BL...HvE....9K....v...f+.....L...Dv...P.KH...LvC....BL...3u..........P....f+B...9KA.....C........Hv...........q...MBM.f...X+A............3O+A.......Cr......C...AD...DPF.....L...3u...n.C...9C...HP...f+B...9a....f+....9SC.........9C...LP...3.A...BD...Hv.....A...AL..........A...AL...DP...f+B...9qA...n.A....D...Hv.........AD..........v.....v.....A...9C...HP........fBL....P...P.A....L...Dv.....C...9C...3OE.........Hv.........AD..........j....3u.....A...9K...Jv...P.C...9K...Jv...3.C...9K...3uD....9C...Lv...f.A....L....vD....BL....v...f+B...BL...HvBB...A7f.....H....Jv...f.C...Bbf...P.G...........fJ..fiPC.H...1e.............9ye.......n.W....3O...P.C....D...3O.....A....zA...f+.........3u...f.A...AD...3O...P.A...Az....n.A...BD....P.....4....Dv.....A...AD...Jv.....A...AD...3O...f+B....L....P...P.A....L...3O...........A...f+B....D........f+B...9KC.........9C...Jv...f+B...9C..........A...9C...JP....AC...BL....P.....cA...Hv.....A....L...Rv....AC...9K...3O...P.A...9K...Lv...f+B...9C...Nv.....A..fCL...Dv...3.C...CL...Qv....AC..fCL...Pv...3.C..fCr....f.C..fCL...NvAB....fq...OBM.f...X+A............3O+A.......AbA...P.A....L....P...P.A....D....P0...fBD...LP...P.A..fCD...DP...v.A...DD...LP...HAA....D...HP..........D...DP.....A...9C...HP...n.A........DP...f+....CD...3u...P.A...9C...3u.....A...AL....P...v.A...9K..........C...AD....v.........AD...3O.........9C...HP...HAC..fBL...Hv...f+....9K..........C...AL...Qv...3.C...AL...3O...f+T....Jv...f.C...CL...Qv....AC...Dbf...HAG....Pv....AK....Qv...HAC..fD7.....AC..fCL..........DK...jPC.H...Fa.............9Ca.......n.G....3O...f+X...........A...AL...Jv...P.A...CL...LvA...........A....BD...HPD.........3u...f.A...9K...3uO....9C....P...P.C...AD...3u.....C...AL...3O...3.C...AL........f+B..fBD..........C....b...........v....f+B....L...Dv...P.a....3u.....A...9K....P.........9K...3uL....9C...Dv...3.C........LP.....A...BL........f.A...9C....P...........B.....A...9K...3O...f.A....D...3O...P.A....D....PC....AD...3u..........fn...QBM.f...XrA............3OrA.......B7A.........9C...Dv.........AD...Hv...........B...f+B...AD...LP...n.A..fCD...3u...f.A....D....PAB...9Sf...P.E.....P.....U....3O...f.C....L...Dv..........vB...f.C...AL...HP...P.C...CL...Dv...P.A...AL........f+...........C....AL....P..........P....f+B...9a....f.C...BLA.........BL........f.C...Br....P.A...BL...HvAB..fAb......C....r..........AL...DvA...f.L...BvB.....L..........XJ..fjPC.H...Fa.............9Ca.......n.O....3O...P.A...9K...3uAB....TH...P.C....D...3u..........D...HP...f.C........3u...f+....9K..........C....D...3O.........AD...Hv.........AL...Jv...f.C..PBL...3u...P.C....L...Fv...f+.........3O.....C...9C..........LL..vjPC.H...lY.............9iY.........EH...3OF.....L...3u...v.C...ALXlBRv...v.C...CbA...f.A...9C...HP...f+B....L....vD...fDL...Hv..o87....9K...3uAB..fDLA...nAC..PFL...Dv...n.C..fB7A...P.A....L...Rv....ACZcPDL..fRv...3.C..fC7....P.C...BL...Nv...3.a....Jv...v.C....L...Iv...f+B..........2B..PIz..B..fcE............f+bE........PC.........Hv...P.C...ALF...f+B..fBL....v...f+B....L........v.A....D..........A...9K...Dv...f+B....D...Dv...f.A..fBL...Dv...f+B...BL...Jv...3.C....L...Dv...P.G...........H....DP...f+B...96A...n.C...AL...Nv...P.C...9K...Dv...f+....9Sf...f.O.....P...P.C...9C...3OB....9K...vO....+XH.....bB..TIz..B..fcE............f+bE........ve.........3u.........9K...DP...P.C...9C...3u...P.A..fBD...3u...f+....AD...Nv.....A..fBD...DP...n.C...AD...Hv........fBL...Hv...P.C....D...3u...X.C...AL...Bv.....C..........1B..XIz..B..fYE............f+XE.........B7NyL06+++GP+++e.Y......+++e.A...9a....v...f+9+++Az+++GPAJ...ATA+++e.I...AD.....+++e.++++Az+++GPE.....f...DP+++e.A....v+++Iv+++m.K.........f+B...9afA....qH...7uGB....Po...WBM.f...XQA............3OQA.......BLC.....A...9K....v...n.C....L....P.....C...9K...DP.....C...9C....v.....W....3O...P.A...CL...3O...n.C..fBr....f+...fBL...JvB....9K...Dv...P.O....3O...f+B...AL...DvAB....b...........vq...XBM.f...XMA............3OMA.......ALAZlYv.A...9K....v...P.A...ATf...f+TA...JP...f+B...BD...3O...f+B........NP.........9C....v...n.C....D...Jv...f+....BD...Dv.....C...9C....v.....A..........J...PDL...Lv...f+....BL...Lv.....C...9K....v...f+B...AL...DvC...f.L....v...v+B...+q....f+B..........cB..jIz..B..fED............f+DD........vA...........A....AL...DvC.....D...Dv...f+....9CA...P.A...BD...Jv...P.A...AT....P.C...ArA...f+....AL...DP...3.C...9C....v.....e....Hv.........CL...3u.....C...AD...Lv...v.2....3u.....C........Jv...f+....AL...3u.....A...9C...7O...f+....7C..........PI..flPC.H...VP.............9SP.........G....3O...f+HB...Lv...f.C...AD....P...3.A....D........P.C....L...JP...f+B...AL....v...f.C...AL...DP.....C...AL...3O...n.C....L...Lv...f+.....D....v...n.C........HP.....A...9K...Dv.....C..fAL...Bv...H.G.....v.....K....7u..........fk...aBM.f...X.A............3O.A........bC...f.A...AD....v.....A...9C...DP...f.A..fBD...DP.....C....D...DP.....A....zA...f+B...CD........f.A........DP.....C....7B...f+...fCL...Dv.....C...BL...Sv...HAC....D...JP...3.C..fBL...JvE...PBL...Dv...H.C....L..........bI...mPC.H...VN.............9SN.......f+R....DP.....C....D....v.....m....3O.........AL........P.C...9K...Hv...P.C..........A....AL...DvCB....vn...cBM.f...X4.............3O4.......fBbA...f+....9K...Lv.........AD...DPa....9C........v.C...9K...Jv.....C...BL...Dv...f.C....D...Lv...n.A..fBL...3O.........9K...Dv...f+.....L...Hv...f+.....L...3u...f+.....L...3O...v+....+S............k...dBM.f...X1.............3O1.........b....f+B...9KA...f.C...9K...3O..........v....f+....DD...3O...f+D....Dv...P.S....Nv...n.A........3O...f+b....HP...P.C..PBL...Hv.....C...9K..........rI..vmPC.H...1L.............9yL.........o....Dv...3.C...9C...Dv.....A...9C........P.C...BD...Dv...P.W....3O...P.C.........v...f+....9S......C....LA...v+B...9K...vu..........fl...fBM.f...Xv.............3Ov..........C...f+B.........v...P.A....D...Dv...v.C...9C...Dv...f+B...AL....v.....GH...DvC....AD...3u...........m..ffBM.f...Xq.............3Oq.........jA...f+...fBD...DP...f+.....L...JP...n.o....Dv.....C...9C...Hv.....C..fBL...3O...f.C...9C...Lv...v.a....Nv.....C...9K....P...P.C....D....PA....9C...3OA...........MB..DJz..B..fsB............f+rB.........K.....D...3u.....A........Dv...n.C...AL...3O.....C...9C...3u...f+h.....v...P.C...9K........f.C...AL...3u...f+....9i....f.C...9C...3OAB.....j..fgBM.f...Xn.............3On.........Tf.....D....DP...P.Q...........C........3u...f+BA...Hv.....C..fCL....v...f+B....L...3O...f.C...AL...3u...f+....+C...3O.........7K..........zH..fnPC.H...lI.............9iI.......P.M....3u.....C...9K...3uA...........P....DL...Lv.....C...AL...Hv...f+....9K....v...f.C.........P...P.A....L..........A...9C...3OA...........LB..JJz..B..fMB............f+LB.......JPB..........P.....o....3u...f+....AD..........C..fCL...3u.....C...CL...DP...P.g....Lv...DAC........Dv.....C...9C....v..........vh...iBM.f...Xh.............3Oh....f+++8iB...v.C....L...DP...f+B...CD....P...f.C....L...3u.....C....7....v+B...9K..........HI..3nPC.H...FH.............9CH....LyLG.EA...Dv.....C........3O.........AL...3O...f.C...9K...Nv...v.C...AL...Lv..........L...3O.....A....j....v+...........JB..PJz..B..f0A............f+zA.......DPB.....D...3O...f+H.....v..........Pf.....W.....P.....C...9K...3O..........fi..fjBM.f...Xb.............3Ob........ATC...f+....BD...DP.........9K...LP...P.C...CL...Hv...P.C...CL........f+B...9KA...n.C....D...Dv...........h...kBM.f...Xa.............3Oa.........fC...v.C...9K...Hv.........9C...Dv.....C...AL....P...f+B...BL....P.........9C...3OB....+C..........fH..XoPC.H...VF.............9SF.......f+FH...DvE....9C...JP.....C...9C...Dv...P.G....Hv...f.S...........A........3O...f+D...........bH..foPC.H...FF.............9CF.........v....DP.....A...CL...Hv.........9C...Dv...v+B....L...3O...f+B..........JB..ZJz..B..fYA............f+XA.........B....AD..........b....JP.....D....L.....E..f+H...AL..........DX....vA...........FB..bJz..B..fUA............f+TA...fYlY3OA....9K...3uF....AD...3O.....C...AD...Jv...f+B...9af...f.K....3u..........fg..fmBM.f...XT.............3OT........Ar....v+....AL...DvF....9q...DP...f+J...AL...Bv..........Ph...nBM.f...XS.............3OS.........LC...f.A..fBD...Dv...f+B...BD....P...f+B....L...Dv...H.C....L..........TH..HpPC.H...lD.............9iD.......P.K.........f+....9CA..........L...3u.....C....7.........f.L..........TH..PpPC.H...VD.............9SD.........i....DP...f+....BL....P...f+B........DP...f+B...9q......C..........DB..lJz..B..fAA............f+.A.......3uA....9C...3OA....9K...3uAB...9S...........vg...pBM.f...XO.............3OO.........PA.....A...BD....P...P.C...9K...3uD....AL...3O...f+B..........CB..pJz..B..f4.............f+3........HvBnYl4+K..........H.....v...f+....9y....f+B...9C..........LH..vpPC.H...VC.............9SC.......f.i....Dv...f.A...9C...Dv...f+B.........P..........vf..fqBM.f...XL.............3OL........9CB...f+B....L...3u...P.C...AD....v...v+...........BB..vJz..B..fw.............f+v.........PCLyLCAL...HP.....C....7...........L..........LH..HqPC.H...1B.............9yB.......f+L.........f+B...BL...HvC....AL....v..........ff...sBM.f...XJ.............3OJ.........vAyLy..A...AL........f+....BL...3O..........Pf..fsBM.f...XJ.............3OJ........9iA.....A...9K...Dv...n.C....L..........HH..fqPC.H...VB.............9SB.........M....Dv...f+B...9C...3OB....9K..........DH..nqPC.H...VB.............9SB.......f.Y.....P.....C...9C...3u.....C..........AB..7Jz..B..fg.............f+f........3OE....BL....v...P.A....D..........DH..3qPC.H...FB.............9CB.......f+T....3u...f+....9K....P..........Pf...vBM.f...XG.............3OG........9aA...P.C...9K....P...v+.............fvBM.f...XG.............3OG........BLA.........AD....P..........Pf...wBM.f...XG.............3OG........9KA...P.A...AL...3u..........Pf..fwBM.f...XG.............3OG........9y..........9K..........HH..frPC.H...1A.............9yA.......P.K.....v...f+....9S...........Pf..fxBM.f...XG.............3OG........Ab............g...yBM.f...XG.............3OG........9S............g..fyBM.f...XG.............3OG........9i....f+B..........CB..PKz..B..fc.............f+b........DvA....9C...3OA...........BB..RKz..B..fc.............f+b........3OA...........DB..TKz..B..fc.............f+b..........C.....D...7u..........ff..f0BM.f...XG.............3OG........9a............g...1BM.f...XD.............3OD........9q....f+.............f1BM.f...XD.............3OD........Ar....v+..............2BM.f...XD.............3OD........9q....f+.............f2BM.f...XD.............3OD.........vf...3BM.f...XD.............3OD........Aj....P.C............f3BM.f...XD.............3OD.........vfyJQ28L.f...PU.......nFD...bP...3AA..nGD...fP...BBA..XHD..PhP...MBA...ID..vjP...XBA..vID...nP...hBA..PJD..foP...nBA..nJD...rP...1BUA...vjxD4OCLHGO9iPeF4OSJSj+LoLQ9iforji+DvjxD4OSJSj+PPJK43OmC3h+jxRN9y4.t3OmC3h+D3pXd0OAhTnE8i.qVVJ+.+Is6S..........D....vLyLyOlYlo+D..........A....LyLy7iYlY5OA.........P.....yLyL+XlYl9S..........D....vLyLyOlYlo+D..........A....LyLy7iYlY5OA.............uP.....3........vOMyLy8zLyL4C...vOC.........v..B..HE...............L.f...RA..........A....B....L.....A....A....D........3O...f+D....P.....A....D....P........f+.........HP...sBYD.....C.H..fT...............v..B..HE....................v..B..HE...............L....vA....A.........fC....P.........PJb8XO...f+.........vu...bBA....................................................v.....J....D..........N.....A............7BA....zLyLyO.....A..VND.....yLyL+....9C..XQQ.....MyLy7C...DP................C....n....P..........3.....D............fHD........f+.....D...pP...v+B...CD...3O..fdEA........vO...P.A...............D....P........f+....EL.....C....L..........A....T.....A....A....L....f8nvAPsdT3+....+C..D1v.....P....PA.......P.A..vIL...rv...vBC...KbA....Wbaz3.....................PA..............................P..........P....P.....C.......f.jxLyzO...v+...zHD.....D....T........mv...P.A...KL...rv...vBW..........Wbaz3................T...............................D..........D....D....v.....PGEt9zQgq9CWOJ3O3z03B8E8GNTA....E........EL...bv...bBC..vIL...mvE.........vE2FMN................E...............................A..........A....A....L....vGEttORgqm+v0iB9C..HtP..frBW....PA.......vAC...EL...mv...bBC..vIbA.........bwsQmC...............PA..............................P..........P..........C....fqGE+SOJb0OtdT3+................T........Tv...PAC..vIL...mv...bBW...............................T...............................D....................P.....C....zLyL8yiBWmu...v+...PFD...............P..........."
                        },
                        "snapshotlist": {
                            "current_snapshot": 0,
                            "entries": [
                                {
                                    "filetype": "C74Snapshot",
                                    "version": 2,
                                    "minorversion": 0,
                                    "name": "Pianoteq 8",
                                    "origin": "Pianoteq 8.vstinfo",
                                    "type": "VST",
                                    "subtype": "Instrument",
                                    "embed": 1,
                                    "snapshot": {
                                        "pluginname": "Pianoteq 8.vstinfo",
                                        "plugindisplayname": "Pianoteq 8",
                                        "pluginsavedname": "",
                                        "pluginsaveduniqueid": 1349793905,
                                        "version": 1,
                                        "isbank": 0,
                                        "isbase64": 1,
                                        "blob": "39241.CMlaKA....fQPMDZ....A.Ec3DG.HPv.....f3TVfLEckkla2EVdfPDHCwVXyMWZiEFa.........jYCPImUKkB..H.VFQET8iI..n....fLvHiMu.yLuHSLW.....UZg41azUVbffiKz3xLuHCLxTCL1DyLAmgxDvBvRtjXQYcy3BMZmQFarEFuXB..zQFcMMQE..vE....NkEHSQWYo41cgkGHDAxPrE1byk1XgwF.....G....zzajElbzQGR....TgVZyABbxU1bkQGHuYlYkI2bfDFHi8VahklakQFHsk1Xo41Yf.WYxMGbkMFcoYWYfbWZzgFHgAxXrE1byk1XgwFHy8VctQlK.....PT...vE....NkEHSQWYo41cgkGHDAxPrE1byk1XgwF.....xQA..bjTUUE...fA....AL.vMQkbqA..TvE.+KfFffTX4QlafzBHS8lagQWXfjlafbDHsElZuI2PvNjdBNCfxjSGfdDGX.4QAIGr.MBI.UyI.0yI.8yI.EjI.QD.CwmI.gjI.wD.C4mI.8TI.A0I.E0I.IUI.M0I.QUfV.jUp.zUQ.JRbTAr.ckAPhjLe.KPWoAnJwwBvBzTH.oRBI.fGcRGvBTRn.zNC.HR87Ar.MxCfNDG..nR+X.n6vQA2vAAPNjQFriMB.KP.P.j2fSM.tCO.LTQDbSOCx.n6vgA2vwCPtiN..5PbH.j2TyCCETO.tiP.LzPHbSPAZDnEwQEPVjPLAXQ.AAnGwADPdzQTApLb.PQbX.Ob7.jxXi.EkD.7nyG.dDPVvSPFHSOAlVQ+vAnCwADPNDQkA3P2b.nxvgB7vQCPJyMGvSMF.ZQbLAjEIjL.JSP.viPBtCnGwgB.VzNH.4QAEHH.djOc.5MbnvPb7.j2bB.ftCGD.4P7PwNvbDr.oBH.tCPF.KP9DAf2ziDvBjPN.3P.cAr.czI.wzI.E0I.UEI.k0N.skfG.TVl.DUn.zSl.jSp.TSf.DSm.TRk.zPk.jNn.jJl.D.lLDTB.JRb..Sbr.jHgDALEUEvND.N.HREIXEf5DGW.oS+..fLkCKf9DGW.4SIACnGwAEPdDP..pRb.AjJcD..9TPB3zOjbzPWnTQCd.nHwg.EwACPhDPBTjPP.6PQ3AfEIjKvNTElLDFnLzFeMjGm.pRb..rCABEPpjMB.HR2v.rCQBJCkh.fxDGU.ISCEArCsBH.pTOF.6PrDAnCwwCGwA..xTP..4PCY.rC0RBPdTQY.6PwX.fCMTHvNDNC.3Q.IBrCwyIC4CJC4iRC8iICEDICMjICQDJCQzCfdDGR.4QKY.rCYDHfBDGE.6PLI.n7vABPBjQMvyMN.6PUMAfG0yCfVDGE.6Pd4.jEIzEvNTYO.5Qb.AfEAD.fdD..bDGG.6PtEAjGIzEvNzclLze+.HOmX.nEwwCPVDTI.3QA4EnCwA..VDPS.4PLMAn8vwDP1iPM.HP.gSOAMHBCYSCfpDGX.oR8L.nBwAA9vQDP5SNFHDLpAnO1L3CvBDIb.pLbf.r.Ei..JjLT.oLn.Ar.kiI.wSD.JSNW.KP9XBPAYBPCYBPGYBPJUBPLcBPOIAfJoSEvBTU.Ljdj.zW.LjXj.TX.LjPl.jS.LDFH.pRbrfObP.jJkE.fJDGH.oOQMfPNQ.r.IC.CAvI.A.E.5CQ.HjQCtBnBwAB9vAAPJjSE3CR0.nPFAgOCEXNJsyAfxDGP.ISJMCnNwAB.xzPG.oSMsFnLwQBPxjVa.nS.o.n9vA.CwwCP5CPVLjPR.HS+vwPCkgO.M3.fNDGL3CG.vDGC.4PKofOHA.SaUCfCUDBLMzB9Hzfh.5PbTPRbr.jC4D.IgkAfBDGH3CGG.IPCgfOAsAfCcDG.MDAvBDOI.nO+zAr.AkH.k0I.0UfX.jWl.TXr.XRrXDr.4UIfNDGB.KPY8.jC0iAfBDGC3CGDnDGI.KPSY.j.Ai.9TC.J8yGvBzSM.3PBw.P8r.r.szA.5yOe.KPGoBPCU.nLwgB.pzNJ.ISC0.r.8CJ.sCAf5DGS.oSHs.r.oyI.gCCf9DGR.4SMkAfL8CAvBTLm.D.a.ZTb7.jQUkA.5TPH.pObHfPbz.jBoz..9DQ..oO7v.fQkDKBUzD9.jfrApObffPb.PTb7.j9zC.Qok.BEzJ.FEQHHTPS3CPCJAn2vgBPdSRB.pOb.vTbz.j9DD.Sc0K.dCQ.3CPT.KPcTBP3bBP+XBPAYBPEYBPKYBPScBPWUBPXkDfS0i.vBTUh.JVbX.r.oj.f5CGFbCGA.IVUYfOGIvMEUAr.wSF.dCPG3SPF.KPoHBP.rAnVwwCPZUTi.6PUXxPY7.nUwQEPVERH.6PczBfX4iKfNEGQ.4TK0AfV8CHvNDHd.XU+f.rCMhICkB..NEPW.ZTbz.rC4h.f5CGF.YT.8fO5.Ar.IB.CESI.5iO..KPy.vPwbBP6fBP+.vPxXBPCAvPzXBPFAvP4XBPJAvP5PBPLYBPM4DPLAvP6LBPJAvP7LAnUwwA.FUOH.YUGQ.r.YD.C8CAf5CGO.oO+LAr.ID.CIzEPdiIO.KP7.vPFMAf9Dj.fNEGQ.4THA.r.cC.CkzF.diHK.KP0.vPKYBP0.vPKQ.fU0CBfFEGQ.YTFk.r.MC.C0TG.NEPH.KPv.vPQQBPs.vPUk.nOwQEP9TS..XT+f.r.kB.CoEJ.cB.C4kI.YB.CM1G.9jPG.KPi.vPqcAn9vg.4vQCvBzG.LzbB.oO+XPN7P.nNwQEP5DQF.KP..vP6UxP+UAfNIzfI.pSbbAjNMjAf1CGI.nOyf.j87yL.5zPJ.JSbDAjLcTO.xDQ2.pSb7.jNQ0afxDGP.ISLkAfN0yR4zCG83CBLADAfpDGS.oRKc.n9vwDP5CN6.nO8LnPfJCGa.oLrrCfJYSgJHCI4.pRbLAjJoSf4.KPhTBPuvCP3XBP7HBP9XBP.YBPCwBPFYBPIYBPLcBPMMBPOcBPQcBPQ0DfJYQMfxDGY.IS2jDr.A0Af1DGY.YS5b.r.4zH.sjI.YjH.xTOD.KP9P.fM8yDfRDGM.KPvH.jD8DIvBDHN.pObb.MbH.fDUjBP5yKEPSKB.KP.vCf9XSBzXifSAJQbP.MbbfObX.jDwzCzPC.9nCS.5yOBPCPePjOAhBnEwgEPVTQ.A5Qbb.fEATCPdzQVAJMb.PQbr.Obn.jE0j.zbCB7bCS.dTP.viOIPSNA5VQ8PAnDwQDPRzSxAJMbrvNb.Aj63y.znBCfVDGT.YQFQ.fDsyI6HTBz3SfiUDO0.5QbDAjGcTN.djQKAZNbvAj4zxEfdDGT.4QBMHV.dzNy.ZKbn.RbTAjsPhAH8RDvBzJO.XNvTAr.ciI.0CJ.AjI.MjI.cTH.hzKA.KPKYBPMoCPOcBPPcBPPQBPM4AfsjBBvBzPe.JRbb.r.ACAflCGD.IRB8PN77.r.APfmAHRg.CnLwAEPxjPmAZQb.AfL4y.PVzQ..XNzHBn1vAEPZiMAtBfEA..PVjDqAJRb7.jHQD..VzNvYyNe.5Qb7.jGYkBfdCGS.HR8D.j2fSf7A3Q9jAnJwwCPpTRAN.nCwgCPNjSH.nR9z.nuvgEP9BMJ.3MvHHGvNjdL.5QbH.fC4CDPdzQJ.6PoYxPaQxPOcxPAcAnEwwCPVjR..6PvPAfG8CCfBCGF.6Ph7.jvfSEvNDGb.3KjHCrCAhICIhICQhICYxI.VTO..6PnnAnHwQCvNjJF.IRGEBrC8RICgSICETFfBDGB.HL+r.rCoj.PBDSG.HR4X.nwvwEPFSN..6PRYxPWgxPccxPlUxPxcxP8QxP+AEnEwQEPVjQO.HP9bVL1LCnxvgCCwwCPJCLBLDQ..XQ7LnWxPxCC4SFfJDGOXBGD.oPzbgInPDr.YyF.ZhMK.KP.cBPEAvPtkBPJAvPOMBPOAvPxXBPTAvPbXBPXAvP.XBPaYBPeUBPicBPpcBP+IEn4vQCPliTD.nPA0.r.UkI.QCJ.APfkATIl.DLl.TNn.jOl.TPl.jQj.TSn.jUl.TWl.jXk.TZl.zeUAXN9n.n6vwCPtiQCAJObDAj7rjL.tCOV.KPQcBPjb.nxvABNwAAPJSWI3DXK.KP.f.f7HjLxTzf3.pLbj.jxrUM.JCRBFAnOwQDP9jRr.nS7r.nQwgDPF0SPA3SBABnBwgAHwABPJjXGfjTU.XTA8CR.MnKfhDGN.IRP0BfHgTfqA5Pb7.jCgTD.JDOk.ZQb7.jEEkF.NzOLAJOb3.UbP.j77zATYFA.VTPBlGU8..nXwwCPhUSAl.fXIDCfFEGO.YTLInF.FUOh.JUbbAjTQTGvBjIl.zMi.DPb.pSbH.fT8yAvBzQH.oSM8Ar.4TC.xiNd.KPTcBPaAvPQTBPmAvPTbBP+8.fNA..f5DGg4ze..6PWzAnQwwDPFUSa.6PZTBPe0AnNAfBvBTS.LTGl.DQE.pRb3.jJ0TDvBjP.LjHF.XT8HBr.UD.CchI.gD.C0hI.sD.CEiI.4D.CQCI.AE.CUyI.IE.CciI.ME.CoCJ.QE.C4SCf5DGO.oSNo.r.QE.CQDI.4D.CwzF.pDOK.KP.AvPXcAnOwwC6vA.vBDJ.LTZD.4SNsvNCkBr.A..C0GG.5zNK.6P+w.f6DTf88DPH.pRbDAjJczV.pTNk.JObTASbH.j7bSCLwDK.xSPARFS9rAnHwQDPhzPzAHR9TAnGwgDPdTTd.pOb7.j97i..dTRChCnGwgCPdTUX.pLbDAf9vi.PJCP+.ZQbf.fG8SBPVDPv.XQAQBnGwwEPdDQeAZQbDAjEwTI.dDPgA5Mbz.j2Tj.fNDGQ.4PTA.fEoCBx3CK2PDgI.5Jb7AfCADAPtBIE9EfqPCKfpDGW.oRyTFr.ghH.cCJ.0yI.8SI.EzI.QDI.cjI.wjI.8TN.IkI.UkI.YUf+.zUn.JSbTAfJgBAPxDNJAZSbXAjMkyFvBjUm.HS2..r.E0I.Yj..1zOW.JQbn.r.oiAPRDQN.pObH.Mb.Aj9Pi.vBzIE.IMtzAfDMDAvBD.V.nO5v.M2HXefRDGDPCGD3CGI.IQD8.My.fO13CfDIzA93CBz7Sf4.ZQbTAjEoyM.VDPB.5QbLAjGMzYfVDGDPCGKvCGA.YQZY.M63.O93AfG4CE7HjBz.TfZUDO4.JQbDAjDwjdfVDGS.YQNA.nzvAA6vA..RzOQ.IM4.vN9LCf6.TFz.TfIUzMy.5QbTAjGgzM.dTQAFAnGwwA4vgEPdDNWjiDCREfGkiIfhDGMzBGP.IRvb.r.UBCP1RIa.KPvbBP4jAf4jhCvBTOl.DPl.zPl.zQl.TRl.DSl.zSZ.HRpv.r.EkI.MkI.E0I.oTBfhDGP.XKoT.jHwSBflCG..KP93Bj4rhBvBTLl.zKj.jLl.TMl.zMn.DNl.DNW.pRb3.r.gyAPpzOe.KPzz.fHcSDfxDGH.KPrz.jLsj..pzOW.KPdXBP.n.nEwQA.lCMH.pMbb.jEkDC.xzOD.oM0PDr.AxI.MRI.QxI.YxI.chM.VTLU.KPlnAnHwACvBDIH.IRI4Ar.EhI.A...ZyLn.5QbHvMbDAjGAEA2rCB.hDPBVBnHwQEPhDPG.3QdvCnJwQDPpTRE.HR6jDnuvg.CwwDPNzR.7ROH.3M5bgR97Gr.4gH.ARafdDGG.KPcP.fCkCBPdDRa.KP.TFnvvg.EwgIPBCP.TDTW.3Q+jwKvHnBEgyBfhDGS.IRFIEfv3SHfFCGI.DGO.YL3..PEI.fH0ifcAZQb7.f.ECBPVjOLAXL6XBnxvABCwA..VjNO.oL2.vPGM3I.JSKTApPbz.fCwCBPJDOK.pIbTAjl7RGvBzJl.TOG.nI67Ar.EjJ.UjI.oDJ.ME.CEFI.oE.CcSI.AF.CAvN.Q1I.k1I.A2H.8Wfz.ZNbz.j4DlB.JTPY.KPaUBP6bBP.LXa.AhI.IhI.QhI.cxI.kRI.sxI.4xE.liOG.5Nbj.r.MiAPtyQe.KP5XBP+jAn7vQCvBzPB.IOLQBr.Yj..tCPj.KPDEBnxvgAvBjJG.oLaA.nNwwCP5DXO.KP.H.f7HDLxHzfDApLb7.jxvzO.JCQBd.nOwwEP9DQs.nS8H.nQwQDPFkTVA3SAkAnBwA.HwwCPJzXBfjVd.XTAgBRAM3LfhDGM.IRVQEfH4SfX.5PbHAjCYzV.JTOO.ZQb7.jEsTH.NTP2.JUbX.Obb.jT4EB7jjI.VzOBVEUA8.nXwADPhUSAV.nQwA..hkPO.YTMQEr.8BI.oCJ.8iI.EDI.QzI.F0M..KPE4AnTwQBvBzPF.IUL8Ar.oiI.EBJ.A..CEwGf5DGG.KPpX.jNYkG.R0OB.KP7.vP.TBPCUBPIAvPQbBPOcBPXcBPfIBPkAvPTXBPZY.fNUiHvBDQ.LzEB.ZTbDAjQszDvBzIm.D.i.zIm.TN.LTFD.pRb3.jJ4DEvBTPG.HO7PPT9jAr.cD.CwgI.8jI.gEJ.UlI.IGI.8GUfxDGO.ISHkCnNwADP5jSE.nR73.r.AF.CMhI.MD.C8RB.xzO..5Sb.wNbD.jOcEC6PD.vBTG.LDPl.nSAA.r.A..C4DH.tCQF.6PYcxPjcxPvgyP4YxP+sEnJwwDPpzPdAnR6fvS1TBn7vgDPxiP..JSbTAjLQTK.xSQApBS.YDnHwwDPhzO+.HRE0CnGwwCPdzRg.pOb7.j93C..dzQCFDnGwADPdzRI.pLbPAjxDTKfVDGB.nO2TAjE8CF.dD...5QbDBfEITGPdDIzAZQbz.jE8j..dTPANPQ+3.nCwQCPNzTD.5Mbv.j2DzE.JyOsbyPD1CnqvQFPthKB.3P.U3QqvCUf9DGZ.4S5D3UvBDIm.zKl.TNl.TOn.zOj.jPl.TQl.jRl.zS3.jTm.TUk.zUl.TVl.jVl.zVKAzVm.DWAFAnQwwG.9TKF.YTj.EnRwQC.F0MJ.oT8XAr.oEI.MkI.kzI.JUO..KP9bAnJwAA2vACvBTLB.oREgvMrzAr.4AH.pTPG.KP.T3FfZDGDnDGQ.oQ2HfR9D3CvBjIl.jLn.jNm.TOk.zOk.TP6.zPh.3MfP.r.UDJ.cjI.kDI.ozEfJCGS.oL3HBr.czH.AjI.ACJ.8gI.ghI.YCI.0iI.EzI.QzJ.cjI.oDLfhDGH.nR9j.jHADBvBzQD.nQgj.nEwQFvBTRC.YQubAfH4CCvBzSa.XQ6r.r.gkI.40I.MVI.c1RfhDGA.KPj4.jHIzEvBjVf.pRbf.r.sTA.hzPH.oR9jAr.ciI.A.K.JSMQ.JRbDAjHkDAfNCGDTDGK.nR+f.jyLyAEYC.vBzGn.jMl.TPm.jRT.XQ9HAr.UE.CgmI.QF.CYFI.8G.CgkICcDJC4hICA..++B.PI2bUk4f..PR....J....LGckkla2EVdtkG.....a....bjbg4FYfLEckkla2EVdfPDHn3TY2ARVuI2Zo...........vI2as8F...P.....A....D....fB....yQWYo41cgkma4A....vF....GIWXtQFHSQWYo41cgkGHDABJNU1cfj0axsVJ...f+X...............................PkQ+++++C....................fb4EFaP....H...............7+++++ar81bQ....D....P.....FA..........A....D...............D...............D...............D...............D.....C....C8laiUlbzABRgwFa.....D...............D...............D...............D....................v..B..fkF.......QP...f+jF....aWI5OAxNyL+iY.Bcu+fXlY7C.NybOPYlY+vNyL+CayL6OP....w1Ly9ChYlwOHZlo+.fyG4C7++2OflYF+BRlY8K3++2uXYlw+BjyL4Cz3+zu.zLS+vy8S9C9++6uvKyb+RDQj.LrLyvu3++u+BzLy7K...Xs.37Q9fyLy+CvMyjO.3Ly8.nwk6KHyLAvfYl4+BKyL9K9++6uv...+viYl9KF..DPxb4H.QkYl+C.J1gOf9++9h+++9KiYl8uvxLi+B...VK8Ly3O.MyL+hyLy+C.NybOTyLy+.PBLzKn++uuLlY1+B...VKPD+luDLL8+.Hz89CACS+O3++u+BZlY7KTlY1O.lYl9HyLy.DoYl8O...H.gXv4+KHyLAv7Xlo+h+++9K...BP.NyL+PYl4.LMyLJvfxLy9BfyL2CzLyHPH0LS+.ZlY5KL..vO...H.QalY9CmYlGPj..f+fYlY9KXlY.vj..f+PZlY+C8Ly3OxyLK.A..PBDVlYIv.tLS9hxLSAL9++Hvn++W.CzLSBL9++HvxLyr.CNyrALYlYQvC....D...............L....................v.....................C....D....P.....A........9C.....A.........vF3EkOC.H...FV.......pAA...9CV....QNUI+b0X+NxOqc1I+T.tl7SDMbxObo3I+TDFq7yW1pxOdDwJ+XI7p7i6LuxOiPYK+vKfu7C.n9xOjcdL+fW8v7ybEHyO6N1L+LzNl7SGr0wO8GJG+rBnn7SHzLyOVh0L+P1Wz7ydgeyOJFBN+zx467CCt1yORtQO+X3S87SU0FzO0bxP+TTEE8CULVzO7dwQ+nWkJ8ig8A0OxbDU+D.JZ8y0I70OpgzX+L0in8ipw.2OMT4b+zSK58SZsx2ON1cf+fQVD9SMhZ3OMCHh+DAIJ9yNT.4OXKAk+3W1X9SAbs4OzKEn+7UFj9iE7j5O8JLq+LeIw9ShMU6OMlkt+HOB99S1y56O5lYv+TBeA+ikiL7O0VMw+jpSF+CREk7OlHqx+nEVK+iz.x7OvFxy+HFWP+SrmE8OiuQz+ndnP+y0xE8O0oBz+7N.Q+iXIA8OffFz+HfjP+SUIC8OxXTz+H52P+S...................Jv...n.A..1JD.....C.H...E...mPA.........................P...................Jv...n.A....v..B..fI.......fZP..fqBI..........AN.f...XB.......nFD..3pPB........9Sf.B........fzD..................f....+....9y..B..fgE......fZP...f+fE....wKx7OWwo228CtQVAPNahW+.qNf.bQ6d7OqP529TRJ4.bV10yuWTex+tXzi9C5sJ9OGEX2+73Pv3SvN0APEMrY+x0eE+qy10iunjrA+JBR57q4lECv1UFd+Lcgq4SWm5lulMeV+.N3J+KMZJ9upjh6+ZXNr.rMNQ9OuS6s+hIV76CtRcBPieJK.MTDD9S.kuCv+.Oq9naj68CJV2+uEKV4+.C5y.bCcl9OT1vN.E6ZB1SIM4BP47dw+H9iC8CNWbyOSSnJ.s7hT.jKCpCPv8bn8JIvS.TO.C7uozpO9dl1r.rY+QBPSJ18+p+vG.bzfJ9u8+ch97JTc.jZZR.vDrRr+XxEH.TTDy9uKsQC.wZ6b.b2XQAv3Qnl+rHc5.DXKrAP2KK..eNoh6S55oCvbYnN.Wy9a9CWSS8uGB+m+dgTH3qb087uRxQh9NNS99KmnA5OqWzn+FY598yRDFyuGecG.O.f...XXA......nFD...3OXA........j..........9C...3OI.....H....P...f+.....D...3O...f+B...9C....v...P.C...Ab....f+B...9qC.....A....L........f+.........3O...P.A....L....P...P.A...9K....f...f+B....D....PB.....H...Dv...P.i....3u...f+.....D...3O.....C...9K...3O...P.A...AzB.....B....L...3u...P.C....L...3O...P.C...9K....P.....B...9K...3uD....AL...3u.....A....L....vAB....jB.....C...9C....f...f+B...9C..........C....H...3u...f+....9iA...P.A...9C....f.....A....L...3O...f+L.....v...f+B...9C...3OD....9K........P.A...A7..B..fgE......fZP...f+fE...vdyb2OWoQgz8Snv22Od8Xf+v2EH9CPUh2O5QWg+TtmK9igk02ORgre+XjLD9S8zv3OWH0c+7e548CTH92OwmJZ+DORA9S1Mn2OCLxc+ThkH9ydMG3OF6Oh+HrYK9Crfd3OQb0d+jBWu8ivhZ3OvyYb+zreG9iND.3O5ewf+jjbs8SUW32OIp5f+j2pz8CPgY3OgZ.e+z.P.9iKJl1OMlEh+vYZE9CyA.2O4H.g+XRD.9SaOE2OE51b+3JJ38iKYA3OWYUh+n32H9Cyfj3OAtIf+L2OC9yFTN3OgqLc+vcV38iwR91OK1vg+njgv8igfm2OVY2f+vVg48ie5H3OTheh+L68E9i7+I2O4auh+LYOC9S+q02OXxPg+HLU88iHTq3Ogrzb+DNMr8Cw4Z2O93+h+rXen8C+9b2OCXwY+P7t.9yoZl1OG1ef+30oI9y52c3OYAzh+f5W38iPpt3OMVJc+H....P.....UA...TTb0EFafPWYsAWYxEVak4FcJPEZkAxbzElajElbjABc04VZtcFKfbGZkIWYfPGZkAxaiQWX1UFHoMGHjklcoQVYjARZtARLx.RYwUWXrAxbzUFby4BC.......xBA..HMD..X4P...xCA..5OD..XAQ..vKDA..HQD..DFQ..fdDA.fIRD..XIQA..........A.......2CwC...PQ....FA....ve.........b.....QkYVX0wFc..........f.....C.H...VZ.......DAA...9SZ.........fN..............9S.....A....D.....C....C.H...zB.......f+....HD..PfP...HBA..jHD...jP...QBA..vID..PmP...wBA..FKzB.......n.EH...HPAB...ATf.....EH...3OAB....D........f+L.f...XB.......nFD..3pPB........9SfC.H...FV.......pAA...9CV....6kNl+b0jvo1OO3Di+TIOG9C5os1OBInf+fNs98i6wK3Ogreg+nwzn8SPUC2OWFhb+7g2G9i3oD4OsOdT+XZp.9SVTo3OBQYh+nxcn8Swar0OAMkh+L1gR8yqCc4OSBmY+fLeP9SNMi4OGund+nPS68C9hi4O8nkU+n1558y3441OqC6f+HeYO9yEeA2Odeah+bwBQ9iknK2O9nkb+j7OE9SU+F3OM6di+3sul8SRtP2ONz6i+jKUJ9S50c3OeytY+.QFD9CA1o1OEUfg+nIm48SVExzOPySg+TDd68CvLe3O+WvY+3.no8SR8p1OvZBZ+btNL9irPz3Ozlji+3Yfn8yNU40ORjcg+L69w8SLcS1OzYoa+38sI9CHiK6OKLhJ+HO9K8yR450OrKOV+v6K18Skc81Ovgxf+jLAC9idYN3O7.ca+DTiv8iwSM3OLuKf+b4Lr8CbpE3Oz5NX+nTDC9y..B..PA..5QT..........L.f...T..fdDE........3O.....L.f...T...bBE.............f+L.f...T...bBE..........A...............MyLy81LyL2S...................vu....+....9y..B...M.......fZP...bBA..XKz........f+HH.....C.H...l........pAA..tJj..........DH...3OC.H...l........pAA..tJj........f+DH...hPC.H...DB.......pAA..PJD..fpP...sBA...KD..vrP...1BA..hKDB.........HH...3OD....AD...LP...HAA...ED...3OC.H...z........pAA..vID..fsPC........9ifC.H...v.......fECA..HOD..XAQD....H....v.....C........9i....P.C....P.....C.H...l..............9i..........D....3OC.H...l..............9i........f+D3..B...Q..........lLYR93ue+7C...3OD.........Pf...f+D3..B..fI.............f+H..........AB....PyLyjO....................+D....PyLyBPC.H...l........pAA..tJj........f+DH...3u....+L.f...XB........GD...oPB........9SfA....D....P.....L....LzatMVYxQGHHEFarY....fXigVXrwF...LP...bAA...9ilYl4O.....nv0ivC...............PyLyzO..vqCA...9C...3OA....X........3O...f+L.f...XoA......PDD...3OoA...Lb8n8CiHEtd+XAEtd3O...f+b8nv8yGEt1OHEtd+XlYF9iBWO3Ob8nf+fT358C6Qg2OT35g+fqGE9yLyL2OHEtd+XlYl8Cov02OT35g+Lb8n8C...3OCWOh+zLyL9CEtd3OT35g+T.ov02Ob8nf+fT358CtdT3OeT3h+7QgK9S.CWOZ+Lb8n8SA35Qg+7nv08y0iB2Ob8nf+nv0C9iBWO3OIDWOJ9CEtd3OHEtd+b8nv8iqGE1OZlYV+HEtd8iqGE1O6Qga+rGEt8yIjBWO+PJb88SyLyzOWOJb+7nv08Cov02O1iBW+7Qgq8yiBWuO8nvU+PJb88SOJb0OJb8f+XlYF9ydT31OCWOZ+Lb8H9CtdT3OT35g+v0iB9Sb8n3OeT3h+PJb88SyLy3OyLyb+7nv08CWOJ3OCWOh+b8nv8SyLy3OtdTf+XlYl8yLyL2OT35g+....9yLyL2O35Qg+DWOJ9SyLy3OMyLi+P3..B...M.......fZP...bBA..XKz........f+HH.....C.H...VZ.......DAA...9SZ.........LoBWORuNnv0izC.....OJb87pv0i1iBWOZuJb8H7lBWO1SJb8Xu.....vdT31qBWOROOJb87zLyL0C6QgaurGEt8VPyLybOJb8H7jBWO1qBWOBOOJbc89nv00q.Jb8n7xdT31K6QgauX.....PJb8XuOJb87zLyL2qBWOBuJb8H8zLyL06iBWOu.....7nv0yqBWOJOOJbc8zLyL06iBWeuOJbc8nv0izSJb8XOMyLy8BCxE2qBWOROOJb87pv0ivK.....Jb8H8nv0iziA.....jBWO1KXpkSOJb8H77nv00iBWOBuJb8H7dgBWOJOJb8n8jBWO16iBWWOJb8H7vdT31SyLyTOMyLy8lBWO1ayLyTOJb8H8pv0ixayLyTuOJbc8jBWO16iBWWOMyLS8pv0izayLyTOJb8H8vdT31SJb8XOMyLS8zLyL0CgA.........P.........+.....z........f+....9C...3OC.H...z........pAA..vID..fsPC........9ifC.H...z........pAA..vID..fsPC........9ifC.H...VZ.......DAA...9SZ.......f+.cgqGwOBnYlY8C...3O...f+PI...3O...f+b........3Ow0ih9XlYl8SyLy7OZlYl9f...........................17d9................L.f...XoA......PDD...3OoA...nHhn5SfYrjm9XjxuXkO4USl9DHjQ6CRgKqOeReh9TQiL6S+hkoO3adq9LXK35iPmVuONNNp9H6vL6SyLyvOOJb89ziBW6yCpCwO6f5.+jBWO7yiBWuOjBWu935Qg7CRgquOrGEN+PgqG7iYlYxO1iB29n.m.6Cub3sOb8nv9HEtd7iYlYtOyEGE+LyLy7yqGE1OEtdD+DWOJ7CRgqyOOJb89vhuB5CUKitO1iBG+Dm.m7iqGExOOnND+....8y0iB2ORgqG+7nv06ysssxO8nv09rCpC7Sx9wvO9i8K+nYlY8iT350O1iBG+LxfD8ShTmyOk5bJ+X8J+7y0iB2OMyLS+DEtd7SJb8zOHEtN+rv0i7C4q3wOVv.k+75QA9ydT31O6Qga+7w8nvwOZlYl+XlYl+C8nv+OhqGs+z0ih9CWOJzOZlYt+3Qgq9SBWO1OQgqG+XOJb8SlYlwOgqGU+vdT38CRgq6OHEtl+....9ydT33OOJbc+DWOJ8SqGE.POJbc+35QA+SgqG8Oov0q+HEt99CWOJ7OlYl4+v0iB+yGEtCPC.H...z........pAA..vID..fsPC........9ifC.H...FV.......pAA...9CV.......f+bpsVC3OcHgLA9SynG3OqPjf+f3mB9yPVM3OVd.g+j6vD9CT5S3OyoWg+nP6E9S5ma3Oj54g+vxCH9Cuvh3O2cVh+3TLJ9C6Tq3OHPxh+Tv4K9Cvcx3OpXTi+nGUM9Cvcx3Omt3h+rqII9yb5U3Os5rf+Xq0.9CBu+2OH79e+PH...3OLN.f...XXA......nFD...3OXA...z9P.9iIVf6e+Lcu78C5M22OkUre+rpG+8yOe42ODQge+PjM98ylj92OAKxe+bQf.9CVUC3Or1Cf+vNw98ioG.3O3vBf+3Xj98y.b22Osune+rP298yFe82Ow1xe+vHk.9iz+B3OZn8e+rtr88yvD52Otsme+DBD.9ybn+2O7iWe+Ty688ivk42Ouq5e+jVF+8SNe92O...f+TrS.9SwNA3OAVl5+8CHfvxe+DDZ.9ich82O7Ype+fch88CFa.3O...f+j8U+8Sb.92OXmXe+H1I98C1nA3O3L6e+3wJ98SP752ONZ9e+Px788C6D62OiISe+XZv.9CBzC3O7dAf+..x58CYZ+1OdhcX+HBrl8CbYm1Ozlta+TrSr8SwNQ2Oichc+zI148SmXm2OBTrS78C...3O...f+P.rHx2OE6Df+XmX+8SwNA3OE6Df+Hnch82OAxNw98S.....oA......PDz..B..fcH............f+bH.......LvAB....z.........fBD....v.....K....Nv...n.C..fBLD.....A..fBL...3u...f.C........3O...f+B...9C...DP...f+....AL...3u.....C...AD...Lv.....C....b....f.A...BT......A....zF...f.A..fCD...DP...f+B...9C........3.A........3u...P.A....L...Dv.....C....D...Dv...f.C...AD........f+B...9C....v...v.C....L...Lv.....A........HP...f.U....Hv...f+....AL....v...n.C..fBLB.........CL...Dv...f+B...9C...Dv.....A...9K...3uI....AL...3O...f.C....L...DP.....C...9K...DP...f+....9S....P.A...Aj....f+B...BD...HPK.....L...3u...P.C..fBL...Dv.....C..fBL...3O...3.C........3O...f+L...........A...BL...HvF...fBL...Hv...P.C...CL........f.C...BrD...f+.....L....P...v.A..fBD...Dv..........L...Nv....AC..fBL....P...n.A....D........f+....9K....v.....K....3u.....C....b....f+...fDz..B..fcH............f+bH.......DvAB...AzF...f+.....D........f.C...DL...Lv...f+.....L...Pv...f.C...9K....v...f+....BL...3O.....C...BL...JP.....A...AD...Dv.........9K...LP...3.A....D...LP...v.AA....v...f+B..fBL...3O.........BD...3u...f+....AD...3u...P.C....D....v...n.C..fBD..........HA...3u...P.C...CL...Dv...DAC..fBL....v........fBD...Lv.....C..fBL...Dv...v.C..fCL....v....AC..fBL...JvD.....D..........C...AL...DvAB...9af...P.qA...HP.........9K....P...f+B..fBL...Dv.....C...9C....P.....C...9K.........AC..fBL...Lv...f+....AL...3u.........9K...3O.....C...9C...Dv...v.C...Cbf...f+L...........C..........AB...CTC...P.A........DP...v.A...9K...JP.....C...CL....P...3.A..fBL........v.A...CjA.....A..fCL...NP...v.A....D..........L....LP...f.A..fBD...SPC.H...1g.............9yg.......P.I....Pv...f.A...Bz....f+.....L...Jv...n.GH...HPB...fBL...Lv...v.m.........f.A.........P...f+B...BL...DP........fBL...Jvd....AL...3O...f.A...9K...3O...P.A..fBD...3O.....C...AL...3u.....C..fBL...3u...n.A...9C..........A...AD...3O...f.A....L...Dv........fBL....v...DAC...CL...Hv.....C....LB...f+....AL...3O...P.C..fBL...Nv...f.C....L....vH....9K...Dv...f.C....D...LP...f+.....L...Dv...P.W....Hv...f+B.........P...P.A...AzD.....A........LP...f.A..fBD...DP.........AD...Nv...f.C...CL...Dv.....C...CL...Hv...P.C...9C...3u.....C....LD...f.C..fCL...Lv...3.C..fBL....v.........AD...Dv...f+B....L...3O...f+B....D....v...f+B...9q....3.C..........C....9K...3O...f+B...9a............A...f+.........Dv.....A....jA.....C........3u.....C...AD........PAM.f...XGB............3OGB.......BbA...DAC...9K...HP...P.C...BL...HvAB...ArA...P.A..fBL...Lv...f+B...9C..........L....HP...P.C...AD...DPP.....L...Dv...f.C....D...Jv...f+.....D...HP...P.A........Jv...f.A.........P...n.C...9K...3uH.....L........P.A...CD...3O.........BL...3O...f+X....Lv...f.C...9K..........A...BD...HPA...........E...fCL....v...v.C....L....P.....Y....Nv.....C.........v...f+.....L....vK....9K....v...P.C....L...Jv.....A...AD....P...P.A.........P.....0....Dv.....A...AL....v...f+B..PDL...Jv.....A.........v...f+B........3u...f+R....LP.....C...9K...Qv...DACA....v...f+B...AL........P.C........3u...P.C...CD..........C...AD....P.....C...BL....v.....OA...PP.........9K...LP...n.A..fCL...Dv...P.A...BL...DP.........AL...Jv...f.C...DD...3O.........BL....P...TAM.f...XGB............3OGB........PB...f.C....D...JP.....C...BL...Jv...v.C........3u...f+V....3O...f+B...AL...JP.....A....z....n.A....D...3u...f+p....3O...P.A..fBD....P...P.A...CD...NP...f+....9K..........P....DP.....A...AD....v.....y....DP...f+.....L...HP...P.A...9K....v...P.C..PDL....v.....A...BD...HPf...fBD...3O...P.A...CL...Dv...f.C...9K....v.........AL....P...P.A...9C...JP.....C....D...3u...f.C....D...LP...P.C....D...HP...f+B....D...3O...P.A...BD....P.....C..fBL....v.....6....Lv.....C...AL...Pv...f+B...CL...DP.....A...9C........f.C...CL...Hv...f+B...9q....P.C..........A....9K...3uAB...AT...........PF...n.A...BL...Dv...f.C..fBL...LP...f.C...9C...JP...v.A....L...Nv...P.C....L...Dv...v.C..fCL...Rv...f.C..fCL....v...v.C..fBL....v...f.C...Br....f+B...AL...VPC.H...1g.............9yg.......HAW....Hv...P.A........Dv...f.C...BLA...f+.........3u.....C....rB...P.A...BD...3O...v.C...AD........f+B....L...3u...n.A..fBj....P.A...CD...LPj.....D........f+B...AD...JP.....C...9C..........C...9C...DP...f.C...BD...3O...f+B...9C...Jv....AC...CL...3O.....C..fBD...NP...f+....9K...Dv...f.C.........P...f.C....L...Dv...P.A..fBD...DP.....A....jI.....C..fBL...3u.........9K...3O...P.A...9K...HP...f+.....D...JP...v.A..fBD....v.....A........3O.....C...9K...Hv...f+..........P.....C..fCD...HP.....C...AL........P.C...9K....v.........9C....v...f+B..........E....BD...3u.........9K...Nv...3.SA...Lv...3.C...9C...DP...n.A...9K........v.C....L...Nv...f+B..fDL...Jv...f+...fBL...Hv...n.C...9K....v....AC...Db......C....LA........PDL...Nv...n.C..vEz..B..fcH............f+bH.......PvD....CL...DP.....C...BL...HvAB...BzC...P.C..fBL...Dv...P.A..fBD....P...f.C....D........f.C...AL........P.A....D...JP...n.EA...DP...f+.....L...Hv...f.A...BL....P.........9C....P...f.A...CL....P...f+.....L...Dv...n.C..fBr....P.C...9C...3OL.....D...JP.....C........Hv.....C...9C...3u..........L...Lv.....A....DA...f.A...9C....v...f.C...BrG.....C..fCL...3u...f.A..fBD...DP...f.A...9C...LP...f.A...9C...DP...n.C...9K...Dv...f+B.........v.........CL..........A...9C....v...f+.....L...Hv...P.C...BL...3u...f+x....Hv.....C...BL...3O...f+B...9C..........C...BD...Dv...v.C..fBL...JvA....9K...3uI....AL...JP...f.C...DL...Jv...P.C....L........n.C..fBrA...f.C...9C........f+....CL...3u...f+l..........AC...AL...3O...f.A...9K........P.C...9C...XPC.H...1g.............9yg.......P.S....3u...P.A....L...Lv...v.m.....P...P.A...AL...3u.........9K...3O...P.C....D....PZ.........Hv...P.C..fBD........P.A..fCD...DP...f+B....L...3u.........AL...HP...n.C...AL........P.A...9K...DP...f+.........Hv...3.C..fBL..........DH...DPB....BL...3u...f+F....Jv...n.m.....v.........BL...3u...f+....BD...3O...f+B..........A.....L....vN....BL...HP.........BD...Dv.....C...9K....P...f.A...AL....P..........L...Nv...3.K....Dv.....A....DD...n.C........3u...f+....AL....v...3.C...CL...Dv...f.C........3u.....A...BL...Dv..........fC...f+.........Jv...f+.........Jv...f.C...AL...DP...P.C...9C........f.C..........Q....9C...Hv.........9K...3O.....A....L........f.A...AD....P...f.A...9C....v...P.A...BD...DP...P.U....HP.....C...BD...JP.....C..HFz..B..fcH............f+bH.......HvV....9K...JP.........CL...Jv...f.A...EL...Nv...f+B....L...3u...f.C.........P...f.C...CL....v...P.A...9C....P...n.A....L....vC.........JP...f+B...96E...f.C..fBL...3O...f.A...BL........f+B........Dv....AC..PDL...Dv...f+....CD...DP...f.C...AL....v...f+B..PDL...Dv...f+...........AB...ATf.....G....Dv...P.W....Hv.....C....D...3u.....C....7....P.C...BL...HP...f.EH...DPF..........v...v.C...AL....v..........P....P.C...ALH..........L...3u........fBL...Hv...n.C...BL....P...f+.....D...Hv.........AL...HP...P.A...AL...DP...f.C...DL...Nv...P.C...BL....v...f+B....L........3.C...DL...Lv...f.C..........AB....b......A....Tf...f+T....3u.........AD...3O.....A....z....f+B..fBD...3O...f+H....3u.....A....DA..........D...3O.....A..PFz..B..fcH............f+bH.......RvR....9C...HP...f.C..PDL...Lv...f.A...9K...3O.....A...AD...3u...P.C...BL...Jv...v.C....L....P..........PD...n.A....D...3O.........BD....v...f+....CL....v...P.A...BL...LP...P.A...9K....v...3.C..fBL...JvN.....L........v.A...AL....v...f.C...9K...Hv.....C...BL...Dv.....C...9K...3O...f+rB...3u.........9K...3O.....A...9C...DP...v.A....D..........A...AD...JP.....A....L...Jv.........DL....P.........BL...Lv..........D...DP...f+B..fBL...3O...n.C...BL...3u.........9K....P...f.C...9C...LP...n.A........Dv.....C...AD....v.....GA...Jv...f+B...9C...3u.....C...9K...Qv...v.C...BL...Dv........fBL...Hv..........L...HP.....C....7B.........9K...Dv...f.C...BD..........C........Dv.....C...BL...HvH....9K..........C...9C..........C...9K...3O...lAM.f...XGB............3OGB.......96....f+....AD...Hv...f.q....HP...3.C...AL...3u.....C...BD...Jv...P.A....D....v.....W....LP...P.A...BD...LP..........PA...P.A...9C........f+B...9C...3OE....AD...3O...P.A...AL....P.....E....Hv...f.y.....v.....A...AD..........A...AD...3u.....C...9C...DP...f+B...9C...3OD....BD...DP.....C..........E....9C........3.A...BD...DP...P.I.....P...P.A...AzA...f+....9K...Hv.....C..fBL....v...f+B...9q....P.C....D....PW...fBD...3O.....C....D........P.C..fBL..........A...BD....v...n.A....L....P...f.A...BL...DP...f+B...DL...Jv...f+....9K...3O...f+DH...DvL....DL...Hv...P.C...BL....v...n.C...DL...Dv...f+...fBD...3u...n.C..fBLA...f.C...9K...Jv...v.C...Crf...n.a....Qv...HAC..PDL...Pv........PDL...QvA...fDL...RvE...fCL........3.C..PDL...Pv...nAM.f...XGB............3OGB.......A7B...f.A........Hv...P.C...CD........f.A..fBD...LP.....C...BD...HPD....9K...3O...v.A...BD...HPA...fBD...JPZ....AD...LP...n.A....D...Dv.........BD...3O...3.A...CD...HP.........DL...Hv...f.A...AD...NP...n.A....D...Hv...n.C...AL...3u.....A........HP...f.Y.....P.........9C....v...f.A....D....PG....BD...PP.....A...AD...JP....AA...CD...LPX...fCD....P...f.C....L...JP...f+B.........v.....A....L...DP...n.A...AD........f.C...9K....v.....A...BD........f+....CD...HP..........PA...n.A...AL....v...P.C...9K...3uG....9C........f+...fCL...Pv.........CL...LvA.....D....PO.........Dv...f.C...DL...Lv...3.C...BL...Jv....AC...AL...Hv...P.C...DL...3u...DAC..PDLA...f.C..fBL...Sv...DAC..PDr.....AC..PDL...QvA...fDL...RvD....DL...Hv.....C..PDL...QvA....DL..fZPC.H...1g.............9yg.........O.....P...f+....BL...HvB....9C....v.....OH...DPZ....9K...Dv...v.A...AD...3O...P.A...9C........3.A...BL...PP...P.A...9C...HP..........D...DP........fCL...Hv.........AD...JP.....A........3u...f+F.....v.....S....3u...P.C........3O...f+T.....P..........D...3O.....A....DA...f.A..fBD...3u.....A....Tf...n.Q.....P...n.C....L...Dv...P.K....3O..........PA.....C.........P...P.A...AL...DvP....CL...Dv...f+B....D...3O...P.C....D........n.A....D...DP.........DL...Nv...P.C...9C...3OAB....z..........BL....v.....2....Dv...f.C..fCL...3u.....C...9C....v...f+B...AD....v.........9K..........fA...Nv...f.C...AL...Lv.....C........Qv...f.C....L...Lv...f.C..fBL...Hv...n.C...BL...Dv...v.C..fCL...Jv...f.C..fBD........f.C..fBL...Jv...rAM.f...XGB............3OGB......fBbC...P.A........Jv...P.A...CL........P.A...9C...Hv...f+....BL....v.....A....jf...f+FH...LPG....BL...DP.....C...AL....P...P.C...BD...HPH.....L...3u.....A........Nv.....A........Jv...n.q....Hv.....A...9K........f+.....L...3O...n.A.........P.....w....3O...f+B...AD....P...f+....9K...DP...f.A....D..........C...9K...3uH....AD...LP...f.A...9C....P...f+B...AL....v.....O....Hv...v.C....L....vBB....v....v.A...9C...3u...f+V....Hv.....C..fBL...Dv..........fA...P.C....L...Nv...f.C....L...3u...f+NA...Lv...f+B...AL........f+B...AL....P...f+B...BL...DP.........AD...Dv...f.A...BL...Lv...n.C..fCL...Hv...f.G....Dv...P.q....3u.....C....D........f+B...BL...3O...f.C....L...3u...f+J.........f+B...9a....n.C..fB7....P.C...9K...Jv...tAM.f...XGB............3OGB......PDr....P.A..fBL...JvF.....D...Dv.....C...AL...3u.....A....TD...P.C....D...HP.........CD...3O...f+B...CD...Dv.........9K...3O...f+B....L........P.A..fCL...NvL.....L...DP...f.A...AD........P.C........Hv...P.A...BD....v...f+....9CA...f.A...9K...HP...f+....9i....P.A....D....PA....9K...3uV.....L....P...P.A..fBD....P...n.C....L...PP...P.A........3u.....C...9K....v...f+B....D........n.C...CL...3u...f+....9K...3uAB...Az....f+.....D...3O...f+j....Dv....AC...BL...Dv...f.A...BL...3u........fBL...JvG....BL...Dv...f+B..fCL...Hv...P.C....L....vU....AD...Nv.........9C...Dv...f.C...9K...Dv...f+...fBL...Hv..........L...Hv.....C...9C....v...P.A........Dv...n.C..fBLA...f+B........3u.....A....TB...f+.........Dv...f+....9K...3O...v.C.........v...vAM.f...XGB............3OGB.......Cr....P.A...CL...LvF.....D...Jv.........9C....v...P.C...A7C...f+B...9C...3u.....A...BD...3O...f+B...BL...3O.....C...AD..........C..fBD...Hv...f.GH...JvJ.........JP.........9K...Dv...v.C...9C....v...P.C...9K...3uD....9C...3u..........L....vN....9C....P...f+B........Jv.....C....D...HP...f+....9K....P...f.C........3u...f+F.....P.....k....3O...n.C....D...HP...P.C...BL...Dv...f.C...9K...3uA....AL...DvQ....9C........f+....AL........f+B..fDL...Jv...f.C..fBL...Dv...P.A....L...3u...v.C..fBL...Dv...P.6A...3u.........9K...Nv.....C........Hv...f+B...BL...Pv...v.C...BL...Dv...f.C....L...Jv...f+B...9C...Jv...f+B...AL...Pv...f+B....D...3O...P.A...9K...Jv...f+....BD...HPAB....r......A...AD...DPD.....D...Dv.....A...BD...HPB....9C........xAM.f...XGB............3OGB.......Cr....P.A...BL...HvBB....vH.....C.........v...P.C....D........3.A........3u...n.A...9C...3u...n.C....D...3u.....C...9C...Hv...DAC....L...Hv...f+.....L...3O...f+B....L...3u...P.C...9C...3u...v.A........3O...f.C...9K...3uAB..fBbA.....A...AD....v...v.A...BD...HPF.....L...Dv...P.A....L...Dv.....C....LB.....A...9C...Hv...f+....AD........f.C...AL...DvW...fBL....v...f+B....L...Hv...P.A...9C...3u.....A...9K........n.C...DL....v..........D...Dv...f+....BL....v...f+B...AL...Hv...f.m....JP...P.C...CL...Hv...f+B....L....P...n.C...9C...3OE....AL....P...n.C...9C...Dv...P.GH...3uC....AL...3O...........A...3.C...9K...DP..........f....f+B....L....vB....9C..........DH....vA...........E....AL........f+....9K..........DH...cPC.H...1g.............9yg.......f.a....3O...n.C...AD...Hv...P.C....L....vN.........Hv.....A..fBD...3O...3.A...9K...HP...f+B....L...Hv...P.A.........P.....M.....v...P.C...9C...3OJ....AD...3u.....A..fCL...Lv...f+.....L........f.A....L....vO.....D...3O.....C...9K...Dv.....A...AD...Dv.........BD...3O....AA...AL........P.C...A7B.....A.........P.....C...9K....v...f+....AD...Dv...f.C..fBL...JvW.....L...HP...P.C....D...3O.........9K...DP...f+.........Jv....AC....L...Dv...P.A.........v...f+....CL...Sv...P.C....L..........HA...3u...f.C...9C...3u.........CL....v.....A........Jv...f+....AL..........C...AL....P...f.C...9K...3uB....AL..........r.....P.....C...9C....P.........9C...DP...f+B....D...DP...f+....9if.....DH...3OA...........B....9K..........DH..fcPC.H...1g.............9yg.......P.q.........v.C...9C...Nv.....A........3O...P.C...BL...3O...f+P.........f+B....D...Dv...P.K....Nv.....A....DC...f+.........Jv...v.C...9K....P.........9K..........C.........v.....GH...JPD....CD........P.A....L....vA....9K...3uC....AD....P...f+....9S......A....zA...f+B........3u...f+....AD...3O..........Pf.....e....3O...v.C...AL...Lv...f.C....L..........PA....P...n.A........3O...P.A.........v...3.C...CL...3O...f.C....D...3u...P.C..fBL...Nv...f.C...AL...3O.....C....rC.....A...AL....v...P.A...AL...Jv...P.C...BL...Dv.....A....L....P...f.C..fBL...JvH.....L...Nv.....C..fCL..........C........Dv...P.K....Nv...P.C...AbE...f+B....L...Dv.....C...AL...3u....AC...9K...Jv...f.C...DL...Nv...v.C..fBL...Hv...3.C...BL...Jv...f.C..fBL...Dv...3AM.f...XGB............3OGB........TB...f+....BL...HP.....A...AD..........A...BL...DP...P.I....PP...f+....9y....f+B..fCD....P.....U....JP...f+.........3O...........D...3.A...BD...3u...f.C...BD....P...f.C....D...DP...v.A...9C...HP...f+B....D...JP...f.A...BDF...P.A...BD...DP...HAA....L...DP.........AL........n.A...BD...Jv.....A...BD...LP.....C........3u...P.A....D...JP...f+B........DP...P.EH...LPC.....D...Lv..........v....f+...fBD...3O...f+DA....v...P.C...AD...3O...f.A...9C....P...f+B...9C...LP.....C...9K........f+....AL...3u...f+....9Sf...P.y....Nv...f.C...CL...Jv...f+B...CL....P...v.C...9K...Jv...f+B....L....vF....BL...Jv...f+B..fCL...3u...v.C...CLA...3.C...CL...Nv...v.C...CbA...f+B...CL...Nv...f.C..fCL...NvAB...B7....3.C...AL...Nv...3.KH..fdPC.H...1g.............9yg.......f+N.........n.C...9K...3uC....AD...Dv.....A....DA...P.A........LP...f+....9iD..........L...HP...3.A...AD...Dv.....C........DP.........9C....v...n.C...AL....P...f+B...9C...HP...f.E....3u...f+l.....P.....C...AD........f+....AD....P...f.A...BL...HvAB...D7A...v.C....D...Jv...f+....9K...DP...f.C...BbH...v.C...AL....v.........9K...Hv...n.A..fCD...JP...f+....AD...HP...HAC....D...3u.....A..fCD...3u.........BL...Dv...f+B....L...Hv...n.C...BL...Dv...f.C....L...3u...n.C...9C....v.....a....Jv...f+B.........v.....A...AL...DvG....BL...3u...v.C...9C...Jv...f+B....L....vCB...Abf.....y....3O...f+B....L........n.C....L...Hv.....C...9K...Jv...P.C..........LB..vGz..B..fcH............f+bH........PJ...fBL....v...f+B...AD...Dv...f+....AL....P...f+B...9C...3OE....BD...DP...f.C....D...3u...f+V....Dv...n.C...AL....P...P.A...AjA...n.C...9K...Dv.........CD....P.....I....3O..........Pf...f.4....JP...P.A........JP...f.C...CD...Jv...f+..........P.....C.........v...f+....9CF.........BL...Dv...f+B...9C........f+.........JP...v.A...BD...3O...P.A...BL...Lv...P.C...AD...Dv...P.A...9K...Jv...f.C....D...3u...f+J....Dv...f+B...9af.....WA........3.C...9C...Dv...f+B........HP.........9K....P...n.C........Hv...P.C...9K...Dv.....C...AL...3u.....C...AL...DvAB..fBb......C....rA...P.C.........v...P.C....L...Hv...f.S.....v...P.C...9K...Dv...P.G...........3H..fePC.H...1g.............9yg.......f+b....Jv.....A..fBL....v...v.C....L...........B...NP.........BD....P.........BD..........A....L...Hv...f+....BD........f+....CL...Dv.........9C....P...P.C........HP...f+.........JP...f+.....D...LP...3.A...CD....v...n.C..fBLB.....C...BL....v..........L...3O...f.C....L....vD...fBL...3O...f.A...9C...3OD....BD...JP.....A...9C...3OD.....L...Hv...P.C...9K...3uB...fCD...Hv...f.GH....vF....BL........f.C...AL...3O.....C....rA...f.A........Dv.....A....L...3O...f+j....Dv.....C...9K...Hv...n.C...AL....v.........AL...DvC...fBL...Hv...n.C..fBbA.....C...BL...Dv..........L....vA...........bB...Hz..B..fcH............f+bH.......LvH....DL....P...f.C...AD...3u...3.C...AD...3O...f+3A........v.C...BL...Dv...f.C..fBL....v....AC...AL....P...f.C..fBL...Nv.........DL...LP.....C..fBL...3u...n.C...9C...3u.........BL....v...f+B...AL........f.C..........F...fCL....v...P.C...BL........f.C...BrA...3.C...BL........f+....BL....v.....SA...DP.........CL....v...f.C...DL...Dv...f+....AL...3u...P.C..PDL...3u...P.C....L...3O...n.C...BL...Pv...P.C...AbB.....C........3u...P.C...9C...3u.....C...CL...Hv...f.e....Jv...v.C...9K...Dv...P.A...BL...3u...f+FH...DPH...fBL...JP...P.C...9K....v...f.C........Dv...P.G...........vI..PfPC.H...1g.............9yg.......P.c....Pv.....A........3u...P.C...9K....P.....k.....v.....A...AD........f.C...9K...Hv...v.C...AD...DPC....9C...Qv...f+....9SB...f+B....L....P.........BD...3u...f.A...9K...3O...f+vA...DP...f+B...9C...Lv.....C........3O.....C..fBL...3O...f+B...AL...Lv...f+B...AL....P.........9K...3O...n.A....D........3.C....L...Jv.....C.........v.....GH...LvC....9K...Hv.....C....b............I.....A...CD...3u.........9K...Dv.........BD........f+....AL...Hv........fCL........P.C....D...Dv...f+....AL....P.........9K...3O.....C...9K........f+..........P...f+..........v.....A........3u...f+F...........nI..ffPC.H...1g.............9yg.......f+j....Jv...f+...fBD...3u.........BD....P...n.A...9C...3OS..........v...P.A........Dv...P.A..fCD...JP.....C...AD....P...n.A...BD...DP...f+....AD...NP...v.A...BD...HPM...fBD...LP...P.A...9C...JP...f+....DD...HP...f+.....D...LP.....A....L....vD....9K...HP.....A...AD...DPAB..fCj......A...BL...HvK....AD....P...f+.........3O.....C........HP...f+...fCL..........D....3O...f+b....HP...P.A...9K...Lv...f.C...CD....P.....wA...DP.....A........Hv...f+....CL....v...n.C...9K........f.A...DD........f.A....L....P...f+.....L...Lv...DAC...CL...PP.....A...AL...Lv....AC...AL..........zI..vfPC.H...1g.............9yg.........X....Lv...f+B....D...3u...3.C....D....PD.........Jv.....C...9C...3OD....9K...Dv..........D....Pb...PDL....v...P.C...BD...3O...P.C...AD....v...f.A...AD....P...f.A..fCD....v...f.A...9K...3O.....A...BL...DP...f+....9K...3O.....C..fBL...3O...f.C...9K...3uJ....9C....v...P.A..fDL...Hv...P.A....L...Jv...f+B...AL...DvAB.....F...f.C...AL...3u...P.C...9K....v.........CL........f+.....L........n.C...CL...Hv...P.C...BL...Jv.........9C....v...P.C....L...Dv...P.S.........f+....CD....v.....O....Hv.....C...9K...3uG....BL....v...f+.....D....v...f+B....L....vB....9K..........3I...gPC.H...1g.............9yg.......f+H....Hv...f+B...9a...........ff.....u.....P...f+.........3O.....C...BD...JP.....A...DL...Hv..........Pf...f+V....DP...f+....BD...3u...f.A...BDA........fBL...Hv..........Pf...f.G....3O...f+.C...Jv...P.C...9K..........C...9K...HP.....A...AD...Jv...f+B....L...Dv.....C....D...Dv...f+B...BL........f+.....L...Dv...f+B........Jv...P.C...CL...Dv...f.A....L........3.C...BL...Dv...3.C...AL...Lv.....C...BL........f.C..fBL...Dv.........BL...3O...f+B...AL...DvA....9K...3uB...fBL...Dv...P.W....Lv.....C...BL...Jv..........Po...EBM.f...XGB............3OGB.......BjF.....C...AD........f+....BD...DP...f.A....D...DP.....A...CD....PMyLO.A..fBD...PP.....A..fBD...PP...f.A..fBD...LP...n.A...DD...NP...v.A..fBD...JPI....CD...JP...P.A..fBD...3O...P.A...CD...NP...P.A...Aj.....AA...BD...HPa....DD...SP...n.A...CD....v...f+.....D...3O...f+B....D...Hv...f+..........P.....C...9C....P.........BD...DP...f+B..fBD...DP...n.A....D...JP...f+B...9KF...P.A....D...3O...f+B...BL...Nv...n.A........JP...P.A....D....v.....A....L..........C...BL...Lv.....A..fBL...Hv....AC....L..........jJ..fgPC.H...1g.............9yg.......P.OA....v...f+B...AL...Jv...f+B...9C....P...P.A....D...Dv...f+B..fBL...HP.....C...9C...DP........fBD...3u...f+F....DP...P.EH...3OV....CD....v...n.A...9C...DP...P.C....L...LP...f+.....D...JP.....A..fCD....P...f+B...9C....v...f.A..fBD....P...f+B..........B....BL...DP...P.w.....P...f+....AD...3O...f+B....L...3u...f+...fDD...3u...P.A...AL...Dve.........Dv...f+B...9C....v...P.C...9C....v.....A....L...JP...f+....AL...Jv.........BD...DP.........AD...Hv...f+B...9C...Hv...P.C...AD....v...P.C....D...Dv...n.C..........mB..bHz..B..fcH............f+bH.......HvE....9C...HP...n.A....L....P.....oA...3u.....C...AL........f.C...CD........P.C........3O...P.A....L...Dv...f+....CD...3O.....A..fBD...3u.....A...9C....P...P.C...CD...DP..........v......C...9C...DP...P.EH...3uG....AL....v.........9K...3O....AC...AL...DvAB..fCrC.........9K...Jv...P.A...CL...Pv.....C...AD...Hv...f+B..fBL...Dv...v.C....L....vE....AD....v...P.C.........v.....W....Hv...n.C...9K...Dv..........fA...P.C...BL...3u........fBL..........DH...3uA....AL...DvAB.....g.....Q...........C...9C..........D....3O...f+DH...3uB.....L...3u...f+RH.....WB..fHz..B..fcH............f+bH........vB...fBD...DP...P.I....QP.....A....TC...n.A....D...DP...P.C..fBD...HP...f.C...9C...JP...P.A..fBD...PP...n.A..fBz......A..fBD...DP...P.EH...DvD.........DP.....A...9K...3uB...fCD...3O...f+r....HP...HAA....D...Dv...f.C...AD...Hv.....A...BL...3u..........f....f+.....L....vX....AL...Hv.....A...AL...DP...f+B........Lv...3.C..fBL...NP.....A...BL...Nv...f+.....L...Lv.........9K........f+B...9C....P...n.C..fBbA...P.C...BL...Lv...f.C...9K...3uL....BL...Dv...n.C....L...Hv...P.C..fBL...Lv.....C...BL...Lv...f.C...B7....n.C...AL...Jv...n.m....Hv...n.C...AL...Hv...P.C....L...Lv...f.C...AL...DvAB....Pl...IBM.f...XGB............3OGB......fBbf...f+3....Hv...P.C.........v...f+B........Dv.........BD....v...f+B........HP.....C....bI...f.A...9K...Dv...P.A..fCL...Dv.........9K..........A...AL...Jv...f+B...AL...HP...3.A...9C...3u....AC....L...3O.....C...9K...Dv...f+B...AD...Jv.........9K....v...f+.....L...3O...P.C....D...Hv...f+B...9aA...P.C...BL...Dv...3.C....D....PB....AL...3O...f+7....Lv.....C...CL...Hv...f+.....L...3O...f+B.........P.........AD....v.........9C...3OAB...9af...f+X....HP...f+B...AL...DP...f+...........C....9K...3O...P.C...AbA...f+.........Hv...P.C...BL...HvA.....L....vA...........cB..nHz..B..fcH............f+bH........vj....AD....P.........9C...HP...P.A..fCD...HP.....A...9C...3u...f+.....D...LP...f+B....L........n.A...CD...JP.....C...9K...HP...P.A..fBD........f+B...BD...LP.....C..fBD...3O.....A...BL....P...f+....9S....f+B...9af...f.K....3u...f+....9CF...f.A...9C....v...f.C...9C...3u.....C...9K........f.C..fBL...3O...P.C...9K....v...f+B...BL..........C...BL........3.C........Jv...n.O....Lv...P.C....L....vAB...9q....f.C...9K...3uD....9C........n.C...CL...LvAB..fBbB...P.C........Nv...v.C..fCL...Lv...3.C..fBL...Lv...v.GH...NvA...........iB..rHz..B..fcH............f+bH.......PvC...fBL...3u..........v......C...AL..........DH...3OD....AL...3O.....C...AL...DvI....AD...3O...f.A...9C...Hv...f+B....D...Lv..........f....f.C...AL...DvA.....D....PJ.........Pv...n.C...9C........3.C..fBL....v...n.C...9K...3uC...PDL...Dv...f+B...9aA...v.C.........v...v.C..fBL...JvI....9C...Jv.....C.........v...f+.....L...Jv.....C....b...........Pf...v.G....3u...f+FH.....B....9K..........DH...DvA...........B....9K..........H.....v...........s...LBM.f...XGB............3OGB.......Bbf...v.4....JP.........9C...DP...f.A...AL...HP...n.A...BD...LP...P.A...CD...JP...v.A...Cj....P.A..........N.....L....P...f+B..fCL...Dv...f.C...BD...PP...n.A...BL...3u...P.A.........v.....m....DP...P.C...9C....P...P.A....L...DP..........L....vAB...ArA...f+B...BL...Lv...DAC..fBL....v.....+....Jv...f+....CL...3u...P.C...BL...Lv....AC...CL...Dv.....C...9K....v...P.C...BL...HvE....9K....v...f+.....L...Dv...P.KH...LvC....BL...3u..........P....f+B...9KA.....C........Hv...........q...MBM.f...X+A............3O+A.......Cr......C...AD...DPF.....L...3u...n.C...9C...HP...f+B...9a....f+....9SC.........9C...LP...3.A...BD...Hv.....A...AL..........A...AL...DP...f+B...9qA...n.A....D...Hv.........AD..........v.....v.....A...9C...HP........fBL....P...P.A....L...Dv.....C...9C...3OE.........Hv.........AD..........j....3u.....A...9K...Jv...P.C...9K...Jv...3.C...9K...3uD....9C...Lv...f.A....L....vD....BL....v...f+B...BL...HvBB...A7f.....H....Jv...f.C...Bbf...P.G...........fJ..fiPC.H...1e.............9ye.......n.W....3O...P.C....D...3O.....A....zA...f+.........3u...f.A...AD...3O...P.A...Az....n.A...BD....P.....4....Dv.....A...AD...Jv.....A...AD...3O...f+B....L....P...P.A....L...3O...........A...f+B....D........f+B...9KC.........9C...Jv...f+B...9C..........A...9C...JP....AC...BL....P.....cA...Hv.....A....L...Rv....AC...9K...3O...P.A...9K...Lv...f+B...9C...Nv.....A..fCL...Dv...3.C...CL...Qv....AC..fCL...Pv...3.C..fCr....f.C..fCL...NvAB....fq...OBM.f...X+A............3O+A.......AbA...P.A....L....P...P.A....D....P0...fBD...LP...P.A..fCD...DP...v.A...DD...LP...HAA....D...HP..........D...DP.....A...9C...HP...n.A........DP...f+....CD...3u...P.A...9C...3u.....A...AL....P...v.A...9K..........C...AD....v.........AD...3O.........9C...HP...HAC..fBL...Hv...f+....9K..........C...AL...Qv...3.C...AL...3O...f+T....Jv...f.C...CL...Qv....AC...Dbf...HAG....Pv....AK....Qv...HAC..fD7.....AC..fCL..........DK...jPC.H...Fa.............9Ca.......n.G....3O...f+X...........A...AL...Jv...P.A...CL...LvA...........A....BD...HPD.........3u...f.A...9K...3uO....9C....P...P.C...AD...3u.....C...AL...3O...3.C...AL........f+B..fBD..........C....b...........v....f+B....L...Dv...P.a....3u.....A...9K....P.........9K...3uL....9C...Dv...3.C........LP.....A...BL........f.A...9C....P...........B.....A...9K...3O...f.A....D...3O...P.A....D....PC....AD...3u..........fn...QBM.f...XrA............3OrA.......B7A.........9C...Dv.........AD...Hv...........B...f+B...AD...LP...n.A..fCD...3u...f.A....D....PAB...9Sf...P.E.....P.....U....3O...f.C....L...Dv..........vB...f.C...AL...HP...P.C...CL...Dv...P.A...AL........f+...........C....AL....P..........P....f+B...9a....f.C...BLA.........BL........f.C...Br....P.A...BL...HvAB..fAb......C....r..........AL...DvA...f.L...BvB.....L..........XJ..fjPC.H...Fa.............9Ca.......n.O....3O...P.A...9K...3uAB....TH...P.C....D...3u..........D...HP...f.C........3u...f+....9K..........C....D...3O.........AD...Hv.........AL...Jv...f.C..PBL...3u...P.C....L...Fv...f+.........3O.....C...9C..........LL..vjPC.H...lY.............9iY.........EH...3OF.....L...3u...v.C...ALXlBRv...v.C...CbA...f.A...9C...HP...f+B....L....vD...fDL...Hv..o87....9K...3uAB..fDLA...nAC..PFL...Dv...n.C..fB7A...P.A....L...Rv....ACZcPDL..fRv...3.C..fC7....P.C...BL...Nv...3.a....Jv...v.C....L...Iv...f+B..........2B..PIz..B..fcE............f+bE........PC.........Hv...P.C...ALF...f+B..fBL....v...f+B....L........v.A....D..........A...9K...Dv...f+B....D...Dv...f.A..fBL...Dv...f+B...BL...Jv...3.C....L...Dv...P.G...........H....DP...f+B...96A...n.C...AL...Nv...P.C...9K...Dv...f+....9Sf...f.O.....P...P.C...9C...3OB....9K...vO....+XH.....bB..TIz..B..fcE............f+bE........ve.........3u.........9K...DP...P.C...9C...3u...P.A..fBD...3u...f+....AD...Nv.....A..fBD...DP...n.C...AD...Hv........fBL...Hv...P.C....D...3u...X.C...AL...Bv.....C..........1B..XIz..B..fYE............f+XE.........B7NyL06+++GP+++e.Y......+++e.A...9a....v...f+9+++Az+++GPAJ...ATA+++e.I...AD.....+++e.++++Az+++GPE.....f...DP+++e.A....v+++Iv+++m.K.........f+B...9afA....qH...7uGB....Po...WBM.f...XQA............3OQA.......BLC.....A...9K....v...n.C....L....P.....C...9K...DP.....C...9C....v.....W....3O...P.A...CL...3O...n.C..fBr....f+...fBL...JvB....9K...Dv...P.O....3O...f+B...AL...DvAB....b...........vq...XBM.f...XMA............3OMA.......ALAZlYv.A...9K....v...P.A...ATf...f+TA...JP...f+B...BD...3O...f+B........NP.........9C....v...n.C....D...Jv...f+....BD...Dv.....C...9C....v.....A..........J...PDL...Lv...f+....BL...Lv.....C...9K....v...f+B...AL...DvC...f.L....v...v+B...+q....f+B..........cB..jIz..B..fED............f+DD........vA...........A....AL...DvC.....D...Dv...f+....9CA...P.A...BD...Jv...P.A...AT....P.C...ArA...f+....AL...DP...3.C...9C....v.....e....Hv.........CL...3u.....C...AD...Lv...v.2....3u.....C........Jv...f+....AL...3u.....A...9C...7O...f+....7C..........PI..flPC.H...VP.............9SP.........G....3O...f+HB...Lv...f.C...AD....P...3.A....D........P.C....L...JP...f+B...AL....v...f.C...AL...DP.....C...AL...3O...n.C....L...Lv...f+.....D....v...n.C........HP.....A...9K...Dv.....C..fAL...Bv...H.G.....v.....K....7u..........fk...aBM.f...X.A............3O.A........bC...f.A...AD....v.....A...9C...DP...f.A..fBD...DP.....C....D...DP.....A....zA...f+B...CD........f.A........DP.....C....7B...f+...fCL...Dv.....C...BL...Sv...HAC....D...JP...3.C..fBL...JvE...PBL...Dv...H.C....L..........bI...mPC.H...VN.............9SN.......f+R....DP.....C....D....v.....m....3O.........AL........P.C...9K...Hv...P.C..........A....AL...DvCB....vn...cBM.f...X4.............3O4.......fBbA...f+....9K...Lv.........AD...DPa....9C........v.C...9K...Jv.....C...BL...Dv...f.C....D...Lv...n.A..fBL...3O.........9K...Dv...f+.....L...Hv...f+.....L...3u...f+.....L...3O...v+....+S............k...dBM.f...X1.............3O1.........b....f+B...9KA...f.C...9K...3O..........v....f+....DD...3O...f+D....Dv...P.S....Nv...n.A........3O...f+b....HP...P.C..PBL...Hv.....C...9K..........rI..vmPC.H...1L.............9yL.........o....Dv...3.C...9C...Dv.....A...9C........P.C...BD...Dv...P.W....3O...P.C.........v...f+....9S......C....LA...v+B...9K...vu..........fl...fBM.f...Xv.............3Ov..........C...f+B.........v...P.A....D...Dv...v.C...9C...Dv...f+B...AL....v.....GH...DvC....AD...3u...........m..ffBM.f...Xq.............3Oq.........jA...f+...fBD...DP...f+.....L...JP...n.o....Dv.....C...9C...Hv.....C..fBL...3O...f.C...9C...Lv...v.a....Nv.....C...9K....P...P.C....D....PA....9C...3OA...........MB..DJz..B..fsB............f+rB.........K.....D...3u.....A........Dv...n.C...AL...3O.....C...9C...3u...f+h.....v...P.C...9K........f.C...AL...3u...f+....9i....f.C...9C...3OAB.....j..fgBM.f...Xn.............3On.........Tf.....D....DP...P.Q...........C........3u...f+BA...Hv.....C..fCL....v...f+B....L...3O...f.C...AL...3u...f+....+C...3O.........7K..........zH..fnPC.H...lI.............9iI.......P.M....3u.....C...9K...3uA...........P....DL...Lv.....C...AL...Hv...f+....9K....v...f.C.........P...P.A....L..........A...9C...3OA...........LB..JJz..B..fMB............f+LB.......JPB..........P.....o....3u...f+....AD..........C..fCL...3u.....C...CL...DP...P.g....Lv...DAC........Dv.....C...9C....v..........vh...iBM.f...Xh.............3Oh....f+++8iB...v.C....L...DP...f+B...CD....P...f.C....L...3u.....C....7....v+B...9K..........HI..3nPC.H...FH.............9CH....LyLG.EA...Dv.....C........3O.........AL...3O...f.C...9K...Nv...v.C...AL...Lv..........L...3O.....A....j....v+...........JB..PJz..B..f0A............f+zA.......DPB.....D...3O...f+H.....v..........Pf.....W.....P.....C...9K...3O..........fi..fjBM.f...Xb.............3Ob........ATC...f+....BD...DP.........9K...LP...P.C...CL...Hv...P.C...CL........f+B...9KA...n.C....D...Dv...........h...kBM.f...Xa.............3Oa.........fC...v.C...9K...Hv.........9C...Dv.....C...AL....P...f+B...BL....P.........9C...3OB....+C..........fH..XoPC.H...VF.............9SF.......f+FH...DvE....9C...JP.....C...9C...Dv...P.G....Hv...f.S...........A........3O...f+D...........bH..foPC.H...FF.............9CF.........v....DP.....A...CL...Hv.........9C...Dv...v+B....L...3O...f+B..........JB..ZJz..B..fYA............f+XA.........B....AD..........b....JP.....D....L.....E..f+H...AL..........DX....vA...........FB..bJz..B..fUA............f+TA...fYlY3OA....9K...3uF....AD...3O.....C...AD...Jv...f+B...9af...f.K....3u..........fg..fmBM.f...XT.............3OT........Ar....v+....AL...DvF....9q...DP...f+J...AL...Bv..........Ph...nBM.f...XS.............3OS.........LC...f.A..fBD...Dv...f+B...BD....P...f+B....L...Dv...H.C....L..........TH..HpPC.H...lD.............9iD.......P.K.........f+....9CA..........L...3u.....C....7.........f.L..........TH..PpPC.H...VD.............9SD.........i....DP...f+....BL....P...f+B........DP...f+B...9q......C..........DB..lJz..B..fAA............f+.A.......3uA....9C...3OA....9K...3uAB...9S...........vg...pBM.f...XO.............3OO.........PA.....A...BD....P...P.C...9K...3uD....AL...3O...f+B..........CB..pJz..B..f4.............f+3........HvBnYl4+K..........H.....v...f+....9y....f+B...9C..........LH..vpPC.H...VC.............9SC.......f.i....Dv...f.A...9C...Dv...f+B.........P..........vf..fqBM.f...XL.............3OL........9CB...f+B....L...3u...P.C...AD....v...v+...........BB..vJz..B..fw.............f+v.........PCLyLCAL...HP.....C....7...........L..........LH..HqPC.H...1B.............9yB.......f+L.........f+B...BL...HvC....AL....v..........ff...sBM.f...XJ.............3OJ.........vAyLy..A...AL........f+....BL...3O..........Pf..fsBM.f...XJ.............3OJ........9iA.....A...9K...Dv...n.C....L..........HH..fqPC.H...VB.............9SB.........M....Dv...f+B...9C...3OB....9K..........DH..nqPC.H...VB.............9SB.......f.Y.....P.....C...9C...3u.....C..........AB..7Jz..B..fg.............f+f........3OE....BL....v...P.A....D..........DH..3qPC.H...FB.............9CB.......f+T....3u...f+....9K....P..........Pf...vBM.f...XG.............3OG........9aA...P.C...9K....P...v+.............fvBM.f...XG.............3OG........BLA.........AD....P..........Pf...wBM.f...XG.............3OG........9KA...P.A...AL...3u..........Pf..fwBM.f...XG.............3OG........9y..........9K..........HH..frPC.H...1A.............9yA.......P.K.....v...f+....9S...........Pf..fxBM.f...XG.............3OG........Ab............g...yBM.f...XG.............3OG........9S............g..fyBM.f...XG.............3OG........9i....f+B..........CB..PKz..B..fc.............f+b........DvA....9C...3OA...........BB..RKz..B..fc.............f+b........3OA...........DB..TKz..B..fc.............f+b..........C.....D...7u..........ff..f0BM.f...XG.............3OG........9a............g...1BM.f...XD.............3OD........9q....f+.............f1BM.f...XD.............3OD........Ar....v+..............2BM.f...XD.............3OD........9q....f+.............f2BM.f...XD.............3OD.........vf...3BM.f...XD.............3OD........Aj....P.C............f3BM.f...XD.............3OD.........vfyJQ28L.f...PU.......nFD...bP...3AA..nGD...fP...BBA..XHD..PhP...MBA...ID..vjP...XBA..vID...nP...hBA..PJD..foP...nBA..nJD...rP...1BUA...vjxD4OCLHGO9iPeF4OSJSj+LoLQ9iforji+DvjxD4OSJSj+PPJK43OmC3h+jxRN9y4.t3OmC3h+D3pXd0OAhTnE8i.qVVJ+.+Is6S..........D....vLyLyOlYlo+D..........A....LyLy7iYlY5OA.........P.....yLyL+XlYl9S..........D....vLyLyOlYlo+D..........A....LyLy7iYlY5OA.............uP.....3........vOMyLy8zLyL4C...vOC.........v..B..HE...............L.f...RA..........A....B....L.....A....A....D........3O...f+D....P.....A....D....P........f+.........HP...sBYD.....C.H..fT...............v..B..HE....................v..B..HE...............L....vA....A.........fC....P.........PJb8XO...f+.........vu...bBA....................................................v.....J....D..........N.....A............7BA....zLyLyO.....A..VND.....yLyL+....9C..XQQ.....MyLy7C...DP................C....n....P..........3.....D............fHD........f+.....D...pP...v+B...CD...3O..fdEA........vO...P.A...............D....P........f+....EL.....C....L..........A....T.....A....A....L....f8nvAPsdT3+....+C..D1v.....P....PA.......P.A..vIL...rv...vBC...KbA....Wbaz3.....................PA..............................P..........P....P.....C.......f.jxLyzO...v+...zHD.....D....T........mv...P.A...KL...rv...vBW..........Wbaz3................T...............................D..........D....D....v.....PGEt9zQgq9CWOJ3O3z03B8E8GNTA....E........EL...bv...bBC..vIL...mvE.........vE2FMN................E...............................A..........A....A....L....vGEttORgqm+v0iB9C..HtP..frBW....PA.......vAC...EL...mv...bBC..vIbA.........bwsQmC...............PA..............................P..........P..........C....fqGE+SOJb0OtdT3+................T........Tv...PAC..vIL...mv...bBW...............................T...............................D....................P.....C....zLyL8yiBWmu...v+...PFD...............P..........."
                                    },
                                    "fileref": {
                                        "name": "Pianoteq 8",
                                        "filename": "Pianoteq 8.maxsnap",
                                        "filepath": "~/Documents/Max 9/Snapshots",
                                        "filepos": -1,
                                        "snapshotfileid": "9569f504a446fc7b9c0ab5602883b52c"
                                    }
                                }
                            ]
                        }
                    },
                    "text": "vst~",
                    "varname": "vst~[1]",
                    "viewvisibility": 0
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-96",
                    "maxclass": "newobj",
                    "numinlets": 7,
                    "numoutlets": 2,
                    "outlettype": [ "int", "" ],
                    "patching_rect": [ 846.7000126838684, 291.4999993443489, 108.0, 23.0 ],
                    "text": "midiformat"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-97",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 849.1000127196312, 261.89999890327454, 32.80000048875809, 23.0 ],
                    "text": "join"
                }
            },
            {
                "box": {
                    "id": "obj-95",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 905.0, 163.2000024318695, 91.0, 22.0 ],
                    "text": "print @popup 1"
                }
            },
            {
                "box": {
                    "id": "obj-94",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "float", "float" ],
                    "patching_rect": [ 849.1000127196312, 232.29999846220016, 108.0, 22.0 ],
                    "text": "makenote 120 100"
                }
            },
            {
                "box": {
                    "id": "obj-93",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 149.60000222921371, 237.6000035405159, 63.0, 22.0 ],
                    "text": "s #0_cs-in"
                }
            },
            {
                "box": {
                    "id": "obj-92",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 442.0, 504.60000056028366, 50.0, 22.0 ],
                    "text": "65"
                }
            },
            {
                "box": {
                    "id": "obj-90",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 763.9000114202499, 93.60000139474869, 58.0, 22.0 ],
                    "text": "r cs_note"
                }
            },
            {
                "box": {
                    "id": "obj-89",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 376.0000056028366, 479.0, 32.0, 22.0 ],
                    "text": "ftom"
                }
            },
            {
                "box": {
                    "id": "obj-88",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 376.0000056028366, 518.400007724762, 60.0, 22.0 ],
                    "text": "s cs_note"
                }
            },
            {
                "box": {
                    "id": "obj-87",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 529.600007891655, 696.0000103712082, 91.0, 22.0 ],
                    "text": "s #0_s4m_note"
                }
            },
            {
                "box": {
                    "id": "obj-86",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 529.600007891655, 660.0, 90.0, 22.0 ],
                    "text": "route note-num"
                }
            },
            {
                "box": {
                    "id": "obj-85",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 846.7000126838684, 93.60000139474869, 89.0, 22.0 ],
                    "text": "r #0_s4m_note"
                }
            },
            {
                "box": {
                    "id": "obj-84",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 846.7000126838684, 132.00000196695328, 78.40000116825104, 22.0 ],
                    "text": "61"
                }
            },
            {
                "box": {
                    "id": "obj-83",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 845.6000126004219, 42.0, 38.0, 34.0 ],
                    "text": "SCM \n"
                }
            },
            {
                "box": {
                    "id": "obj-82",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 764.0000113844872, 45.60000067949295, 36.80000054836273, 34.0 ],
                    "text": "CS  \n"
                }
            },
            {
                "box": {
                    "id": "obj-78",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 766.4000114202499, 128.30000221729279, 50.0, 22.0 ],
                    "text": "65"
                }
            },
            {
                "box": {
                    "id": "obj-81",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 690.5999997258186, 42.0, 36.80000054836273, 34.0 ],
                    "text": "ABL\n"
                }
            },
            {
                "box": {
                    "id": "obj-79",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "float" ],
                    "patching_rect": [ 376.0000056028366, 412.0000061392784, 29.5, 22.0 ],
                    "text": "t b f"
                }
            },
            {
                "box": {
                    "id": "obj-73",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 515.2000076770782, 244.6999995112419, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-72",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 416.5, 243.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-71",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 479.20000714063644, 139.20000207424164, 74.0, 22.0 ],
                    "text": "snapshot~ 1"
                }
            },
            {
                "box": {
                    "id": "obj-70",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 470.4000070095062, 187.20000278949738, 96.8000014424324, 22.0 ],
                    "text": "133.991852"
                }
            },
            {
                "box": {
                    "id": "obj-63",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 479.20000714063644, 112.00000166893005, 132.0, 22.0 ],
                    "text": "abl.dsp.pitchestimator~"
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 693.0, 128.30000221729279, 48.800000727176666, 22.0 ],
                    "text": "48"
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 693.0, 92.0, 32.0, 22.0 ],
                    "text": "ftom",
                    "varname": "ftom"
                }
            },
            {
                "box": {
                    "id": "obj-51",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 376.0000056028366, 444.00000661611557, 96.0, 22.0 ],
                    "text": "351.404817"
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 225.75000068545341, 202.0, 50.0, 22.0 ],
                    "text": "s~ cs-in"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-47",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 377.7500006854534, 121.0, 37.0, 23.0 ],
                    "text": "plug"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-42",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "patching_rect": [ 225.75000068545341, 92.0, 50.0, 22.0 ],
                    "text": "midiin"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-46",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 8,
                    "outlettype": [ "", "", "", "int", "int", "", "int", "" ],
                    "patching_rect": [ 225.75000068545341, 121.0, 143.0, 22.0 ],
                    "text": "midiparse"
                }
            },
            {
                "box": {
                    "autosave": 1,
                    "bgmode": 0,
                    "border": 0,
                    "clickthrough": 0,
                    "id": "obj-40",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 8,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal", "signal", "", "list", "int", "", "", "" ],
                    "patching_rect": [ 225.75000068545341, 160.0, 92.5, 22.0 ],
                    "save": [ "#N", "vst~", "loaduniqueid", 0, ";" ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_invisible": 1,
                            "parameter_longname": "vst~",
                            "parameter_modmode": 0,
                            "parameter_shortname": "vst~",
                            "parameter_type": 3
                        }
                    },
                    "saved_object_attributes": {
                        "parameter_enable": 1,
                        "parameter_mappable": 0
                    },
                    "snapshot": {
                        "filetype": "C74Snapshot",
                        "version": 2,
                        "minorversion": 0,
                        "name": "snapshotlist",
                        "origin": "vst~",
                        "type": "list",
                        "subtype": "Undefined",
                        "embed": 1,
                        "snapshot": {
                            "pluginname": "Zebra2.vstinfo",
                            "plugindisplayname": "Zebra 2.9.4",
                            "pluginsavedname": "",
                            "pluginsaveduniqueid": 0,
                            "version": 1,
                            "isbank": 0,
                            "isbase64": 1,
                            "blob": "25294.CMlaKA....fQPMDZ....ALUSDIC...P.....AfzTfvTZzQGakAhPocFHH8lbtA...............HljunBPMUFcgofBBElaqoiBmnUYhIWXfXTXiQ2axkGHx3RMmnfBAUGcn8lb5nvIH81cgIGYfL0XgImbmnfBUMWXmUlNJbRSWAROfXWZhIWXz8FWxEDUfzCHycWYrw1IJnvPgQWYm8lboU1b5nvILUVXjMmNBIWXyM2IJnfQkEFc0IWYyoiBmzzat8FKfPjb4chBJLDZgIWXiQWYxoiBmPTXxsFKfLzatMGcg4Fcr.xPrUVXtwBHS8lYzwBHNEFc0IWXrchBJnxKJnvHA0TOZUlXxElLJLhUkI2b8HCL0.CLJLRQtQVZg4VOrkFczwVYJLhas0yLznvHsMWOt8lakovHsMWOM8FYWgFaJLRay0CToQ2XnckBiz1b8LDcxwVPJLRay0yPzIGaBovHsMWOLY1aGEiBiz1b8vjYucjLJLRay0yQgQWYJLRay0yRkkmQuwlBiz1b8rTY4YzarIiBiz1b8XUYr81XoQWdJLRay0SPT8VciglBiz1b8Djbv0zajovHsMWOAIGbMQlLJLRay0SQtYWLJLRay0SQtYmLJLRay0SQtY2LJLRay0SQtYGMJLRay0SSSUzQwnvHsMWOMMUQGIiBiz1b8zzTEczLJLRay0SSSUzQznvHsMWOLY1awnvHsMWOLY1axnvHsMWOLY1aynvHsMWOLY1aznvHsMWOM0TXvEiBiz1b8zTSgAmLJLRay0SSMEFbynvHsMWOM0TXvQiBiz1b8zTSogWLJLRay0SSMkFdxnvHsMWOM0TZ3MiBiz1b8zTSogGMJLha10SMJLRa10yQgQWYJLRa10SQtYWLJLRa10SQtYmLJLRa10SQtY2LJLRa10SQtYGMJLxXs0SagklaJLzXOAWOw.CLt.CLJLBSF8zQ8DiBivjQOcjL8DiBiLVa8.0PuIWYJf0WwzCLt.CLJj0WwzCLt.CLJf0WxzCLt.CLJj0WxzCLt.CLJf0WyzCLt.CLJj0WyzCLt.CLJf0WzzCLt.CLJj0WzzCLt.CLJzDUwDSOOM0PwnCUMQDbzoPSLESL8HiKv.iBMIULwzSKx3BLvnPSTEiL8TjSVMiNDU1XJzDSwHSOsDCLv3BLvnPSREiL8zRMt.CLJzDUwLSOX0jQwnCVF0DQJzDSwLSOwPiKv.iBMIULyziLv3BLvnPSTECM8TjSVMiNAQ2ZJzDSwPSOsDiKv.iBMIULzzSKwHiKv.iBMQUL0ziau4VY5D1byk1YtUFYJzDSwTSOzfiKv.iBMIUL0zSKzfiKv.iBMQUL1ziau4VY5D1byk1YtUFYJzDSwXSO0.iKv.iBMIUL1zSK0.iKv.iBMQUL2ziau4VY5D1byk1YtUFYJzDSwbSO0.iKv.iBMIUL2zSK0.iKv.iBMQUL3ziau4VY5D1byk1YtUFYJzDSwfSO0.iKv.iBMIUL3zSK0.iKv.iBMQkLwzCVMYTL57DSuEFYJzDSxDSO0.iKv.iBMIkLwzSKwbiKv.iBMQkLxzCVMYTL5XzSlYlBMwjLxzCLt.CLJzjTxHSOsLiK3PiBMQkLyziUCETL5.UXtEiBMwjLyzCLt.CLJzjTxLSOsHiMt.CLJzDUxPSOZ0TXyoSSgMGcJzDSxPSOv3BLvnPSRICM8DiLt.CLJzDUxTSOt8lakoSXyMWZm4VYjoPSLISM8TCLt.CLJzjTxTSOsTCLt.CLJzDUxXSOt8lakoSXyMWZm4VYjoPSLIiM8TCLt.CLJzjTxXSOsTCLt.CLJzDUxbSOt8lakoSXyMWZm4VYjoPSLIyM8TCLt.CLJzjTxbSOsTCLt.CLJzDUxfSOt8lakoSXyMWZm4VYjoPSLICN8TCLt.CLJzjTxfSOsTCLt.CLJzDUyDSOX0jQwnyP0QmBMwzLwzCMy3RMvnPSRMSL8zxL03hMynPSTMiL831atUlNgM2boclakQlBMwzLxzSMv3BLvnPSRMiL8zRMv3BLvnPSTMyL831atUlNgM2boclakQlBMwzLyzCM33BLvnPSRMyL8zBM33BLvnPSTMCM831atUlNgM2boclakQlBMwzLzzSMv3BLvnPSRMCM8zRMv3BLvnPSTMSM831atUlNgM2boclakQlBMwzL0zCM33BLvnPSRMSM8zBM33BLvnPSTMiM831atUlNgM2boclakQlBMwzL1zSMv3BLvnPSRMiM8zRMv3BLvnPSTMyM831atUlNgM2boclakQlBMwzL2zSMv3BLvnPSRMyM8zRMv3BLvnPSTMCN831atUlNgM2boclakQlBMwzL3zSMv3BLvnPSRMCN8zRMv3BLvnPSTQSL8fUSFEiNRU1bJzDSzDSOxPiKv.iBMIEMwzSKxbiK0.iBMQEMxziUCETL5X0arEiBMwDMxzSKyXiKv.iBMIEMxzCLt.CLJzDUzLSOt8lakoSXyMWZm4VYjoPSLQyL8PCNt.CLJzjTzLSOsPCNt.CLJzDUzPSOt8lakoSXyMWZm4VYjoPSLQCM8TCLt.CLJzjTzPSOsTCLt.CLJzDUzTSOt8lakoSXyMWZm4VYjoPSLQSM8TCLt.CLJzjTzTSOsTCLt.CLJzDUzXSOt8lakoSXyMWZm4VYjoPSLQiM8HCMt.CLJzjTzXSOsHCMt.CLJzDUzbSOt8lakoSXyMWZm4VYjoPSLQyM8TCLt.CLJzjTzbSOsTCLt.CLJzDUzfSOt8lakoSXyMWZm4VYjoPSLQCN8TCLt.CLJzjTzfSOsTCLt.CLJzDU0DSOLYzSynSPsAmBMwTMwzSL23BLvnPSRUSL8PiLt.CLJzDU0HSOLYzSyniTgQWYJzDS0HSOyPiKv.iBMIUMxzSK4.iKv.iBMQUMyziUCETL5.UXtEiBMwTMyzSMv3BLvnPSRUyL8.iKv.iBMQUMzziau4VY5D1byk1YtUFYJzDS0PSO0.iKv.iBMIUMzzSK0.iKv.iBMQUM0ziau4VY5D1byk1YtUFYJzDS0TSO0.iKv.iBMIUM0zSK0.iKv.iBMQUM1ziau4VY5D1byk1YtUFYJzDS0XSO0.iKv.iBMIUM1zSK0.iKv.iBMQUM2ziau4VY5D1byk1YtUFYJzDS0bSO0.iKv.iBMIUM2zSK0.iKv.iBMQUM3ziau4VY5D1byk1YtUFYJzDS0fSO0.iKv.iBMIUM3zSK0.iKv.iBMQkMwzSQNYUL5HUYroPSLYSL8DCNt.CLJzjT1DSOv3BLvnPSTYiL8TjSVEiNSU2bToPSLYiL8.iKv.iBMIkMxzSK3.iKv.iBMQkMyzSQNYUL5PTYioPSLYyL8DiKv.iBMIkMyzSKxfiKv.iBMQkMzzSQNYUL5DDcqoPSLYCM8DCMt.CLJzjT1PSOv3BLvnPSTYSM831atUlNgM2boclakQlBMwjM0zSMv3BLvnPSRYSM8zRMv3BLvnPSTYiM831atUlNgM2boclakQlBMwjM1zSMv3BLvnPSRYiM8zRMv3BLvnPSTYyM831atUlNgM2boclakQlBMwjM2zSMv3BLvnPSRYyM8zRMv3BLvnPSTYCN831atUlNgM2boclakQlBMwjM3zSMv3BLvnPSRYCN8zRMv3BLvnPSTcSL8fUSFEiNOwzagQlBMwzMwzyM23hM2nPSRcSL8zhLx3xLynPSTciL8X0PAEiNV8FawnPSLciL8zhLy3xM0nPSRciL8.iKv.iBMQ0Myziau4VY5D1byk1YtUFYJzDS2LSO0.iKv.iBMI0MyzSK0.iKv.iBMQ0Mzziau4VY5D1byk1YtUFYJzDS2PSO0.iKv.iBMI0MzzSK0.iKv.iBMQ0M0ziau4VY5D1byk1YtUFYJzDS2TSO0.iKv.iBMI0M0zSK0.iKv.iBMQ0M1ziau4VY5D1byk1YtUFYJzDS2XSO0.iKv.iBMI0M1zSK0.iKv.iBMQ0M2ziau4VY5D1byk1YtUFYJzDS2bSO0.iKv.iBMI0M2zSK0.iKv.iBMQ0M3ziau4VY5D1byk1YtUFYJzDS2fSOzfiKv.iBMI0M3zSKzfiKv.iBMQENwzCVMYTL5fkQMoPSLgSL8DCLv3BLvnPSRgSL8DiKxTiBMQENxziau4VY5D1byk1YtUFYJzDS3HSO0.iKv.iBMIENxzSK0.iKv.iBMQENyziau4VY5D1byk1YtUFYJzDS3LSO0.iKv.iBMIENyzSK0.iKv.iBMQENzziau4VY5D1byk1YtUFYJzDS3PSO0.iKv.iBMIENzzSK0.iKv.iBMQEN0ziau4VY5D1byk1YtUFYJzDS3TSO0.iKv.iBMIEN0zSK0.iKv.iBMQEN1ziau4VY5D1byk1YtUFYJzDS3XSO0.iKv.iBMIEN1zSK0.iKv.iBMQEN2ziau4VY5D1byk1YtUFYJzDS3bSO0.iKv.iBMIEN2zSK0.iKv.iBMQEN3ziau4VY5D1byk1YtUFYJzDS3fSO0.iKv.iBMIEN3zSK0.iKv.iBM0DUwzySSMTL5PDc04lBM0zTwziLynPSMQTL8XiKv.iBM0jUSESOvnPSMYEQwzCLt.CLJzTSTISOLYzSwniTgQWYJzTSSISOxHiBM0DQxzSK13BLvnPSMY0TxzCLJzTSVQjL8.iKv.iBM0DUyzSQNYUL5LUcyoPSMM0L8DSLJzTSDMSOyXiKv.iBM0jUSMSOvnPSMYEQyzCLt.CLJzTSTQSOOM0PwnCU04VYJzTSSQSOxPiBM0DQzzSLx3BLvnPSMY0TzzCLJzTSVQDM8.iKv.iBM0DU0zCVMYTL5XzSlYlBM0zT0ziLznPSMQTM8zRLv3BLvnPSMY0T0zCLJzTSVQTM8.iKv.iBM0DU1zCVMYTL5LTczoPSMMkM8HCMJzTSDYSOx3BLvnPSMY0T1zCLJzTSVQjM8.iKv.iBM0DU2ziau4VY5D1byk1YtUFYJzTSScSOvnPSMQzM8.iKv.iBM0jUScSOvnPSMYEQ2zCLt.CLJzTSTgSOt8lakoSXyMWZm4VYjoPSMMEN8.iBM0DQ3zCLt.CLJzTSVMEN8.iBM0jUDgSOv3BLvnPSMQUN831atUlNgM2boclakQlBM0zT4zCLJzTSDkSOv3BLvnPSMY0T4zCLJzTSVQTN8.iKv.iBM0DUw.SOt8lakoSXyMWZm4VYjoPSMMULvzCLJzTSDECL8.iKv.iBM0jUSECL8.iBM0jUDECL8.iKv.iBM0DUwDSOt8lakoSXyMWZm4VYjoPSMMULwzCLJzTSDESL8.iKv.iBM0jUSESL8.iBM0jUDESL8.iKv.iBM0DUwHSOt8lakoSXyMWZm4VYjoPSMMULxzCLJzTSDEiL8.iKv.iBM0jUSEiL8.iBM0jUDEiL8.iKv.iBSITXyUVOynvT2klam0CLt.CLJLEUxk1Y8DiBPAkbuoVOvn.TF8Faj0CLJ.kQowVY8DiBGYTZrUVOxnvQSMVXrUVOvnvPnwTX40CLJLUcxI2S8.iBRUlc8DiM2XSMJvTQD0CLt.CLJ.UPGUTOvn.TgcVYy8ja8.iBC8lbk4TOynvTrk1Xk0CMJTURe8Fb8PiBMkFYoETO0nPSoQVZP0iMJPjQuwFY8biBCQmbrETOxnvPzIGaB0SLwnvQSM1TkQWOvnvPn8zP8HiBLYTQ8.iBCUla8.iBM8laukja8.iBiLVa8vjQOcjBSkmai0CMJPkbocVOvnvUgYWY8.iBPg1bk0CLt.CLJHUXzUVOw.CLt.CLJDTav0SLv.iKv.iBSwVY20SLJ3zbzAWOwXiBSQGby0CNJT0U10CLJLxXs0CSF8zQxnvT441X8PiBTIWZm0CLJbUX1UVOvn.TnMWY8.iKv.iBREFck0SLv.iKv.iBA0Fb8DCLv3BLvnvTrU1c8DiBNMGcv0SL1nvTzA2b8jiBUckc8.iBiLVa8X0PCovHLYzSwzSLJLBSF8jL8DiBivjQOMSOwnvHLYzSzzSLJX0aoMVYy0SLJX0aoMVZtcVOvnPSuQVY8DiBP8lbzEVOx.iKv.iBPITOwn.TBQTOwnPPxM0X8LiBAI2SxQVOwnPPxwDb8.iBAI2SiQWOwnPPxwDS8DiMJDjbTIWOvn.QxYFc8DiBMQUctMUOvnPSTUmaN0SLvnPSTUmaT0SLwn.UxMGb8zRLxnfQTUma8.iKv.iBP8lbzI0Y8DiKv.iBP8lbzEVS8.iBP8lbzElL8.iKv.iBAcFckESOxnPPzIGbwzCLJDjcuMVL8DiBA0VcrESOwnPPs8FYwzCLJDTSDAGcwzCLt.CLJDTSDAmPwzCLt.CLJDzYzUlL8HiBAQmbvISOvnPP181XxzSLJDTa0wlL8DiBA01ajISOvnPPMQDbzISOv3BLvnPPMQDbBISOv3BLvnPPmQWYyziLJDDcxA2L8.iBAY2aiMSOwnPPsUGayzSLJDTauQ1L8.iBA0DQvQ2L8.iKv.iBA0DQvIzL8.iKv.iBAcFckQSOxnPPzIGbzzCLJDjcuMFM8DiBA0VcrQSOwnPPs8FYzzCLJDTSDAGczzCLt.CLJDTSDAmPzzCLt.CLJDzYzUVM8HiBAQmbvUSOvnPP181X0zSLJDTa0wVM8DiBA01ajUSOvnPPMQDbzUSOv3BLvnPPMQDbBUSOv3BLvnPPmQWY1ziLJDDcxAmM8.iBAY2aiYSOwnPPsUGa1zSLJDTauQlM8.iBA0DQvQmM8.iKv.iBA0DQvIjM8.iKv.iBAcFckcSOxnPPzIGb2zCLJDjcuM1M8DiBA0VcrcSOwnPPs8FY2zCLJDTSDAGc2zCLt.CLJDTSDAmP2zCLt.CLJDzYzUFN8HiBAQmbvgSOvnPP181X3zSLJDTa0wFN8DiBA01ajgSOvnPPMQDbzgSOv3BLvnPPMQDbBgSOv3BLvnPPmQWY4ziLJDDcxAWN8.iBAY2aikSOwnPPsUGa4zSLJDTauQVN8.iBA0DQvQWN8.iKv.iBA0DQvITN8.iKv.iBAcFckECL8HiBAQmbvECL8.iBAY2aiECL8DiBA0VcrECL8DiBA01ajECL8.iBA0DQvQWLvzCLt.CLJDTSDAmPw.SOv3BLvnPPmQWYwDSOxnPPzIGbwDSOvnPP181XwDSOwnPPsUGawDSOwnPPs8FYwDSOvnPPMQDbzESL8.iKv.iBA0DQvITLwzCLt.CLJDzYzUVLxziLJDDcxAWLxzCLJDjcuMVLxzSLJDTa0wVLxzSLJDTauQVLxzCLJDTSDAGcwHSOv3BLvnPPMQDbBEiL8.iKv.iBAcFckEyL8HiBAQmbvEyL8.iBAY2aiEyL8DiBA0VcrEyL8DiBA01ajEyL8.iBA0DQvQWLyzCLt.CLJDTSDAmPwLSOv3BLvnPPmQWYwPSOxnPPzIGbwPSOvnPP181XwPSOwnPPsUGawPSOwnPPs8FYwPSOvnPPMQDbzECM8.iKv.iBA0DQvITLzzCLt.CLJDzYzUVL0ziLJDDcxAWL0zCLJDjcuMVL0zSLJDTa0wVL0zSLJDTauQVL0zCLJDTSDAGcwTSOv3BLvnPPMQDbBESM8.iKv.iBAcFckEiM8HiBAQmbvEiM8.iBAY2aiEiM8DiBA0VcrEiM8DiBA01ajEiM8.iBA0DQvQWL1zCLt.CLJDTSDAmPwXSOv3BLvnvHi0VOE4jUwnPSuQVY8.iBo0zajUVOvnvbM8FYk0CLJjlaoQWOv3BLvnPPzsVOwfiKv.iBDU1X8PCMt.CLJLUcy0CMx3BLvnvT0MGU8.iKv.iBSU2bxzCLt.CLJHUYr0iLv3BLvnfUkwVO1.iKv.iBVISR8.iKv.iBVISP8.iKv.iBVICQ8.iKv.iBVIyT8.iKv.iBVIiQR0CLt.CLJXkLSISOv3BLvnfUxHUOv3BLvnvRxjTOv3BLvnvRxDTOv3BLvnvRxPTOv3BLvnvRxLUOv3BLvnvRxXjT8.iKv.iBKIyTxzCLt.CLJrjLR0CLt.CLJLEauAWY8.iKv.iBTITXyUVOvnvHi0VOE4jUxnPSuQVY8.iBo0zajUVOvnvbM8FYk0CLJjlaoQWOv3BLvnPPzsVOwHiK0.iBDU1X8DyLtTCLJLUcy0iM03RMvnvT0MGU8.iKv.iBSU2bxzCLt.CLJHUYr0iM03BLvnfUkwVOv3BLvnfUxjTOv3BLvnfUxDTOv3BLvnfUxPTOv3BLvnfUxLUOv3BLvnfUxXjT8.iKv.iBVIyTxzCLt.CLJXkLR0CLt.CLJrjLI0CLt.CLJrjLA0CLt.CLJrjLD0CLt.CLJrjLS0CLt.CLJrjLFIUOv3BLvnvRxLkL8.iKv.iBKIiT8.iKv.iBSw1avUVOv3BLvn.UBE1bk0CLJLxXs0SQNY0LJzzajUVOvnPZM8FYk0CLJLWSuQVY8.iBo4VZz0CLt.CLJDDcq0SL33BLvn.QkMVOyLiKv.iBSU2b8.iKv.iBSU2bT0CLt.CLJLUcyISOv3BLvnfTkwVOwTiKv.iBVUFa8PiLt.CLJXkLI0CLt.CLJXkLA0CLt.CLJXkLD0CLt.CLJXkLS0CLt.CLJXkLFIUOv3BLvnfUxLkL8.iKv.iBVIiT8.iKv.iBKISR8.iKv.iBKISP8.iKv.iBKICQ8.iKv.iBKIyT8.iKv.iBKIiQR0CLt.CLJrjLSISOv3BLvnvRxHUOv3BLvnvTr8Fbk0CLt.CLJPkPgMWY8.iBiLVa8TjSVQiBM8FYk0CLJjVSuQVY8.iBy0zajUVOvnPZtkFc8.iKv.iBAQ2Z8.iKv.iBDU1X8XSMt.CLJLUcy0CLt.CLJLUcyQUOv3BLvnvT0MmL8.iKv.iBRUFa8DSMt.CLJXUYr0SMv3BLvnfUxjTOv3BLvnfUxDTOv3BLvnfUxPTOv3BLvnfUxLUOv3BLvnfUxXjT8.iKv.iBVIyTxzCLt.CLJXkLR0CLt.CLJrjLI0CLt.CLJrjLA0CLt.CLJrjLD0CLt.CLJrjLS0CLt.CLJrjLFIUOv3BLvnvRxLkL8.iKv.iBKIiT8.iKv.iBSw1avUVOv3BLvn.UBE1bk0CLJLxXs0SSSUzQwn.UsUka8.iBE4lc8DiLJXUYr0CLt.CLJDDcq0CLt.CLJvDbz0CLt.CLJHUYr0CLt.CLJPkbocVOvnvHi0VOMMUQGIiBT0VUt0CLJTja10SLynfUkwVOv3BLvnPPzsVOv3BLvn.SvQWOv3BLvnfTkwVOv3BLvn.Uxk1Y8.iBiLVa8zzTEczLJPUaU4VOvnPQtYWOwPiBVUFa8.iKv.iBAQ2Z8.iKv.iBLAGc8.iKv.iBRUFa8.iKv.iBTIWZm0CLJLxXs0SSSUzQzn.UsUka8.iBE4lc8DSMJXUYr0CLt.CLJDDcq0CLt.CLJvDbz0CLt.CLJHUYr0CLt.CLJPkbocVOvnvHi0VOLYzSwnvT441X8LiBTIWZm0CLJbUX1UVOvn.TnMWY8.iKv.iBREFck0SLv.iKv.iBA0Fb8DCLv3BLvnvTrU1c8DiBNMGcv0SL1nvTzA2b8DiMJT0U10CLJPDa40yL23RMvn.QMMUL8DiBD0DQwzSN13BLvnfQMMUL8DiBF0DQwzCMt.CLJLxXs0CSF8jLJLUdtMVOzn.Uxk1Y8.iBWElck0yMJ.EZyUVOv3BLvnfTgQWY8DCL13BLvnPPsAWO0.iKv.iBSwVY20SLJ3zbzAWOwXiBSQGby0SL2nPUWYWOvn.QrkWOv3BLvn.QMMUL8.iBD0DQwzCLt.CLJXTSSESOvnfQMQTL8.iKv.iBiLVa8vjQOMiBSkmai0SKyn.Uxk1Y8.iBWElck0iMJ.EZyUVOv3BLvnfTgQWY8DiMz3BLvnPPsAWOv3BLvnvTrU1c8.iBNMGcv0SL1nvTzA2b8DCNJT0U10CLJPDa40CLt.CLJPTSSESOvn.QMQTL8.iKv.iBF0zTwzCLJXTSDESOv3BLvnvHi0VOLYzSznvT441X8PiBTIWZm0CLJbUX1UVOvn.TnMWY8.iKv.iBREFck0SLv.iKv.iBA0Fb8DCLv3BLvnvTrU1c8DiBNMGcv0SL1nvTzA2b8DSNJT0U10CLJPDa40CLt.CLJPTSSESOvn.QMQTL8.iKv.iBF0zTwzCLJXTSDESOv3BLvnvHi0VOM0TXvEiBM8FYk0yLJzzTxMVOvnvTzA2b8HCLJ3Tcs0SL2nvHi0VOM0TXvIiBM8FYk0yLJzzTxMVOvnvTzA2b8HSLJ3Tcs0SL2nvHi0VOM0TXvMiBM8FYk0yLJzzTxMVOvnvTzA2b8HiLJ3Tcs0SL2nvHi0VOM0TXvQiBM8FYk0yLJzzTxMVOvnvTzA2b8HyLJ3Tcs0SL2nvHi0VOM0TZ3EiBTkGbk0SLJzzajESOxLiBM8FYxzCLJzzajMSOvnvPyQWOv3BLvnvHi0VOM0TZ3IiBTkGbk0CLJzzajESOvnPSuQlL8.iBM8FYyzCLJLzbz0SMv3BLvnvHi0VOM0TZ3MiBTkGbk0CLJzzajESOvnPSuQlL8.iBM8FYyzCLJLzbz0SMv3BLvnvHi0VOM0TZ3QiBTkGbk0CLJzzajESOvnPSuQlL8.iBM8FYyzCLJLzbz0SMv3BLvnvHi0VOGIWZjovQxkFY8HCMJbjP4AWOvnvQSQ2axUVOxTiBiLVa87zTCEiBWElck0CLJPUctUVOv3BLvnvRkk2TiwVOw.CLt.CLJPUSSI2X8DiMJPUSDAGc8zBLtHCLJ.EZyUVOv3BLvn.TnMWSSI2X8.iBPg1bMQDbz0CLt.CLJbkS00VOwLiKy.iBWA0TxMVOvnvUPQDbz0SL03BLvnfUz8FQ8.iKv.iBCUmb1UVOxXiBPIWYi0SLt.CLJXDVwPEb8fiBSYDVwzSMv3BLvnfQXEyTi0CLJXDVwPDc8.iKv.iBFgkLTAWOvnvTFgkL8.iKv.iBFgkLSMVOvnfQXICQz0CLt.CLJ.0arkWOvn.QzUma8.iKv.iBKY0bi0iL2nfUuwVOwHCLt.CLJX0arM0X8HiLJX0arQDc8zRMv3BLvn.Tg4VOv3BLvn.Tg41Ti0CLJ.UXtQDc8.iKv.iBSkmai0CLt.CLJLkaiM0X8.iBS41XDQWOv3BLvnvTtM1St0CLJ.0arcUO0.iKv.iBPcWaO4VOvnvUgQkX8HCNJHUYPg1b8.iBN8lbs0SLx3BLvnfTk4FY8.iBF0Fc5UVOvnvUT4TXsUVOxjiBiLVa87zTCIiBWElck0CLJPUctUVOv3BLvnvRkk2TiwVOw.CLt.CLJPUSSI2X8.iBT0DQvQWOv3BLvn.TnMWY8.iKv.iBPg1bMMkbi0CLJ.EZy0DQvQWOv3BLvnvUNUWa8DiKv.iBWA0TxMVOvnvUPQDbz0SL03BLvnfUz8FQ8.iKv.iBCUmb1UVOy.iBPIWYi0SMt.CLJXDVwPEb8.iBSYDVwzCLt.CLJXDVwL0X8.iBFgULDQWOv3BLvnfQXICUv0CLJLkQXISOv3BLvnfQXIyTi0CLJXDVxPDc8.iKv.iBP8Fa40CLJPDc04VOv3BLvnvRVM2X8LSLJX0ar0SLv.iKv.iBV8FaSMVOvnfUuwFQz0CLt.CLJ.UXt0CLt.CLJ.UXtM0X8.iBPElaDQWOv3BLvnvT441X8.iKv.iBS41XSMVOvnvTtMFQz0CLt.CLJLkai8ja8.iBP8FaW0SMv3BLvn.T201St0CLJbUXTIVOyHiBRUFTnMWOvnfSuIWa8DiLt.CLJHUYtQVOvnfQsQmdk0CLJbEUNEVak0yLynvHi0VOOM0PynvUgYWY8.iBTUmak0CLt.CLJrTY4M0Xr0SLv.iKv.iBT0zTxMVOvn.UMQDbz0CLt.CLJ.EZyUVOv3BLvn.TnMWSSI2X8.iBPg1bMQDbz0CLt.CLJbkS00VOw3BLvnvUPMkbi0CLJbETDAGc8DSMt.CLJXEcuQTOv3BLvnvP0Imck0yLzn.TxU1X8TiKv.iBFgULTAWOvnvTFgUL8.iKv.iBFgULSMVOvnfQXECQz0CLt.CLJXDVxPEb8.iBSYDVxzCLt.CLJXDVxL0X8.iBFgkLDQWOv3BLvn.TuwVd8.iBDQWct0CLt.CLJrjUyMVOyTiBV8Fa8DCLv3BLvnfUuw1Ti0CLJX0arQDc8.iKv.iBPEla8.iKv.iBPElaSMVOvn.Tg4FQz0CLt.CLJLUdtMVOv3BLvnvTtM1Ti0CLJLkaiQDc8.iKv.iBS41XO4VOvn.Tuw1U8TCLt.CLJ.0cs8ja8.iBWEFUh0yL1nfTkAEZy0CLJ3zax0VOwHiKv.iBRUlaj0CLJXTazoWY8.iBWQkSg0VY8LyMJLxXs0ySSMDMJbUX1UVOvn.U04VY8.iKv.iBKUVdSMFa8DCLv3BLvn.UMMkbi0CLJPUSDAGc8.iKv.iBPg1bk0CLt.CLJ.EZy0zTxMVOvn.TnMWSDAGc8.iKv.iBW4Tcs0SLt.CLJbETSI2X8.iBWAEQvQWOwTiKv.iBVQ2aD0CLt.CLJLTcxYWY8LCNJ.kbkMVO03BLvnfQXECUv0CLJLkQXESOv3BLvnfQXEyTi0CLJXDVwPDc8.iKv.iBFgkLTAWOvnvTFgkL8.iKv.iBFgkLSMVOvnfQXICQz0CLt.CLJ.0arkWOvn.QzUma8.iKv.iBKY0bi0yL4nfUuwVOw.CLt.CLJX0arM0X8.iBV8FaDQWOv3BLvn.Tg4VOv3BLvn.Tg41Ti0CLJ.UXtQDc8.iKv.iBSkmai0CLt.CLJLkaiM0X8.iBS41XDQWOv3BLvnvTtM1St0CLJ.0arcUO0.iKv.iBPcWaO4VOvnvUgQkX8PCLJHUYPg1b8.iBN8lbs0SLx3BLvnfTk4FY8.iBF0Fc5UVOvnvUT4TXsUVOzDiBiLVa83zaoMWYwn.U4AWY8.iBFESOw.CLt.CLJXTLSI2X8.iBFECQvQWOv3BLvnfQxzCLt.CLJXjLSI2X8.iBFICQvQWOv3BLvnvRVM2X8PiLJX0ar0SLv.iKv.iBV8FaSMVOvnfUuwFQz0CLt.CLJ.UXt0CLt.CLJ.UXtM0X8.iBPElaDQWOv3BLvn.TuwVd8.iBP8FaW0SMv3BLvnvHi0VON8VZyUlLJPUdvUVOvnfQwzSLv.iKv.iBFEyTxMVOvnfQwPDbz0CLt.CLJXjL8.iKv.iBFIyTxMVOvnfQxPDbz0CLt.CLJrjUyMVOzLiBV8Fa8DCLv3BLvnfUuw1Ti0CLJX0arQDc8.iKv.iBPEla8.iKv.iBPElaSMVOvn.Tg4FQz0CLt.CLJ.0arkWOvn.Tuw1U8TCLt.CLJLxXs0iUCYTLJPUdv0CLJLTcz0SL0.iKv.iBRU1b8.iKv.iBDImc8.iKv.iBGEVZt0CLt.CLJXTSwzCLt.CLJXzTwzCLJXTSxzCLt.CLJXzTxzCLJrTY4M0Xr0CLt.CLJLxXs0iUCYjLJPUdv0CLJLTcz0SL0.iKv.iBRU1b8.iKv.iBDImc8.iKv.iBGEVZt0CLt.CLJXTSwzCLt.CLJXzTwzCLJXTSxzCLt.CLJXzTxzCLJrTY4M0Xr0CLt.CLJLxXs0iUCYzLJPUdv0CLJLTcz0SL0.iKv.iBRU1b8.iKv.iBDImc8.iKv.iBGEVZt0CLt.CLJXTSwzCLt.CLJXzTwzCLJXTSxzCLt.CLJXzTxzCLJrTY4M0Xr0CLt.CLJLxXs0iUCYDMJPUdv0CLJLTcz0SL0.iKv.iBRU1b8.iKv.iBDImc8.iKv.iBGEVZt0CLt.CLJXTSwzCLt.CLJXzTwzCLJXTSxzCLt.CLJXzTxzCLJrTY4M0Xr0CLt.CLJLxXs0iQM8TLJbUX1UVOvn.U04VY8.iKv.iBKUVdSMFa8DCLv3BLvn.UMMkbi0CLJPUSDAGc8.iKv.iBF0TOv3BLvnfQMMkbi0CLJXTSDAGc8.iKv.iBVQ2aD0CLt.CLJPDc04VOv3BLvnvRVM2X8PCMJX0ar0SLv.iKv.iBV8FaSMVOvnfUuwFQz0CLt.CLJ.UXt0CLt.CLJ.UXtM0X8.iBPElaDQWOv3BLvn.TuwVd8.iBP8FaW0SMv3BLvnvQkQmb8.iBiLVa8XTSOIiBWElck0CLJPUctUVOv3BLvnvRkk2TiwVOw.CLt.CLJPUSSI2X8.iBT0DQvQWOv3BLvnfQM0CLt.CLJXTSSI2X8.iBF0DQvQWOv3BLvnfUz8FQ8.iKv.iBDQWct0CLt.CLJrjUyMVOzTiBV8Fa8DCLv3BLvnfUuw1Ti0CLJX0arQDc8.iKv.iBPEla8.iKv.iBPElaSMVOvn.Tg4FQz0CLt.CLJ.0arkWOvn.Tuw1U8TCLt.CLJbTYzIWOvnvHi0VOF0zSynvUgYWY8.iBTUmak0CLt.CLJrTY4M0Xr0SLv.iKv.iBT0zTxMVOvn.UMQDbz0CLt.CLJXTS8.iKv.iBF0zTxMVOvnfQMQDbz0CLt.CLJXEcuQTOv3BLvn.QzUma8.iKv.iBKY0bi0CM1nfUuwVOw.CLt.CLJX0arM0X8.iBV8FaDQWOv3BLvn.Tg4VOv3BLvn.Tg41Ti0CLJ.UXtQDc8.iKv.iBP8Fa40CLJ.0arcUO0.iKv.iBGUFcx0CLJLxXs0iQM8DMJbUX1UVOvn.U04VY8.iKv.iBKUVdSMFa8DCLv3BLvn.UMMkbi0CLJPUSDAGc8.iKv.iBF0TOv3BLvnfQMMkbi0CLJXTSDAGc8.iKv.iBVQ2aD0CLt.CLJPDc04VOv3BLvnvRVM2X8PyMJX0ar0SLv.iKv.iBV8FaSMVOvnfUuwFQz0CLt.CLJ.UXt0CLt.CLJ.UXtM0X8.iBPElaDQWOv3BLvn.TuwVd8.iBP8FaW0SMv3BLvnvQkQmb8.iBiLVa8LzasIVLJzzajUVOvn.U04VY8.iKv.iBKUVdSMFa8DCLv3BLvn.UMMkbi0CLJPUSDAGc8.iKv.iBDUFct0CLt.CLJXEcuQTOv3BLvnfQB0CLt.CLJXjPSI2X8.iBFIDQvQWOv3BLvn.Qg0Fb8.iKv.iBD0FbSI2X8.iBD0FbDAGc8.iKv.iBEg2X8.iKv.iBI4lZ8.iKv.iBI4lZSI2X8.iBI4lZDAGc8.iKv.iBT4VY8TCLt.CLJPkakMkbi0CLJPkakQDbz0CLt.CLJLUYi0CLt.CLJLUYiMkbi0CLJLUYiQDbz0CLt.CLJPTZyQWOv3BLvn.QxkWOv3BLvnfUuwVOw.CLt.CLJX0arM0X8.iBV8FaDQWOv3BLvn.Tg4VOv3BLvn.Tg41Ti0CLJ.UXtQDc8.iKv.iBP8Fa40CLJ.0arcUO0.iKv.iBFkFar0CLJLxXs0yPu0lXxnPSuQVY8.iBTUmak0CLt.CLJrTY4M0Xr0SLv.iKv.iBT0zTxMVOvn.UMQDbz0CLt.CLJPTYz4VOv3BLvnfUz8FQ8.iKv.iBFITOv3BLvnfQBMkbi0CLJXjPDAGc8.iKv.iBDEVav0CLt.CLJPTavMkbi0CLJPTavQDbz0CLt.CLJTDdi0CLt.CLJjjap0CLt.CLJjjapMkbi0CLJjjapQDbz0CLt.CLJPkak0SMv3BLvn.UtU1TxMVOvn.UtUFQvQWOv3BLvnvTkMVOv3BLvnvTkM1TxMVOvnvTkMFQvQWOv3BLvn.QoMGc8.iKv.iBDIWd8.iKv.iBV8Fa8DCLv3BLvnfUuw1Ti0CLJX0arQDc8.iKv.iBPEla8.iKv.iBPElaSMVOvn.Tg4FQz0CLt.CLJ.0arkWOvn.Tuw1U8TCLt.CLJXTZrwVOvnvHi0VOSgVXvUVLJPUdvUVOvn.QkAGcn0CLt.CLJPTSSI2X8.iBD0DQvQWOv3BLvnPQjcVY8bSMt.CLJTTSSI2X8.iBE0DQvQWOv3BLvnPRtAWcz0CLt.CLJ7TczAWcz0CLt.CLJfTZOUGc8.iKv.iBiLVa8LEZgAWYxn.U4AWY8.iBDUFbzgVOv3BLvn.QMMkbi0CLJPTSDAGc8.iKv.iBEQ1Yk0yM03BLvnPQMMkbi0CLJTTSDAGc8.iKv.iBI4Fb0QWOv3BLvnvS0QGb0QWOv3BLvn.Ro8Tcz0CLt.CLJLxXs0SSogWLJ.UXt0CLt.CLJzTZ30SMv3BLvn.Tt0DY8.iBP4VSD0CLt.CLJ.kaMMUOvnvHi0VOMkFdxn.Tg4VOv3BLvnPSogWO0.iKv.iBP4VSj0CLJ.kaMQTOv3BLvn.Tt0zT8.iBiLVa8zTZ3MiBPEla8.iKv.iBMkFd8TCLt.CLJ.kaMQVOvn.Tt0DQ8.iKv.iBP4VSS0CLJLxXs0SSogGMJ.UXt0CLt.CLJzTZ30SMv3BLvn.Tt0DY8.iBP4VSD0CLt.CLJ.kaMMUOvnvHi0VOX0jQwn.U4AWOvnvP0QWOwLCNtLyLJHUYy0SNtXyMJXTSwzSK4.iKv.iBFMUL8DSMJXTSxzyLt.CLJXzTxzSLwnvRkk2TiwVOwjiKyLiBF8jYl0SLt.CLJXzSM8FY8.iKv.iBF8zTxMVOvn.VF0TOv3BLvn.VF0DQ8.iKv.iBXYTSS0SL0nfPoE1b8HCLt.CLJ7DSuEFY8HiLtLyLJLDaoM1Z8.iKv.iBDImc8.iBR8Vcz0CLJPUdvISOsDiBiLVa8fUSFIiBTkGb8.iBCUGc8DSMv3BLvnfTkMWOv3BLvnfQMESOv3BLvnfQSESOvnfQMISOv3BLvnfQSISOvnvRkk2TiwVOv3BLvnfQOYlY8.iKv.iBF8TSuQVOv3BLvnfQOMkbi0CLJfkQM0CLt.CLJfkQMQTOv3BLvn.VF0zT8.iBBkVXy0CLt.CLJ7DSuEFY8.iKv.iBCwVZisVOv3BLvn.QxYWOvnfTuUGc8.iBTkGbxzSKwnvHi0VOSITLJHUXtcVY8.iBFIWYw0CLt.CLJXTSSI2X8.iBF0DQvQWOv3BLvnvSlY1b8.iKv.iBO0zTxMVOvnvSMQDbz0CLt.CLJzTZ30SMv3BLvnPSMMkbi0CLJzTSDAGc8.iKv.iBiLVa8LkPxnfTg41Yk0CLJXjbkEWOv3BLvnfQMMkbi0CLJXTSDAGc8.iKv.iBOYlYy0CLt.CLJ7TSSI2X8.iBO0DQvQWOv3BLvnPSogWO0.iKv.iBM0zTxMVOvnPSMQDbz0CLt.CLJLxXs0CQoMGcwn.U4AWY8.iBI4Fb0QWOv3BLvnvS0QGb0QWOv3BLvn.TxUFUowFc8.iKv.iBPMGcTkFaz0CLt.CLJLjazYjbkEWOw.CLt.CLJvza20CLt.CLJfTZmgVOv3BLvn.TuMGcFwFc8.iBiLVa8PTZyQmLJPUdvUVOvnPRtAWcz0CLt.CLJ7TczAWcz0CLt.CLJ.kbkQUZrQWOv3BLvn.TyQGUowFc8.iKv.iBC4FcFIWYw0SLv.iKv.iBL81c8.iKv.iBHk1Yn0CLt.CLJ.0ayQmQrQWOvnvHi0VOF8FajEiBRkFbvwVYy0CMJXzarQ1b8DCLt.CLJXTSuQVOv3BLvnfQSI2X8.iBBkVXy0CLt.CLJHTSuQVOv3BLvnfPSI2X8.iBFIUXzk1a8TCLt.CLJXzTr8Fbk0SLv3BLvnvPA41Yr0SMv3BLvn.SoYWY8.iBiLVa8XzarQlLJHUZvAGakMWOznfQuwFYy0SLv3BLvnfQM8FY8.iKv.iBFMkbi0CLJHTZgMWOv3BLvnfPM8FY8.iKv.iBBMkbi0CLJXjTgQWZu0SMv3BLvnfQSw1avUVOw.iKv.iBCEjamwVO0.iKv.iBLklck0CLJLxXs0iUCETLJ.UXtESOv3BLvn.Tg4VSSESOvn.Tg4VSDESOv3BLvnfUuwVL8jSNtLyLJX0PAESOwnPSuQ1TxMVL8.iBM8FYDAGcwzCLt.CLJ.UXtISOv3BLvn.Tg4VSSISOvn.Tg4VSDISOv3BLvnfUuwlL8.iKv.iBVMTPxzSLJzzajMkbiISOvnPSuQFQvQmL8.iKv.iBPElayzCLt.CLJ.UXt0zTyzCLJ.UXt0DQyzCLt.CLJX0arMSOv3BLvnfUCEzL8DiBM8FYSI2XyzCLJzzajQDbzMSOv3BLvn.Tg4FM8.iKv.iBPElaMMEM8.iBPElaMQDM8.iKv.iBV8FazzCLt.CLJX0PAQSOwnPSuQ1TxMFM8.iBM8FYDAGczzCLt.CLJzDUwzCLJzDUxzCLJzDUyzCLJzDUzzCLJ.kPwzCLJ.kPxzCLJ.kPyzCLJ.kPzzCLJHTcyESOvnfP0MmL8.iBBU2byzCLJHTcyQSOvnvTk4FYwzCLt.CLJLkaSI2XwzCLJLkaDAGcwzCLt.CLJLUYtQlL8.iKv.iBS41TxMlL8.iBS4FQvQmL8.iKv.iBAQGcS0SLJLxXs0yQxkFYFgkBGIWZj0CM3nvQBkGb8.iBGMEcuIWY8PSNJLxXs0SSuQlQXEiBM8FYk0CLJLTYtQWOx.iKv.iBSAWYj0SMv3BLvn.Tn8jYl0SMv3BLvn.QvQGZ8TCLt.CLJXTYkITOv3BLvnPSogWOv3BLvn.SCUGc8.iKv.iBHMTcz0SLv.iKv.iBQUWXj0CLt.CLJDEbnMWOxTiKv.iBLUVb8.iKv.iBHUVb8.iKv.iBQESOv3BLvnPTxzCLt.CLJTTTu4VOwnvHi0VOM8FYFgkLJzzajUVOvnvPk4Fc8HCLt.CLJLEbkQVO0.iKv.iBPg1SlYVO0.iKv.iBDAGcn0SMv3BLvnfQkUlP8.iKv.iBMkFd8.iKv.iBLMTcz0CLt.CLJfzP0QWOw.CLt.CLJDUcgQVOv3BLvnPTvg1b8HSMt.CLJvTYw0CLt.CLJfTYw0CLt.CLJDUL8.iKv.iBQISOv3BLvnPQQ8la8DiBiLVa8PTYrEVdwnPSuQVY8.iBMkFd8.iKv.iBFITOw.iKv.iBCITOxTiKv.iBLAUOw.CLt.CLJfDT8.iKv.iBDImc8.iKv.iBSkmaiESOznvT441XxzCMJLUdtM1L8PiBSkmaiQSOzn.UvzSLv.iKv.iBTESOw.CLt.CLJPkL8DCLv3BLvn.UyzSLv.iKv.iBPElawzSKw.CLt.CLJ.UXtISOw.CLt.CLJ.UXtMSOsDCLv3BLvn.Tg4FM8DCLv3BLvnvHi0VODUFagkmLJzzajUVOvnPSogWOv3BLvnfQB0SLv3BLvnvPB0iL03BLvn.SP0SLv.iKv.iBHAUOv3BLvn.QxYWOv3BLvnvT441XwzCMJLUdtMlL8PiBSkmaiMSOznvT441XzzCMJPEL8DCLv3BLvn.UwzSLv.iKv.iBTISOw.CLt.CLJP0L8DCLv3BLvn.Tg4VL8zRLv.iKv.iBPElaxzSLv.iKv.iBPElayzSKw.CLt.CLJ.UXtQSOw.CLt.CLJLxXs0yTnEFbkMiBTkGbk0CLJPTYvQGZ8.iKv.iBD0zTxMVOvn.QMQDbz0CLt.CLJTDYmUVO2TiKv.iBE0zTxMVOvnPQMQDbz0CLt.CLJjjavUGc8.iKv.iBOUGcvUGc8.iKv.iBHk1S0QWOv3BLvnvHi0VOSgVXvUFMJPUdvUVOvn.QkAGcn0CLt.CLJPTSSI2X8.iBD0DQvQWOv3BLvnPQjcVY8bSMt.CLJTTSSI2X8.iBE0DQvQWOv3BLvnPRtAWcz0CLt.CLJ7TczAWcz0CLt.CLJfTZOUGc8.iKv.iBiLVa8zTZ3UiBPEla8.iKv.iBMkFd8TCLt.CLJ.kaMQVOvn.Tt0DQ8.iKv.iBP4VSS0CLJLxXs0SSogmMJ.UXt0CLt.CLJzTZ30SMv3BLvn.Tt0DY8.iBP4VSD0CLt.CLJ.kaMMUOvnvHi0VORUlcwnPSuQVY8.iBDIWd8fiLt.CLJbUYz0yLv3BLvnfQB0SM33BLvn.Qg0Fb8DCMt.CLJLUZ5UVO2TiKv.iBSAGY8TCLt.CLJPDbz0iL23BLvn.QFITOzfiKv.iBDMUZ5UVO1TiKv.iBE0TZ30SNv3BLvn.QM8FY8DCLv3BLvn.QSAGY8TSMt.CLJ.kbk0CLt.CLJLxXs0yPu0Fbwn.U4AWY8.iBREFc8DCLv3BLvn.UnIWYy0SKx.iKv.iBAQGc8LCLt.CLJHUYr0SMv3BLvnPRtAWcz0CLt.CLJ7TczAWcz0CLt.CLJLxXs0yPu0Fbxn.U4AWY8.iBREFc8DCLv3BLvn.UnIWYy0SKx.iKv.iBAQGc8LCLt.CLJHUYr0SMv3BLvnPRtAWcz0CLt.CLJ7TczAWcz0CLt.CLJLxXs0SQQEiBlMVL8DiLt.CLJHWYyESOzPiKv.iBmEVZtESOsDiMtTCLJX1XxzCM23BLvnfbkMmL8PiKv.iBmEVZtISOsLiK0.iBlM1L8XCLt.CLJHWYyMSOz3BLvnvYgklayzSNt.CLJX1XzzSLv.iKv.iBxU1bzziM13BLvnvYgklazzSKxHiK0.iBiLVa8TTTxnfYiESOx.iKv.iBxU1bwziL03BLvnvYgklawzCLt.CLJX1XxzCMv3BLvnfbkMmL8HSMt.CLJbVXo4lL8.iKv.iBlM1L8XCLt.CLJHWYyMSOxTiKv.iBmEVZtMSOv3BLvnfYiQSO3.iKv.iBxU1bzziL03BLvnvYgklazzCLt.CLJLxXs0iUCYTMJPUdv0CLJLTcz0SL0.iKv.iBRU1b8.iKv.iBDImc8.iKv.iBGEVZt0CLt.CLJXTSwzCLt.CLJXzTwzCLJXTSxzCLt.CLJXzTxzCLJrTY4M0Xr0CLt.CLJLxXs0iUCYjMJPUdv0CLJLTcz0SL0.iKv.iBRU1b8.iKv.iBDImc8.iKv.iBGEVZt0CLt.CLJXTSwzCLt.CLJXzTwzCLJXTSxzCLt.CLJXzTxzCLJrTY4M0Xr0CLt.CLJLxXs0yTBMiBRElamUVOvnfQxUVb8.iKv.iBF0zTxMVOvnfQMQDbz0CLt.CLJ7jYlMWOv3BLvnvSMMkbi0CLJ7TSDAGc8.iKv.iBMkFd8TCLt.CLJzTSSI2X8.iBM0DQvQWOv3BLvnvHi0VOX0jQyn.U4AWOvnvP0QWOwTCLt.CLJHUYy0CLt.CLJXTSwzCLt.CLJXzTwzCLJXTSxzCLt.CLJXzTxzCLJrTY4M0Xr0CLt.CLJXzSlYVOv3BLvnfQO0zaj0CLt.CLJXzSSI2X8.iBXYTS8.iKv.iBXYTSD0CLt.CLJfkQMMUOvnfPoE1b8.iKv.iBOwzagQVOv3BLvnvPrk1Xq0CLt.CLJPjb10SLJH0a0QWOvn.U4AmL8zRLJLxXs0CQoMGcyn.U4AWY8.iBI4Fb0QWOv3BLvnvS0QGb0QWOv3BLvn.TxUFUowFc8.iKv.iBPMGcTkFaz0CLt.CLJLjazYjbkEWOw.CLt.CLJvza20CLt.CLJfTZmgVOv3BLvn.TuMGcFwFc8.iBiLVa8PTZyQGMJPUdvUVOvnPRtAWcz0CLt.CLJ7TczAWcz0CLt.CLJ.kbkQUZrQWOv3BLvn.TyQGUowFc8.iKv.iBC4FcFIWYw0SLv.iKv.iBL81c8.iKv.iBHk1Yn0CLt.CLJ.0ayQmQrQWOvnvHi0VONUmTkYWLJ.kbk0CLt.CLJPTXsAWO3.iKv.iBDU1XgkWO0.iKv.iBSkldk0SLv.iKv.iBT8lak0CLt.CLJbUZjQGZ8bSMt.CLJzTZ30iLv3BLvnvHi0VOZ0TXyofTkQWL8.iKv.iBRUFcxzCLt.CLJzTXyQWO0LiKv.iBXkULL0SMvn.VYICS8TSLJfUVyvTO0HiBXkEML0SMyn.VYECU8TCMJfUVxPUO0TiBXk0LT0SM1n.VYQCU8TyMJ7zTCESO0fiBOM0PxzSM4nvSSMzL8XCLJ7zTCQSO1DiBMMUQGESO1HiBMMUQGISO1LiBMMUQGMSO1PiBMMUQGQSO1TiBMMUQGUSO1XiBMMUQGYSO1biBMMUQGcSO1fiBMMUQGgSO1jiBRUlcwzyMvn.TtMSOzn.TtQSOvn.TtUSOvn.TtYSOvn.TtcSOvn.TtgSOvn.TtkSOvn.TtECL8.iBP4VLwzCLJHUXisFL8bSLJHUXisVL8biLJLxXs0CSgkWSk0lBLEVdMUVawzCLJvTX40TYsISOvn.SgkWSk01L8.iBLEVdMUVazzCLJvTX40TYsUSOvnfBJ7xKfLUYiQWZu4FHl8lbfT2YrkGHi8VavIWYyMWYjAhXo4VXxkGHDEFcgovKu.BQO4zITABUOU0PHABUHkzTJn.IjPBI3TSM1PiB+DVXgEVZgQFb5n1ZpolZpw1a5bFYmMVYtUlX5DVXgEVZgwFb5.mavAGZvQFb5.WavAGZvQFb5.WavAGZvwFb5nPXgEVXgEVYgoyXgEVXgEVXgoCbtAGbnAGavoSXgoCYuoCYvoSYhoSYioCavoCauoSYgoyXgoCYtoSXqoSZgoyYJXlNnUlNvAmNsElNgUlNhElNmIlNjMlNlQlNmAmNqElNv4lNgIlNnAWHyETVAkyXvUVaVcFYScVaiAGUIUVaMMkBmUVSnMFZjEjLyjybHETLvTVZUkTYsclZNEyYs0TREclZmgVRkklUnM1YuM1amkFUnEVPzDybHEzMzLGRAECLloPYrolPuY1XvkFZoA2alcVZuIVZoMVYvs1alIVYskVXs8lZvY1Yuo1Xu4VXiwlZiAmZs4lYswVYkcVYuEFYnUlaJ3lYuYFZt41atUVaq8FYo0FamckZsEkYpUlZo01Yr4FavQFbmoVXF0lYjglYiYFarElZh0lZiQFZtIVZyEUPw.iBnEFTqoVXoMWPYETNkklUng1TnM1YkkTUmQ1TnMVLAICMyLGSAEyL3LWPYEjL1TybLEjMwETLxbybLEjMwETLxnvMygTPw.yYk0zYmMEZlcVaNkDZjcFYScVaMEjLxDGdAECRwDTLLgTPwbERAECTHETLuEFRyETXiETMwEzLwgWPJDCRwDTLLgTPwbERAECTHETLuEFRAICQAEiTDETLIQTPwPVXDETLHQTPwXVXDETLmEFQAECZgQTPwvDQAESZoQjBAEiZgQTPwnVZDETLWQTPwrVZDETLrEFQAECaoQTPw.EQAESaoQTPw3VXDETLtkFQAEyagQTPw7VZDETLvEFQAoPLvkFQAISQAESTEETLgkVQAESXsUTPwHUQAEiXkUTPwHVZEETLh0VQAESREETLiUVQAEyXoUTPwLVaEETLjEVQJDTLjUVQAECYoUTPwPVaEETLHUTPwTVYEETLkkVQAESYsUTPwXVXEETLlUVQAEiYoUTPwXVaEETLmEVQAEyYkUjBAEyYoUTPwbVaEETLnEVQAEiSEETLnkVQAECZsUTPwvTQAESZiUTPwjVYEETLocVQAESZoUTPwj1ZEETLo0VQAoPLo8VQAEiZgUTPwn1XEETLpUVQAEiZmUTPwnVZEETLpsVQAEiZsUTPwn1aEETLWUTPwr1XEETLqUVQAEyZmUTPJDyZoUTPwr1ZEETLq0VQAEyZuUTPwvVXEETLrMVQAECakUTPwv1YEETLrkVQAECaqUTPwvVaEETLGUTPw.UQAEiBsMVQAESakUTPwz1YEETLskVQAESaqUTPwzVaEETLs8VQAEiagUTPw31XEETLtUVQAEiamUTPw3VZEETLtsVQAoPLt0VQAEiauUTPw7VXEETLuMVQAEyakUTPw71YEETLukVQAEyaqUTPw7VaEETLu8VQAECbgUTPw.2XEETLvUVQJDTLvcVQAECboUTPw.2ZEETLv0VQAECbuUzbjEVXiETMwEzLgYVPxjUPxDFYAISVQEjL4fWPwLCSHETLy.ERAEiBzPTPwLSRDEzMxETLPgTPwDSbAcibAECRwDzMxETLWgTP2HWPw7VXHEzMxETLmEFQAcibAEiYgQTP2HWPwfDQAovMxETLjEFQAcibAESRDEzMxETLRQTP2HWPwjVZDEzMxETLpEFQAcibAEiZoQTP2HWPwbEQAcibAEyZoQTP2HWPJDCagQTP2HWPwvVZDEzMxETLPQTP2HWPwzVZDEzMxETLtEFQAcibAEiaoQTP2HWPw7VXDEzMxETLukFQAcibAEiBvEFQAcibAECboQTP2HWPwTybjEVXiETMwEzLgYVPxjUPxDFYAISVQEjL4fWPwLCSHETLy.ERAECMDETLyjDQAovMxETLPgTPwDSbAcibAECRwDzMxETLWgTP2HWPw7VXHEzMxETLmEFQAcibAEiYgQTP2HWPwfDQAcibAECYgQTPJbibAESRDEzMxETLRQTP2HWPwjVZDEzMxETLpEFQAcibAEiZoQTP2HWPwbEQAcibAEyZoQTP2HWPwvVXDEzMxEjBwvVZDEzMxETLPQTP2HWPwzVZDEzMxETLtEFQAcibAEiaoQTP2HWPw7VXDEzMxETLukFQAcibAECbgQTP2HWPwn.boQTP2HWPwTybjEVXiETMwEzLgYVPxjUPxDFYAISVQEjL4fWPwLCSHETLy.ERAECMDETLyjDQAcibAECTHETLJDSbAcibAECRwDzMxETLWgTP2HWPw7VXHEzMxETLmEFQAcibAEiYgQTP2HWPwfDQAcibAECYgQTP2HWPwjDQAciBxETLRQTP2HWPwjVZDEzMxETLpEFQAcibAEiZoQTP2HWPwbEQAcibAEyZoQTP2HWPwvVXDEzMxETLrkFQAcibAoPLPQTP2HWPwzVZDEzMxETLtEFQAcibAEiaoQTP2HWPw7VXDEzMxETLukFQAcibAECbgQTP2HWPw.WZDEzMxETLJTybjEVXiETMwEzLgYVPxjUPxDFYAISVQEjL4fWPwLCSHETLy.ERAECMDETLyjDQAcibAECTHETLwDWP2HWPwfjBwDzMxETLWgTP2HWPw7VXHEzMxETLmEFQAcibAEiYgQTP2HWPwfDQAcibAECYgQTP2HWPwjDQAcibAEiTDEzMxoPPwjVZDEzMxETLpEFQAcibAEiZoQTP2HWPwbEQAcibAEyZoQTP2HWPwvVXDEzMxETLrkFQAcibAECTDEzMxETLJzVZDEzMxETLtEFQAcibAEiaoQTP2HWPw7VXDEzMxETLukFQAcibAECbgQTP2HWPw.WZDEzMxETL0LGSAYSbAEiBxbybLEjMwETLxbybLEjMwETLxbybLEjMwETLxbybAE1XAUSbzAWXvgFZrYzag8FbnglQtE1angFYFAkavYkQroPXtg1YrYzUsA2YnYjZg0FZmQlQLYjYvYDZgwFZlwlQmE1ZvYFZFYVXqgVUFgjZvUFbFQVXpgVYrYTRoAWYnYjTJjFZkQlQAo0PFAWXncFYrYzagc1ajglQtE1YmQFYFAkYuMFbFwVXlc1XrYzUk81XnYjZgU1YiQlQLIjXvYDZgQlBmIFaFcVXi8lXnYjYgM1YhQlQHI1agAmQjElXmEFaFkTXuEFZFIUXmEFYFEDbsg0QuE1arAmYGAkar8laGcUarovalcDSrwlatczYgsFatY1QHoFas41QIkFasY1QAgFar41QuE1YqwlYGAkYqslaGcUYqslYGwDYqolaGcVXislZJX1QHI1Zo41QIsTZlcTPvUFZpcDTtQ1YpcDSrQlYpcDRpQVYpcTPnQFYpcDTlM1XpcDSTIlZGgjXiElZG8zajAmBhwlan81Zj4lXr4FVmMFahwlan01XiolXr4Fbm0FYSwlavUVQiIFat8VYoQVahwVaPEFYYwVakkVPYQVaikVZioPahQVahcVQiIlRhkVajMkRg41XiolXJk1amMFahoTXvsFYtIlRpE1ajAmXJEVZhMVXpITYoQkXpITZoY1XiolPJzVZnMFYpITXooFYkolPkkFajYlZBkVZtQ1YpITaoAGYnolPQsTZlIzXkI1Zo4lPkU1XqolYBcVYjslZtITZkUlBqslYBsVYls1ZtITakc1ZrYlPuUFZqwlaBEUZr0lYBMVYpwVatITYksFatYlPmUFar4laBkVYsw1alIzZk4FauofaB0VYuwFblIzakAGaXITXiE1YgQ1PhMVXuEFZCM1XhcVXrMDUh8VXvMTQiclXjMjYiM1ahg1PmMFYmIFaCg1XJHjXvMTZiU1YiQ1PpMVYuMFZCs1Xlc1XrMDaiY1aiA2PsM1YmQFYC41Xm8FYnMzaig1Yjw1PvMFZuMTLgMVZnUlBjMjXikFbkg1PiMlZnUFaCQkZvUFbCUzZnU0PlM1ZvYFZCc1XrglYrMDZiYjYvMTZi0FZmQ1PpMVavcFZCs1Xto.Zmw1PrMlavY0PsM1angFYC41XuAGZnMzaiAGZnw1PvM1SZMzbAE1XAUSbAUSLwLWPgMVP0DGSogFYsIzZkwlXJX1aCcVarU1XqMjagwVam8lQvkVZsIVYCwVamElSC8VXoQVZpwlanE1YswzQIcjaiIDTvs1YpwlajkFYpsVZBwjBvUFUGckZgIVaBoVYm81YqYTYsk1Yl4lQIQVXmE1QLgEbjcjTg0VXjIDYk8VZiYlQuElYisVaGYVZiklXmMjXso.YmIFaCIValIVXnYzZo4lZnc1PpEFSjUlQjUFahQVZCAWan4VYmMTPls1ZpwlavEVZhsVaGoVZnsVZqIDSi4lZJbFaswVXiQlZgIDTlAmZlcDYowFaoo1Qq01ZnIFZCAWXrcVXuMTao01Yh4lQn0lYnYVXCQVaOM1XFkVZmUVQCwlBgsVaZYzUvE1alozago1ap4lRWUFYlA2PmkVZmElYC4VYqsFZlYzaoMlasAmPnElalw1ZBwTXmE1aFQVaQYFbFovao4laqc1QrEVYlclaF4VXhM1ahcjaswVamU1PiUlZmY1ZCA0ak0FZr41Uqk1anczao0FaqQlPHUVan4FatEDUJLVaBwVZogVYlYDbkoFblolQmE1XpoVZr4lagAWXtw1QPg1apwlPuE1Zm4VXr41YgkFbsclRlElalIFZFkVZsolBi4lQnklYsslYBI0YkQFZBUVZZMlYCEDbnEEatYVXuAWVB8VYiYlYmYzUjQlSFEDYlklaj0lYggVago1QjU1YroPXvMDTkw1QJwDZlAmYBgVauIVXlYDakA2XiwlQIcVXpolPPc1av8lRp0lZlUFZC0VZWoFYBMVZqg1XqMTRq8FaJf1Qk0FarEFYFAWXq4FYrIDSqQVZvcDRuU1SJcVZocVancDSX4lar0lYoo0YuMzUnoFYsMjXsA2XhclQi0VYtclBuMjZg4FbjQlQrkVZuUVZCEEZpcVXFkVZiUlZmIjTjU1ZiIDYgUFakslQpUlapQVYCsVYmclUFkzatE1YC8VZuo.aUMDSmsVavwVahk1ZvkVYGgVXtEFaoITPtkFatoTYkklXig1PtElXlQVZGwzXu4FZJ8VZoQVYjYjYsk1Yn01PJvVZnklahcjXo0DYpYDRmwFYmcTZsMVYkglQkUFYjUjQAgjaroDSv0FZpoTZsQjYuMjYko1ago1PuklZoc1aFMmBAE1XAUSbP0lYuglPkkFbh4lZBoVYn8FYpYjagQTYpYTRmkFZqcTYkgjXnYDbo81Yqc1QskVXsUFaCIURn81ProPXsMVYocTao8Vaow1QLgFZnwlPrEVal0FYGcVXoQlQJUVaqIlXlYTXoslZiclQL0VYsolPHckYioTasEUYuMTRJ3FYs8lPlk1YpIlZCkjXnwVXr4FZgI0XsczZooVYl01PnEFaoIzPs0VZnUVZFAWassVXoMDTsAGZqMTPgMlYoQlBsQVXjIlXiIjZkUFYmc1PrE1XpgkPIYlXnI1PsklYiklXBsVarU1XsMTRq0lZpcjZgUFauQ1Qn0FbuElYCkVZlo.arUlPnkFbggVZFYVXoUVXsMjXkklanM1PIwlZocFatwTZlc1aGcVZOQlZCYVZmklZgIDbkAGanM1PuEFZmYlXJHTPpY1ZoIDZoI1ZuM1Quk1ajYzQWs1ZpAmPPgVaWojasAGajk1PLoFavQFasgDbjoFYJYVXvwFYsYTXs0FYjQlBFAWXWYFZBEzToA2QHsDaqozaoM0aqcDagcVXhU1Qmk1Ytg1ZFcUYngFYFAkatgVZr4lXkQjXhYDRqoFZhcTZooPPkAmQsUVXiQjQRQVZg8lPPclavoFatkzXjgkPP41XlIFatQVZs8VZjIDRhI1ZlcDagsjZpczasIFZRMDYkgTXJ31PoklarIVaFAkZjUFbCgVaoM1XpYTYsA2Xjo1PREFYjs1PlEFZi41ZG0VZtcFbjcTaos1ZqglPAwFarsFasAkBuglSBUVakU1XjYTXoYFbs81QHglZiA2PRcFarYlPjUVZkYlaFIVYt4VTCsVZjYFZqYDRuY1QB8VYo0VXvMzZoofYr0FaGkjapAWaGgVXsAWZqITRtE1agwlaIw1ZsglRvkVZiIlXFQVXms1XlYzXoklXsMlPL0FapUFYskjZoUVYJLjagElZGIzZsIFak81PWcFas4lRnElamkFYBEDYsQFaFwVatglYrYzaowVXsQ1QjEVYvYlXF8VZks1XmYjYsUlBlMlXCsVYokVXjMjXoo1ZgQlQtEFYhc1ZFQVXtc1YgcTYko1aiAmQA81Zo01QskVYoQFaCkVapklXjMjYoUlZvo.YG8VZk41XqYzbg0VXjETMwUVYkolYiUFZQEjLg0VPxTFbUUFYjIVPyDlahIVPwT1aVclZnQVSjIVPwD1ahIVPJDiYmUFYkcFYjEzLgMlXhETLkcVYtUFbjQVPyD1ahIVPwXVZk4VYmQlXAMSXpglXAESYuY0YpgFYMQUPwD1ahMlBAESUmk1TnEVSjIVPwrjXhETLlcVYjU1YTEzLgMlXoETLkAWUkQFYjEzLg8lXhETLlcVYjU1YjUVPyD1XhMVPwnPYmUlakAGYhEzLg8lXkETLkcVYtUFbTEzLg8lXoETLkAWUkQFYkEzLg8lXhETLkcVYtUFbjUVPyD1ahMVPwTFYJX0Ytc1XjIVPxrjXhETLkQlUm41YiQUPxrjXoETLlcVYjU1YjIVPyD1XhIVPwT0YoMEZg0DUAEyRhMVPwTlamolBnkFYhEzLK4TPwTlamoFZoQUPyrDZoETLk41YpgVZjQVPyrDZhETLk41YpgVZjUVPyrDZiETLlM1Ypc1amgFYhoPPxrjSAEiYiclZm81YnQUPxrDZoETLkAWUkQFUAMSXuIlXAEiYoUlakcFUAMyRnMVPwTUQjIVPzrjXkETLUUDUJDDMKIVZAESYkclZnQlSjIVPxrjXhETLkU1YpgFYNQUPxrjXiETLkclUm01YkQlXAIyRhUVPwT1YVcVamUFUAIiBKIVZAMCN0LWPRETMwEDMvjSMyEUdAICdAECLCgkYlEzPwETLwTySqo1SBg0XqEzPwETLwTCbuU0SBAWZOEiPwoPPwDSMv0FVv8lPvk1Zp8jPwETLwTCbrsFZv8lPvgVUOITbAESL0T1aow1alITYqQFZuclPwETLwTyZhc1as0lPJnVahsVatITbAESL0.WYlIFajIzavgEajITbAESL0TFZjYlZqITQuIlZqITbAESL0n1ZhkVZhIjZk0VYoIlPwEjBwDSMtsFbnUFbB01akAmYhITbAESL0vzQh4lPNI1YhAmPwETLwTSYssjanoDYkw1ZtolRwETLwTCYgMFbMoTPoo.bmslRwETLwTyauklahUlRG8laholRwETLwTiYm4lZogFYsA2YpklZiQVawETLvbSczEzLTIVYlcFYsEWPw.yMJTGcX8jVGgFZQklYBEWPw.yM0QGVOEyQic1Zsk0PwETLvbSczA2aOMjQhIlamgzPwETLvbSczomcwETLvbSczomB1EWPw.yM0Qmd1EWPw.yM0Qmd1EWPw.yM0Qmd1EWPw.yM0Q2c1EWPw.yM0Q2c1EWPw.yM0Q2c1EWPw.yM0Q2c1oPbAECL2TGc2YWbAECL2TGc2YWbAECL2TGc2YWbAQiLvLSXlEjLyIUP1fmYoUVaj01Xko0LmEVYoQVXhklVyLWPJjWPxfWP3DSNwLWdAciYqQURlg1TncVSNM0YicVaMkTYlgVZnElUnMlSAEiLyEUdAICdAECLCgkYlEzPwETLwTiBOslZOIDVisVPCEWPwDSMv8VUOIDbo8TLBEWPwDSMv0FVv8lPvk1Zp8jPwETLwTCbrsFZv8lPvgVUOITbAESL0nPYukFauYlPksFYn81YBEWPwDSMqI1Yu0VaBoVahsVatITbAESL0.WYlIFajIzavgEajITbAESL0TFZjYlZqITQJ7lXpslPwETLwTiZqIVZoIlPpUVakklXBEWPwDSMtsFbnUFbB01akAmYhITbAESL0vzQh4lPNI1YhAmPwETLwTiBk01RtglRjUFaq4lZJEWPwDSMjE1Xv0jRAkFbmslRwETLwTyauklahUlRG8laholRwETLwTiYm4lZogFYsA2YpoPZpMFYsEWPw.yM0QWPyPkXkY1Yj0VbAECL2TGcX8jVGgFZQklYBEWPw.yM0QGVOEyQic1Zsk0PwETLvbSczA2aJ7zPFIlXtcFRCEWPw.yM0Qmd1EWPw.yM0Qmd1EWPw.yM0Qmd1EWPw.yM0Qmd1EWPw.yM0Qmd1EWPw.yM0Q2c1EmBAECL2TGc2YWbAECL2TGc2YWbAECL2TGc2YWbAECL2TGc2YWbAECL2TGc2YWbAECL2TGc2YWbAQiLvLSXlEjLyofTAYCdlkVYsQVaiUlVybVXkkFYgIVZZMybAkWPxfWP3DSNwLWdAciYqQURlg1TncVSNM0YicVaMkTYlgVZnElUJf1XNEDMW4VXpMVVwDjLyEUdAICdAECLCgkYlEzPwETLwTySqo1SBg0XqEzPwETLwTCbuU0SBAWZOEiPwETLwTiBv0FVv8lPvk1Zp8jPwETLwTCbrsFZv8lPvgVUOITbAESL0T1aow1alITYqQFZuclPwETLwTyZhc1as0lPp0lXqoPatITbAESL0.WYlIFajIzavgEajITbAESL0TFZjYlZqITQuIlZqITbAESL0n1ZhkVZhIjZk0VYoIlPwETLwTiaJrFbnUFbB01akAmYhITbAESL0vzQh4lPNI1YhAmPwETLwTSYssjanoDYkw1ZtolRwETLwTCYgMFbMoTPoA2YqojBwETLwTyauklahUlRG8laholRwETLwTiYm4lZogFYsA2YpklZiQVawETLvbSczEzLTIVYlcFYsEWPw.yM0QGVOofVGgFZQklYBEWPw.yM0QGVOEyQic1Zsk0PwETLvbSczA2aOMjQhIlamgzPwETLvbSczomcwETLvbSczomcwETLJ.yM0Qmd1EWPw.yM0Qmd1EWPw.yM0Qmd1EWPw.yM0Q2c1EWPw.yM0Q2c1EWPw.yM0Q2c1EWPw.yM0Q2c1EWPw.iB2TGc2YWbAECL2TGc2YWbAECL2TGc2YWbAQiLvLSXlEjLyIUP1fmYoUVaj01Xko0LmEVYoQVXhklVyLWP4EjL3oPP3DSNwLWdAciYqQURlg1TncVSNM0YicVaMkTYlgVZnElUnMlSAEiLyEUdAICdAECLCgkYlEzPwETLwTySqo1SJHDVisVPCEWPwDSMv8VUOIDbo8TLBEWPwDSMv0FVv8lPvk1Zp8jPwETLwTCbrsFZv8lPvgVUOITbAESL0T1aowlBuYlPksFYn81YBEWPwDSMqI1Yu0VaBoVahsVatITbAESL0.WYlIFajIzavgEajITbAESL0TFZjYlZqITQuIlZqofPwETLwTiZqIVZoIlPpUVakklXBEWPwDSMtsFbnUFbB01akAmYhITbAESL0vzQh4lPNI1YhAmPwETLwTSYssjaJflRjUFaq4lZJEWPwDSMjE1Xv0jRAkFbmslRwETLwTyauklahUlRG8laholRwETLwTiYm4lZogFYsA2YpklZiQlBsEWPw.yM0QWPyPkXkY1Yj0VbAECL2TGcX8jVGgFZQklYBEWPw.yM0QGVOEyQic1Zsk0PwETLvbSczA2aOMjQhofXtcFRCEWPw.yM0Qmd1EWPw.yM0Qmd1EWPw.yM0Qmd1EWPw.yM0Qmd1EWPw.yM0Qmd1EWPw.yM0Q2c1EWPw.yMJTGc2YWbAECL2TGc2YWbAECL2TGc2YWbAECL2TGc2YWbAECL2TGc2YWbAECL2TGc2YWbAQiLvLSXlEjLyIUP1fmBlkVYsQVaiUlVybVXkkFYgIVZZMybAkWPxfWP3DSNwLWdAciYqQURlg1TncVSNM0YicVaMkTYlgVZnElUnMlSAoPLxLmTAYCdlMlYhUlYAoEMn8FRCo0LyIUP1fmYiYlXkYVPZQCZugzPZMybREjM3Y1XlIVYlEjVzf1aHMjVyLmTJDjM3Y1XlIVYlEjVzf1aHMjVyLmTAYCdlMlYhUlYAoEMn8FRCo0LyIUP1fmYiYlXkYVPZQCZugzPZMybg0VXjEjB0DWYkUlZlMVYnEFYAISXmEjLkYlYhQlXAQSXpIlXAESYtY0YkU1YlkFUAEyRhMVPwTVYMcVaSglZjIVPwrjXkoPPwTVYmoFZj4DYjEjLKIVYAEiYi0DZmQlXAMSXoIlXRETUmk1TnEVSjQVPwrjXiETLUcVZSgVXMQVYAEyRhUVPJDSYkclZnQlSjUVPxrjXoETLk41YpgVZjYVPyrDZhETLk41YpgVZjcVPyrDZiETLk4lUmUVYmYVZjIVPwrjXhEjBwT1anYlYi0DZmQlXAEyRhIlTAY1Xmo1YucFZjQVPxrDZhETLkQlUm4FZgQlXAIyRhMVPwTFYVclanEFUAIyRhoPYAEyLkUVSm01TnoFUAEyRhIVPwTlYlIFUAQyRhMVPwX1YkQVYmQlYAMSXiIVYAEyLlcVYjU1YjcVPyD1XhIVPJDSUEQFYAQyRhMVPwXVZk4VYmQFYAMyRnMVPzjyLyEjTAUSbAQCL4Tyb4EzMkAGZjcFYmo1YsEyTNYEZiEjLwLmB4EzMkc1YpcVaN0DZiclZm81YnEjLxLWdAcSYlgVZNg1XSgFYAISMykWP2TVYmoFZj4jUnMlSmolUm8VPxDybAoPVAkiYoojYnMEZigVXKYlZJUzYp4TSAICMxLWPYETNlklRkQFZl4jUmcVLKYlZJY1XMgFYVc1aSc1amQVSAIyLJTybAkUP4XVZJUFYmk1TVgFYKYlZJUlYm8FZm0zYsYEZg0TPxLyMyETVAkiYooTYvg1YMg1Xm0lUScVYKYlZJUlBmclZm0lSMg1XIU1Yk4VPxLyLykWP2LlaUQjYnkjSVkjYgYlYk0VUkYVPwfyb4EzMi4VUDYFZI4jUIYVXlYVYsoPUkYVPwfyb4EzMi4VUDYFZI4jUIYVXlYVYsUUYlETL3LWdAcyXtUEQlgVRNYURlElYlUVaUUlYAECNykWP2LlaJDSYpU1akolYkMlawDjZlEUXiolYAklXgklZlE0ZtsTXlkUXpEFZgQlXsETTg0lTv01asMWdAcyXtESYpU1akolBlU1XtESPpYVTgMlZlETZhEVZpYVTq41RgYVVgoVXnEFYh0VPQEVaRAWau01b4EzMi4VLkoVYuUlZlU1XtESPpofYQE1XpYVPoIVXoolYQslaKElYYElZggVXjIVaAEUXsIEbs8VaykWP2LlawTlZk8VYpYVYi4VLAolYQE1XpYVPJjlXgklZlE0ZtsTXlkUXpEFZgQlXsETTg0lTv01asMWdAgSSmc1TnY1Ys4TPxPyb4EDNMc1YSglYm0lSAICMykmBAgSSmc1TnY1Ys4TPxPyb4EDNMc1YSglYm0lSAICMykWP2bVYMc1YSglYm0lSAICMyETVAgSQAISM0LWPYEDNEoPPxTSM8bSMyTiLxn...."
                        },
                        "snapshotlist": {
                            "current_snapshot": 0,
                            "entries": [
                                {
                                    "filetype": "C74Snapshot",
                                    "version": 2,
                                    "minorversion": 0,
                                    "name": "Zebra 2.9.4",
                                    "origin": "Zebra2.vstinfo",
                                    "type": "VST",
                                    "subtype": "Instrument",
                                    "embed": 1,
                                    "snapshot": {
                                        "pluginname": "Zebra2.vstinfo",
                                        "plugindisplayname": "Zebra 2.9.4",
                                        "pluginsavedname": "",
                                        "pluginsaveduniqueid": 0,
                                        "version": 1,
                                        "isbank": 0,
                                        "isbase64": 1,
                                        "blob": "25294.CMlaKA....fQPMDZ....ALUSDIC...P.....AfzTfvTZzQGakAhPocFHH8lbtA...............HljunBPMUFcgofBBElaqoiBmnUYhIWXfXTXiQ2axkGHx3RMmnfBAUGcn8lb5nvIH81cgIGYfL0XgImbmnfBUMWXmUlNJbRSWAROfXWZhIWXz8FWxEDUfzCHycWYrw1IJnvPgQWYm8lboU1b5nvILUVXjMmNBIWXyM2IJnfQkEFc0IWYyoiBmzzat8FKfPjb4chBJLDZgIWXiQWYxoiBmPTXxsFKfLzatMGcg4Fcr.xPrUVXtwBHS8lYzwBHNEFc0IWXrchBJnxKJnvHA0TOZUlXxElLJLhUkI2b8HCL0.CLJLRQtQVZg4VOrkFczwVYJLhas0yLznvHsMWOt8lakovHsMWOM8FYWgFaJLRay0CToQ2XnckBiz1b8LDcxwVPJLRay0yPzIGaBovHsMWOLY1aGEiBiz1b8vjYucjLJLRay0yQgQWYJLRay0yRkkmQuwlBiz1b8rTY4YzarIiBiz1b8XUYr81XoQWdJLRay0SPT8VciglBiz1b8Djbv0zajovHsMWOAIGbMQlLJLRay0SQtYWLJLRay0SQtYmLJLRay0SQtY2LJLRay0SQtYGMJLRay0SSSUzQwnvHsMWOMMUQGIiBiz1b8zzTEczLJLRay0SSSUzQznvHsMWOLY1awnvHsMWOLY1axnvHsMWOLY1aynvHsMWOLY1aznvHsMWOM0TXvEiBiz1b8zTSgAmLJLRay0SSMEFbynvHsMWOM0TXvQiBiz1b8zTSogWLJLRay0SSMkFdxnvHsMWOM0TZ3MiBiz1b8zTSogGMJLha10SMJLRa10yQgQWYJLRa10SQtYWLJLRa10SQtYmLJLRa10SQtY2LJLRa10SQtYGMJLxXs0SagklaJLzXOAWOw.CLt.CLJLBSF8zQ8DiBivjQOcjL8DiBiLVa8.0PuIWYJf0WwzCLt.CLJj0WwzCLt.CLJf0WxzCLt.CLJj0WxzCLt.CLJf0WyzCLt.CLJj0WyzCLt.CLJf0WzzCLt.CLJj0WzzCLt.CLJzDUwDSOOM0PwnCUMQDbzoPSLESL8HiKv.iBMIULwzSKx3BLvnPSTEiL8TjSVMiNDU1XJzDSwHSOsDCLv3BLvnPSREiL8zRMt.CLJzDUwLSOX0jQwnCVF0DQJzDSwLSOwPiKv.iBMIULyziLv3BLvnPSTECM8TjSVMiNAQ2ZJzDSwPSOsDiKv.iBMIULzzSKwHiKv.iBMQUL0ziau4VY5D1byk1YtUFYJzDSwTSOzfiKv.iBMIUL0zSKzfiKv.iBMQUL1ziau4VY5D1byk1YtUFYJzDSwXSO0.iKv.iBMIUL1zSK0.iKv.iBMQUL2ziau4VY5D1byk1YtUFYJzDSwbSO0.iKv.iBMIUL2zSK0.iKv.iBMQUL3ziau4VY5D1byk1YtUFYJzDSwfSO0.iKv.iBMIUL3zSK0.iKv.iBMQkLwzCVMYTL57DSuEFYJzDSxDSO0.iKv.iBMIkLwzSKwbiKv.iBMQkLxzCVMYTL5XzSlYlBMwjLxzCLt.CLJzjTxHSOsLiK3PiBMQkLyziUCETL5.UXtEiBMwjLyzCLt.CLJzjTxLSOsHiMt.CLJzDUxPSOZ0TXyoSSgMGcJzDSxPSOv3BLvnPSRICM8DiLt.CLJzDUxTSOt8lakoSXyMWZm4VYjoPSLISM8TCLt.CLJzjTxTSOsTCLt.CLJzDUxXSOt8lakoSXyMWZm4VYjoPSLIiM8TCLt.CLJzjTxXSOsTCLt.CLJzDUxbSOt8lakoSXyMWZm4VYjoPSLIyM8TCLt.CLJzjTxbSOsTCLt.CLJzDUxfSOt8lakoSXyMWZm4VYjoPSLICN8TCLt.CLJzjTxfSOsTCLt.CLJzDUyDSOX0jQwnyP0QmBMwzLwzCMy3RMvnPSRMSL8zxL03hMynPSTMiL831atUlNgM2boclakQlBMwzLxzSMv3BLvnPSRMiL8zRMv3BLvnPSTMyL831atUlNgM2boclakQlBMwzLyzCM33BLvnPSRMyL8zBM33BLvnPSTMCM831atUlNgM2boclakQlBMwzLzzSMv3BLvnPSRMCM8zRMv3BLvnPSTMSM831atUlNgM2boclakQlBMwzL0zCM33BLvnPSRMSM8zBM33BLvnPSTMiM831atUlNgM2boclakQlBMwzL1zSMv3BLvnPSRMiM8zRMv3BLvnPSTMyM831atUlNgM2boclakQlBMwzL2zSMv3BLvnPSRMyM8zRMv3BLvnPSTMCN831atUlNgM2boclakQlBMwzL3zSMv3BLvnPSRMCN8zRMv3BLvnPSTQSL8fUSFEiNRU1bJzDSzDSOxPiKv.iBMIEMwzSKxbiK0.iBMQEMxziUCETL5X0arEiBMwDMxzSKyXiKv.iBMIEMxzCLt.CLJzDUzLSOt8lakoSXyMWZm4VYjoPSLQyL8PCNt.CLJzjTzLSOsPCNt.CLJzDUzPSOt8lakoSXyMWZm4VYjoPSLQCM8TCLt.CLJzjTzPSOsTCLt.CLJzDUzTSOt8lakoSXyMWZm4VYjoPSLQSM8TCLt.CLJzjTzTSOsTCLt.CLJzDUzXSOt8lakoSXyMWZm4VYjoPSLQiM8HCMt.CLJzjTzXSOsHCMt.CLJzDUzbSOt8lakoSXyMWZm4VYjoPSLQyM8TCLt.CLJzjTzbSOsTCLt.CLJzDUzfSOt8lakoSXyMWZm4VYjoPSLQCN8TCLt.CLJzjTzfSOsTCLt.CLJzDU0DSOLYzSynSPsAmBMwTMwzSL23BLvnPSRUSL8PiLt.CLJzDU0HSOLYzSyniTgQWYJzDS0HSOyPiKv.iBMIUMxzSK4.iKv.iBMQUMyziUCETL5.UXtEiBMwTMyzSMv3BLvnPSRUyL8.iKv.iBMQUMzziau4VY5D1byk1YtUFYJzDS0PSO0.iKv.iBMIUMzzSK0.iKv.iBMQUM0ziau4VY5D1byk1YtUFYJzDS0TSO0.iKv.iBMIUM0zSK0.iKv.iBMQUM1ziau4VY5D1byk1YtUFYJzDS0XSO0.iKv.iBMIUM1zSK0.iKv.iBMQUM2ziau4VY5D1byk1YtUFYJzDS0bSO0.iKv.iBMIUM2zSK0.iKv.iBMQUM3ziau4VY5D1byk1YtUFYJzDS0fSO0.iKv.iBMIUM3zSK0.iKv.iBMQkMwzSQNYUL5HUYroPSLYSL8DCNt.CLJzjT1DSOv3BLvnPSTYiL8TjSVEiNSU2bToPSLYiL8.iKv.iBMIkMxzSK3.iKv.iBMQkMyzSQNYUL5PTYioPSLYyL8DiKv.iBMIkMyzSKxfiKv.iBMQkMzzSQNYUL5DDcqoPSLYCM8DCMt.CLJzjT1PSOv3BLvnPSTYSM831atUlNgM2boclakQlBMwjM0zSMv3BLvnPSRYSM8zRMv3BLvnPSTYiM831atUlNgM2boclakQlBMwjM1zSMv3BLvnPSRYiM8zRMv3BLvnPSTYyM831atUlNgM2boclakQlBMwjM2zSMv3BLvnPSRYyM8zRMv3BLvnPSTYCN831atUlNgM2boclakQlBMwjM3zSMv3BLvnPSRYCN8zRMv3BLvnPSTcSL8fUSFEiNOwzagQlBMwzMwzyM23hM2nPSRcSL8zhLx3xLynPSTciL8X0PAEiNV8FawnPSLciL8zhLy3xM0nPSRciL8.iKv.iBMQ0Myziau4VY5D1byk1YtUFYJzDS2LSO0.iKv.iBMI0MyzSK0.iKv.iBMQ0Mzziau4VY5D1byk1YtUFYJzDS2PSO0.iKv.iBMI0MzzSK0.iKv.iBMQ0M0ziau4VY5D1byk1YtUFYJzDS2TSO0.iKv.iBMI0M0zSK0.iKv.iBMQ0M1ziau4VY5D1byk1YtUFYJzDS2XSO0.iKv.iBMI0M1zSK0.iKv.iBMQ0M2ziau4VY5D1byk1YtUFYJzDS2bSO0.iKv.iBMI0M2zSK0.iKv.iBMQ0M3ziau4VY5D1byk1YtUFYJzDS2fSOzfiKv.iBMI0M3zSKzfiKv.iBMQENwzCVMYTL5fkQMoPSLgSL8DCLv3BLvnPSRgSL8DiKxTiBMQENxziau4VY5D1byk1YtUFYJzDS3HSO0.iKv.iBMIENxzSK0.iKv.iBMQENyziau4VY5D1byk1YtUFYJzDS3LSO0.iKv.iBMIENyzSK0.iKv.iBMQENzziau4VY5D1byk1YtUFYJzDS3PSO0.iKv.iBMIENzzSK0.iKv.iBMQEN0ziau4VY5D1byk1YtUFYJzDS3TSO0.iKv.iBMIEN0zSK0.iKv.iBMQEN1ziau4VY5D1byk1YtUFYJzDS3XSO0.iKv.iBMIEN1zSK0.iKv.iBMQEN2ziau4VY5D1byk1YtUFYJzDS3bSO0.iKv.iBMIEN2zSK0.iKv.iBMQEN3ziau4VY5D1byk1YtUFYJzDS3fSO0.iKv.iBMIEN3zSK0.iKv.iBM0DUwzySSMTL5PDc04lBM0zTwziLynPSMQTL8XiKv.iBM0jUSESOvnPSMYEQwzCLt.CLJzTSTISOLYzSwniTgQWYJzTSSISOxHiBM0DQxzSK13BLvnPSMY0TxzCLJzTSVQjL8.iKv.iBM0DUyzSQNYUL5LUcyoPSMM0L8DSLJzTSDMSOyXiKv.iBM0jUSMSOvnPSMYEQyzCLt.CLJzTSTQSOOM0PwnCU04VYJzTSSQSOxPiBM0DQzzSLx3BLvnPSMY0TzzCLJzTSVQDM8.iKv.iBM0DU0zCVMYTL5XzSlYlBM0zT0ziLznPSMQTM8zRLv3BLvnPSMY0T0zCLJzTSVQTM8.iKv.iBM0DU1zCVMYTL5LTczoPSMMkM8HCMJzTSDYSOx3BLvnPSMY0T1zCLJzTSVQjM8.iKv.iBM0DU2ziau4VY5D1byk1YtUFYJzTSScSOvnPSMQzM8.iKv.iBM0jUScSOvnPSMYEQ2zCLt.CLJzTSTgSOt8lakoSXyMWZm4VYjoPSMMEN8.iBM0DQ3zCLt.CLJzTSVMEN8.iBM0jUDgSOv3BLvnPSMQUN831atUlNgM2boclakQlBM0zT4zCLJzTSDkSOv3BLvnPSMY0T4zCLJzTSVQTN8.iKv.iBM0DUw.SOt8lakoSXyMWZm4VYjoPSMMULvzCLJzTSDECL8.iKv.iBM0jUSECL8.iBM0jUDECL8.iKv.iBM0DUwDSOt8lakoSXyMWZm4VYjoPSMMULwzCLJzTSDESL8.iKv.iBM0jUSESL8.iBM0jUDESL8.iKv.iBM0DUwHSOt8lakoSXyMWZm4VYjoPSMMULxzCLJzTSDEiL8.iKv.iBM0jUSEiL8.iBM0jUDEiL8.iKv.iBSITXyUVOynvT2klam0CLt.CLJLEUxk1Y8DiBPAkbuoVOvn.TF8Faj0CLJ.kQowVY8DiBGYTZrUVOxnvQSMVXrUVOvnvPnwTX40CLJLUcxI2S8.iBRUlc8DiM2XSMJvTQD0CLt.CLJ.UPGUTOvn.TgcVYy8ja8.iBC8lbk4TOynvTrk1Xk0CMJTURe8Fb8PiBMkFYoETO0nPSoQVZP0iMJPjQuwFY8biBCQmbrETOxnvPzIGaB0SLwnvQSM1TkQWOvnvPn8zP8HiBLYTQ8.iBCUla8.iBM8laukja8.iBiLVa8vjQOcjBSkmai0CMJPkbocVOvnvUgYWY8.iBPg1bk0CLt.CLJHUXzUVOw.CLt.CLJDTav0SLv.iKv.iBSwVY20SLJ3zbzAWOwXiBSQGby0CNJT0U10CLJLxXs0CSF8zQxnvT441X8PiBTIWZm0CLJbUX1UVOvn.TnMWY8.iKv.iBREFck0SLv.iKv.iBA0Fb8DCLv3BLvnvTrU1c8DiBNMGcv0SL1nvTzA2b8jiBUckc8.iBiLVa8X0PCovHLYzSwzSLJLBSF8jL8DiBivjQOMSOwnvHLYzSzzSLJX0aoMVYy0SLJX0aoMVZtcVOvnPSuQVY8DiBP8lbzEVOx.iKv.iBPITOwn.TBQTOwnPPxM0X8LiBAI2SxQVOwnPPxwDb8.iBAI2SiQWOwnPPxwDS8DiMJDjbTIWOvn.QxYFc8DiBMQUctMUOvnPSTUmaN0SLvnPSTUmaT0SLwn.UxMGb8zRLxnfQTUma8.iKv.iBP8lbzI0Y8DiKv.iBP8lbzEVS8.iBP8lbzElL8.iKv.iBAcFckESOxnPPzIGbwzCLJDjcuMVL8DiBA0VcrESOwnPPs8FYwzCLJDTSDAGcwzCLt.CLJDTSDAmPwzCLt.CLJDzYzUlL8HiBAQmbvISOvnPP181XxzSLJDTa0wlL8DiBA01ajISOvnPPMQDbzISOv3BLvnPPMQDbBISOv3BLvnPPmQWYyziLJDDcxA2L8.iBAY2aiMSOwnPPsUGayzSLJDTauQ1L8.iBA0DQvQ2L8.iKv.iBA0DQvIzL8.iKv.iBAcFckQSOxnPPzIGbzzCLJDjcuMFM8DiBA0VcrQSOwnPPs8FYzzCLJDTSDAGczzCLt.CLJDTSDAmPzzCLt.CLJDzYzUVM8HiBAQmbvUSOvnPP181X0zSLJDTa0wVM8DiBA01ajUSOvnPPMQDbzUSOv3BLvnPPMQDbBUSOv3BLvnPPmQWY1ziLJDDcxAmM8.iBAY2aiYSOwnPPsUGa1zSLJDTauQlM8.iBA0DQvQmM8.iKv.iBA0DQvIjM8.iKv.iBAcFckcSOxnPPzIGb2zCLJDjcuM1M8DiBA0VcrcSOwnPPs8FY2zCLJDTSDAGc2zCLt.CLJDTSDAmP2zCLt.CLJDzYzUFN8HiBAQmbvgSOvnPP181X3zSLJDTa0wFN8DiBA01ajgSOvnPPMQDbzgSOv3BLvnPPMQDbBgSOv3BLvnPPmQWY4ziLJDDcxAWN8.iBAY2aikSOwnPPsUGa4zSLJDTauQVN8.iBA0DQvQWN8.iKv.iBA0DQvITN8.iKv.iBAcFckECL8HiBAQmbvECL8.iBAY2aiECL8DiBA0VcrECL8DiBA01ajECL8.iBA0DQvQWLvzCLt.CLJDTSDAmPw.SOv3BLvnPPmQWYwDSOxnPPzIGbwDSOvnPP181XwDSOwnPPsUGawDSOwnPPs8FYwDSOvnPPMQDbzESL8.iKv.iBA0DQvITLwzCLt.CLJDzYzUVLxziLJDDcxAWLxzCLJDjcuMVLxzSLJDTa0wVLxzSLJDTauQVLxzCLJDTSDAGcwHSOv3BLvnPPMQDbBEiL8.iKv.iBAcFckEyL8HiBAQmbvEyL8.iBAY2aiEyL8DiBA0VcrEyL8DiBA01ajEyL8.iBA0DQvQWLyzCLt.CLJDTSDAmPwLSOv3BLvnPPmQWYwPSOxnPPzIGbwPSOvnPP181XwPSOwnPPsUGawPSOwnPPs8FYwPSOvnPPMQDbzECM8.iKv.iBA0DQvITLzzCLt.CLJDzYzUVL0ziLJDDcxAWL0zCLJDjcuMVL0zSLJDTa0wVL0zSLJDTauQVL0zCLJDTSDAGcwTSOv3BLvnPPMQDbBESM8.iKv.iBAcFckEiM8HiBAQmbvEiM8.iBAY2aiEiM8DiBA0VcrEiM8DiBA01ajEiM8.iBA0DQvQWL1zCLt.CLJDTSDAmPwXSOv3BLvnvHi0VOE4jUwnPSuQVY8.iBo0zajUVOvnvbM8FYk0CLJjlaoQWOv3BLvnPPzsVOwfiKv.iBDU1X8PCMt.CLJLUcy0CMx3BLvnvT0MGU8.iKv.iBSU2bxzCLt.CLJHUYr0iLv3BLvnfUkwVO1.iKv.iBVISR8.iKv.iBVISP8.iKv.iBVICQ8.iKv.iBVIyT8.iKv.iBVIiQR0CLt.CLJXkLSISOv3BLvnfUxHUOv3BLvnvRxjTOv3BLvnvRxDTOv3BLvnvRxPTOv3BLvnvRxLUOv3BLvnvRxXjT8.iKv.iBKIyTxzCLt.CLJrjLR0CLt.CLJLEauAWY8.iKv.iBTITXyUVOvnvHi0VOE4jUxnPSuQVY8.iBo0zajUVOvnvbM8FYk0CLJjlaoQWOv3BLvnPPzsVOwHiK0.iBDU1X8DyLtTCLJLUcy0iM03RMvnvT0MGU8.iKv.iBSU2bxzCLt.CLJHUYr0iM03BLvnfUkwVOv3BLvnfUxjTOv3BLvnfUxDTOv3BLvnfUxPTOv3BLvnfUxLUOv3BLvnfUxXjT8.iKv.iBVIyTxzCLt.CLJXkLR0CLt.CLJrjLI0CLt.CLJrjLA0CLt.CLJrjLD0CLt.CLJrjLS0CLt.CLJrjLFIUOv3BLvnvRxLkL8.iKv.iBKIiT8.iKv.iBSw1avUVOv3BLvn.UBE1bk0CLJLxXs0SQNY0LJzzajUVOvnPZM8FYk0CLJLWSuQVY8.iBo4VZz0CLt.CLJDDcq0SL33BLvn.QkMVOyLiKv.iBSU2b8.iKv.iBSU2bT0CLt.CLJLUcyISOv3BLvnfTkwVOwTiKv.iBVUFa8PiLt.CLJXkLI0CLt.CLJXkLA0CLt.CLJXkLD0CLt.CLJXkLS0CLt.CLJXkLFIUOv3BLvnfUxLkL8.iKv.iBVIiT8.iKv.iBKISR8.iKv.iBKISP8.iKv.iBKICQ8.iKv.iBKIyT8.iKv.iBKIiQR0CLt.CLJrjLSISOv3BLvnvRxHUOv3BLvnvTr8Fbk0CLt.CLJPkPgMWY8.iBiLVa8TjSVQiBM8FYk0CLJjVSuQVY8.iBy0zajUVOvnPZtkFc8.iKv.iBAQ2Z8.iKv.iBDU1X8XSMt.CLJLUcy0CLt.CLJLUcyQUOv3BLvnvT0MmL8.iKv.iBRUFa8DSMt.CLJXUYr0SMv3BLvnfUxjTOv3BLvnfUxDTOv3BLvnfUxPTOv3BLvnfUxLUOv3BLvnfUxXjT8.iKv.iBVIyTxzCLt.CLJXkLR0CLt.CLJrjLI0CLt.CLJrjLA0CLt.CLJrjLD0CLt.CLJrjLS0CLt.CLJrjLFIUOv3BLvnvRxLkL8.iKv.iBKIiT8.iKv.iBSw1avUVOv3BLvn.UBE1bk0CLJLxXs0SSSUzQwn.UsUka8.iBE4lc8DiLJXUYr0CLt.CLJDDcq0CLt.CLJvDbz0CLt.CLJHUYr0CLt.CLJPkbocVOvnvHi0VOMMUQGIiBT0VUt0CLJTja10SLynfUkwVOv3BLvnPPzsVOv3BLvn.SvQWOv3BLvnfTkwVOv3BLvn.Uxk1Y8.iBiLVa8zzTEczLJPUaU4VOvnPQtYWOwPiBVUFa8.iKv.iBAQ2Z8.iKv.iBLAGc8.iKv.iBRUFa8.iKv.iBTIWZm0CLJLxXs0SSSUzQzn.UsUka8.iBE4lc8DSMJXUYr0CLt.CLJDDcq0CLt.CLJvDbz0CLt.CLJHUYr0CLt.CLJPkbocVOvnvHi0VOLYzSwnvT441X8LiBTIWZm0CLJbUX1UVOvn.TnMWY8.iKv.iBREFck0SLv.iKv.iBA0Fb8DCLv3BLvnvTrU1c8DiBNMGcv0SL1nvTzA2b8DiMJT0U10CLJPDa40yL23RMvn.QMMUL8DiBD0DQwzSN13BLvnfQMMUL8DiBF0DQwzCMt.CLJLxXs0CSF8jLJLUdtMVOzn.Uxk1Y8.iBWElck0yMJ.EZyUVOv3BLvnfTgQWY8DCL13BLvnPPsAWO0.iKv.iBSwVY20SLJ3zbzAWOwXiBSQGby0SL2nPUWYWOvn.QrkWOv3BLvn.QMMUL8.iBD0DQwzCLt.CLJXTSSESOvnfQMQTL8.iKv.iBiLVa8vjQOMiBSkmai0SKyn.Uxk1Y8.iBWElck0iMJ.EZyUVOv3BLvnfTgQWY8DiMz3BLvnPPsAWOv3BLvnvTrU1c8.iBNMGcv0SL1nvTzA2b8DCNJT0U10CLJPDa40CLt.CLJPTSSESOvn.QMQTL8.iKv.iBF0zTwzCLJXTSDESOv3BLvnvHi0VOLYzSznvT441X8PiBTIWZm0CLJbUX1UVOvn.TnMWY8.iKv.iBREFck0SLv.iKv.iBA0Fb8DCLv3BLvnvTrU1c8DiBNMGcv0SL1nvTzA2b8DSNJT0U10CLJPDa40CLt.CLJPTSSESOvn.QMQTL8.iKv.iBF0zTwzCLJXTSDESOv3BLvnvHi0VOM0TXvEiBM8FYk0yLJzzTxMVOvnvTzA2b8HCLJ3Tcs0SL2nvHi0VOM0TXvIiBM8FYk0yLJzzTxMVOvnvTzA2b8HSLJ3Tcs0SL2nvHi0VOM0TXvMiBM8FYk0yLJzzTxMVOvnvTzA2b8HiLJ3Tcs0SL2nvHi0VOM0TXvQiBM8FYk0yLJzzTxMVOvnvTzA2b8HyLJ3Tcs0SL2nvHi0VOM0TZ3EiBTkGbk0SLJzzajESOxLiBM8FYxzCLJzzajMSOvnvPyQWOv3BLvnvHi0VOM0TZ3IiBTkGbk0CLJzzajESOvnPSuQlL8.iBM8FYyzCLJLzbz0SMv3BLvnvHi0VOM0TZ3MiBTkGbk0CLJzzajESOvnPSuQlL8.iBM8FYyzCLJLzbz0SMv3BLvnvHi0VOM0TZ3QiBTkGbk0CLJzzajESOvnPSuQlL8.iBM8FYyzCLJLzbz0SMv3BLvnvHi0VOGIWZjovQxkFY8HCMJbjP4AWOvnvQSQ2axUVOxTiBiLVa87zTCEiBWElck0CLJPUctUVOv3BLvnvRkk2TiwVOw.CLt.CLJPUSSI2X8DiMJPUSDAGc8zBLtHCLJ.EZyUVOv3BLvn.TnMWSSI2X8.iBPg1bMQDbz0CLt.CLJbkS00VOwLiKy.iBWA0TxMVOvnvUPQDbz0SL03BLvnfUz8FQ8.iKv.iBCUmb1UVOxXiBPIWYi0SLt.CLJXDVwPEb8fiBSYDVwzSMv3BLvnfQXEyTi0CLJXDVwPDc8.iKv.iBFgkLTAWOvnvTFgkL8.iKv.iBFgkLSMVOvnfQXICQz0CLt.CLJ.0arkWOvn.QzUma8.iKv.iBKY0bi0iL2nfUuwVOwHCLt.CLJX0arM0X8HiLJX0arQDc8zRMv3BLvn.Tg4VOv3BLvn.Tg41Ti0CLJ.UXtQDc8.iKv.iBSkmai0CLt.CLJLkaiM0X8.iBS41XDQWOv3BLvnvTtM1St0CLJ.0arcUO0.iKv.iBPcWaO4VOvnvUgQkX8HCNJHUYPg1b8.iBN8lbs0SLx3BLvnfTk4FY8.iBF0Fc5UVOvnvUT4TXsUVOxjiBiLVa87zTCIiBWElck0CLJPUctUVOv3BLvnvRkk2TiwVOw.CLt.CLJPUSSI2X8.iBT0DQvQWOv3BLvn.TnMWY8.iKv.iBPg1bMMkbi0CLJ.EZy0DQvQWOv3BLvnvUNUWa8DiKv.iBWA0TxMVOvnvUPQDbz0SL03BLvnfUz8FQ8.iKv.iBCUmb1UVOy.iBPIWYi0SMt.CLJXDVwPEb8.iBSYDVwzCLt.CLJXDVwL0X8.iBFgULDQWOv3BLvnfQXICUv0CLJLkQXISOv3BLvnfQXIyTi0CLJXDVxPDc8.iKv.iBP8Fa40CLJPDc04VOv3BLvnvRVM2X8LSLJX0ar0SLv.iKv.iBV8FaSMVOvnfUuwFQz0CLt.CLJ.UXt0CLt.CLJ.UXtM0X8.iBPElaDQWOv3BLvnvT441X8.iKv.iBS41XSMVOvnvTtMFQz0CLt.CLJLkai8ja8.iBP8FaW0SMv3BLvn.T201St0CLJbUXTIVOyHiBRUFTnMWOvnfSuIWa8DiLt.CLJHUYtQVOvnfQsQmdk0CLJbEUNEVak0yLynvHi0VOOM0PynvUgYWY8.iBTUmak0CLt.CLJrTY4M0Xr0SLv.iKv.iBT0zTxMVOvn.UMQDbz0CLt.CLJ.EZyUVOv3BLvn.TnMWSSI2X8.iBPg1bMQDbz0CLt.CLJbkS00VOw3BLvnvUPMkbi0CLJbETDAGc8DSMt.CLJXEcuQTOv3BLvnvP0Imck0yLzn.TxU1X8TiKv.iBFgULTAWOvnvTFgUL8.iKv.iBFgULSMVOvnfQXECQz0CLt.CLJXDVxPEb8.iBSYDVxzCLt.CLJXDVxL0X8.iBFgkLDQWOv3BLvn.TuwVd8.iBDQWct0CLt.CLJrjUyMVOyTiBV8Fa8DCLv3BLvnfUuw1Ti0CLJX0arQDc8.iKv.iBPEla8.iKv.iBPElaSMVOvn.Tg4FQz0CLt.CLJLUdtMVOv3BLvnvTtM1Ti0CLJLkaiQDc8.iKv.iBS41XO4VOvn.Tuw1U8TCLt.CLJ.0cs8ja8.iBWEFUh0yL1nfTkAEZy0CLJ3zax0VOwHiKv.iBRUlaj0CLJXTazoWY8.iBWQkSg0VY8LyMJLxXs0ySSMDMJbUX1UVOvn.U04VY8.iKv.iBKUVdSMFa8DCLv3BLvn.UMMkbi0CLJPUSDAGc8.iKv.iBPg1bk0CLt.CLJ.EZy0zTxMVOvn.TnMWSDAGc8.iKv.iBW4Tcs0SLt.CLJbETSI2X8.iBWAEQvQWOwTiKv.iBVQ2aD0CLt.CLJLTcxYWY8LCNJ.kbkMVO03BLvnfQXECUv0CLJLkQXESOv3BLvnfQXEyTi0CLJXDVwPDc8.iKv.iBFgkLTAWOvnvTFgkL8.iKv.iBFgkLSMVOvnfQXICQz0CLt.CLJ.0arkWOvn.QzUma8.iKv.iBKY0bi0yL4nfUuwVOw.CLt.CLJX0arM0X8.iBV8FaDQWOv3BLvn.Tg4VOv3BLvn.Tg41Ti0CLJ.UXtQDc8.iKv.iBSkmai0CLt.CLJLkaiM0X8.iBS41XDQWOv3BLvnvTtM1St0CLJ.0arcUO0.iKv.iBPcWaO4VOvnvUgQkX8PCLJHUYPg1b8.iBN8lbs0SLx3BLvnfTk4FY8.iBF0Fc5UVOvnvUT4TXsUVOzDiBiLVa83zaoMWYwn.U4AWY8.iBFESOw.CLt.CLJXTLSI2X8.iBFECQvQWOv3BLvnfQxzCLt.CLJXjLSI2X8.iBFICQvQWOv3BLvnvRVM2X8PiLJX0ar0SLv.iKv.iBV8FaSMVOvnfUuwFQz0CLt.CLJ.UXt0CLt.CLJ.UXtM0X8.iBPElaDQWOv3BLvn.TuwVd8.iBP8FaW0SMv3BLvnvHi0VON8VZyUlLJPUdvUVOvnfQwzSLv.iKv.iBFEyTxMVOvnfQwPDbz0CLt.CLJXjL8.iKv.iBFIyTxMVOvnfQxPDbz0CLt.CLJrjUyMVOzLiBV8Fa8DCLv3BLvnfUuw1Ti0CLJX0arQDc8.iKv.iBPEla8.iKv.iBPElaSMVOvn.Tg4FQz0CLt.CLJ.0arkWOvn.Tuw1U8TCLt.CLJLxXs0iUCYTLJPUdv0CLJLTcz0SL0.iKv.iBRU1b8.iKv.iBDImc8.iKv.iBGEVZt0CLt.CLJXTSwzCLt.CLJXzTwzCLJXTSxzCLt.CLJXzTxzCLJrTY4M0Xr0CLt.CLJLxXs0iUCYjLJPUdv0CLJLTcz0SL0.iKv.iBRU1b8.iKv.iBDImc8.iKv.iBGEVZt0CLt.CLJXTSwzCLt.CLJXzTwzCLJXTSxzCLt.CLJXzTxzCLJrTY4M0Xr0CLt.CLJLxXs0iUCYzLJPUdv0CLJLTcz0SL0.iKv.iBRU1b8.iKv.iBDImc8.iKv.iBGEVZt0CLt.CLJXTSwzCLt.CLJXzTwzCLJXTSxzCLt.CLJXzTxzCLJrTY4M0Xr0CLt.CLJLxXs0iUCYDMJPUdv0CLJLTcz0SL0.iKv.iBRU1b8.iKv.iBDImc8.iKv.iBGEVZt0CLt.CLJXTSwzCLt.CLJXzTwzCLJXTSxzCLt.CLJXzTxzCLJrTY4M0Xr0CLt.CLJLxXs0iQM8TLJbUX1UVOvn.U04VY8.iKv.iBKUVdSMFa8DCLv3BLvn.UMMkbi0CLJPUSDAGc8.iKv.iBF0TOv3BLvnfQMMkbi0CLJXTSDAGc8.iKv.iBVQ2aD0CLt.CLJPDc04VOv3BLvnvRVM2X8PCMJX0ar0SLv.iKv.iBV8FaSMVOvnfUuwFQz0CLt.CLJ.UXt0CLt.CLJ.UXtM0X8.iBPElaDQWOv3BLvn.TuwVd8.iBP8FaW0SMv3BLvnvQkQmb8.iBiLVa8XTSOIiBWElck0CLJPUctUVOv3BLvnvRkk2TiwVOw.CLt.CLJPUSSI2X8.iBT0DQvQWOv3BLvnfQM0CLt.CLJXTSSI2X8.iBF0DQvQWOv3BLvnfUz8FQ8.iKv.iBDQWct0CLt.CLJrjUyMVOzTiBV8Fa8DCLv3BLvnfUuw1Ti0CLJX0arQDc8.iKv.iBPEla8.iKv.iBPElaSMVOvn.Tg4FQz0CLt.CLJ.0arkWOvn.Tuw1U8TCLt.CLJbTYzIWOvnvHi0VOF0zSynvUgYWY8.iBTUmak0CLt.CLJrTY4M0Xr0SLv.iKv.iBT0zTxMVOvn.UMQDbz0CLt.CLJXTS8.iKv.iBF0zTxMVOvnfQMQDbz0CLt.CLJXEcuQTOv3BLvn.QzUma8.iKv.iBKY0bi0CM1nfUuwVOw.CLt.CLJX0arM0X8.iBV8FaDQWOv3BLvn.Tg4VOv3BLvn.Tg41Ti0CLJ.UXtQDc8.iKv.iBP8Fa40CLJ.0arcUO0.iKv.iBGUFcx0CLJLxXs0iQM8DMJbUX1UVOvn.U04VY8.iKv.iBKUVdSMFa8DCLv3BLvn.UMMkbi0CLJPUSDAGc8.iKv.iBF0TOv3BLvnfQMMkbi0CLJXTSDAGc8.iKv.iBVQ2aD0CLt.CLJPDc04VOv3BLvnvRVM2X8PyMJX0ar0SLv.iKv.iBV8FaSMVOvnfUuwFQz0CLt.CLJ.UXt0CLt.CLJ.UXtM0X8.iBPElaDQWOv3BLvn.TuwVd8.iBP8FaW0SMv3BLvnvQkQmb8.iBiLVa8LzasIVLJzzajUVOvn.U04VY8.iKv.iBKUVdSMFa8DCLv3BLvn.UMMkbi0CLJPUSDAGc8.iKv.iBDUFct0CLt.CLJXEcuQTOv3BLvnfQB0CLt.CLJXjPSI2X8.iBFIDQvQWOv3BLvn.Qg0Fb8.iKv.iBD0FbSI2X8.iBD0FbDAGc8.iKv.iBEg2X8.iKv.iBI4lZ8.iKv.iBI4lZSI2X8.iBI4lZDAGc8.iKv.iBT4VY8TCLt.CLJPkakMkbi0CLJPkakQDbz0CLt.CLJLUYi0CLt.CLJLUYiMkbi0CLJLUYiQDbz0CLt.CLJPTZyQWOv3BLvn.QxkWOv3BLvnfUuwVOw.CLt.CLJX0arM0X8.iBV8FaDQWOv3BLvn.Tg4VOv3BLvn.Tg41Ti0CLJ.UXtQDc8.iKv.iBP8Fa40CLJ.0arcUO0.iKv.iBFkFar0CLJLxXs0yPu0lXxnPSuQVY8.iBTUmak0CLt.CLJrTY4M0Xr0SLv.iKv.iBT0zTxMVOvn.UMQDbz0CLt.CLJPTYz4VOv3BLvnfUz8FQ8.iKv.iBFITOv3BLvnfQBMkbi0CLJXjPDAGc8.iKv.iBDEVav0CLt.CLJPTavMkbi0CLJPTavQDbz0CLt.CLJTDdi0CLt.CLJjjap0CLt.CLJjjapMkbi0CLJjjapQDbz0CLt.CLJPkak0SMv3BLvn.UtU1TxMVOvn.UtUFQvQWOv3BLvnvTkMVOv3BLvnvTkM1TxMVOvnvTkMFQvQWOv3BLvn.QoMGc8.iKv.iBDIWd8.iKv.iBV8Fa8DCLv3BLvnfUuw1Ti0CLJX0arQDc8.iKv.iBPEla8.iKv.iBPElaSMVOvn.Tg4FQz0CLt.CLJ.0arkWOvn.Tuw1U8TCLt.CLJXTZrwVOvnvHi0VOSgVXvUVLJPUdvUVOvn.QkAGcn0CLt.CLJPTSSI2X8.iBD0DQvQWOv3BLvnPQjcVY8bSMt.CLJTTSSI2X8.iBE0DQvQWOv3BLvnPRtAWcz0CLt.CLJ7TczAWcz0CLt.CLJfTZOUGc8.iKv.iBiLVa8LEZgAWYxn.U4AWY8.iBDUFbzgVOv3BLvn.QMMkbi0CLJPTSDAGc8.iKv.iBEQ1Yk0yM03BLvnPQMMkbi0CLJTTSDAGc8.iKv.iBI4Fb0QWOv3BLvnvS0QGb0QWOv3BLvn.Ro8Tcz0CLt.CLJLxXs0SSogWLJ.UXt0CLt.CLJzTZ30SMv3BLvn.Tt0DY8.iBP4VSD0CLt.CLJ.kaMMUOvnvHi0VOMkFdxn.Tg4VOv3BLvnPSogWO0.iKv.iBP4VSj0CLJ.kaMQTOv3BLvn.Tt0zT8.iBiLVa8zTZ3MiBPEla8.iKv.iBMkFd8TCLt.CLJ.kaMQVOvn.Tt0DQ8.iKv.iBP4VSS0CLJLxXs0SSogGMJ.UXt0CLt.CLJzTZ30SMv3BLvn.Tt0DY8.iBP4VSD0CLt.CLJ.kaMMUOvnvHi0VOX0jQwn.U4AWOvnvP0QWOwLCNtLyLJHUYy0SNtXyMJXTSwzSK4.iKv.iBFMUL8DSMJXTSxzyLt.CLJXzTxzSLwnvRkk2TiwVOwjiKyLiBF8jYl0SLt.CLJXzSM8FY8.iKv.iBF8zTxMVOvn.VF0TOv3BLvn.VF0DQ8.iKv.iBXYTSS0SL0nfPoE1b8HCLt.CLJ7DSuEFY8HiLtLyLJLDaoM1Z8.iKv.iBDImc8.iBR8Vcz0CLJPUdvISOsDiBiLVa8fUSFIiBTkGb8.iBCUGc8DSMv3BLvnfTkMWOv3BLvnfQMESOv3BLvnfQSESOvnfQMISOv3BLvnfQSISOvnvRkk2TiwVOv3BLvnfQOYlY8.iKv.iBF8TSuQVOv3BLvnfQOMkbi0CLJfkQM0CLt.CLJfkQMQTOv3BLvn.VF0zT8.iBBkVXy0CLt.CLJ7DSuEFY8.iKv.iBCwVZisVOv3BLvn.QxYWOvnfTuUGc8.iBTkGbxzSKwnvHi0VOSITLJHUXtcVY8.iBFIWYw0CLt.CLJXTSSI2X8.iBF0DQvQWOv3BLvnvSlY1b8.iKv.iBO0zTxMVOvnvSMQDbz0CLt.CLJzTZ30SMv3BLvnPSMMkbi0CLJzTSDAGc8.iKv.iBiLVa8LkPxnfTg41Yk0CLJXjbkEWOv3BLvnfQMMkbi0CLJXTSDAGc8.iKv.iBOYlYy0CLt.CLJ7TSSI2X8.iBO0DQvQWOv3BLvnPSogWO0.iKv.iBM0zTxMVOvnPSMQDbz0CLt.CLJLxXs0CQoMGcwn.U4AWY8.iBI4Fb0QWOv3BLvnvS0QGb0QWOv3BLvn.TxUFUowFc8.iKv.iBPMGcTkFaz0CLt.CLJLjazYjbkEWOw.CLt.CLJvza20CLt.CLJfTZmgVOv3BLvn.TuMGcFwFc8.iBiLVa8PTZyQmLJPUdvUVOvnPRtAWcz0CLt.CLJ7TczAWcz0CLt.CLJ.kbkQUZrQWOv3BLvn.TyQGUowFc8.iKv.iBC4FcFIWYw0SLv.iKv.iBL81c8.iKv.iBHk1Yn0CLt.CLJ.0ayQmQrQWOvnvHi0VOF8FajEiBRkFbvwVYy0CMJXzarQ1b8DCLt.CLJXTSuQVOv3BLvnfQSI2X8.iBBkVXy0CLt.CLJHTSuQVOv3BLvnfPSI2X8.iBFIUXzk1a8TCLt.CLJXzTr8Fbk0SLv3BLvnvPA41Yr0SMv3BLvn.SoYWY8.iBiLVa8XzarQlLJHUZvAGakMWOznfQuwFYy0SLv3BLvnfQM8FY8.iKv.iBFMkbi0CLJHTZgMWOv3BLvnfPM8FY8.iKv.iBBMkbi0CLJXjTgQWZu0SMv3BLvnfQSw1avUVOw.iKv.iBCEjamwVO0.iKv.iBLklck0CLJLxXs0iUCETLJ.UXtESOv3BLvn.Tg4VSSESOvn.Tg4VSDESOv3BLvnfUuwVL8jSNtLyLJX0PAESOwnPSuQ1TxMVL8.iBM8FYDAGcwzCLt.CLJ.UXtISOv3BLvn.Tg4VSSISOvn.Tg4VSDISOv3BLvnfUuwlL8.iKv.iBVMTPxzSLJzzajMkbiISOvnPSuQFQvQmL8.iKv.iBPElayzCLt.CLJ.UXt0zTyzCLJ.UXt0DQyzCLt.CLJX0arMSOv3BLvnfUCEzL8DiBM8FYSI2XyzCLJzzajQDbzMSOv3BLvn.Tg4FM8.iKv.iBPElaMMEM8.iBPElaMQDM8.iKv.iBV8FazzCLt.CLJX0PAQSOwnPSuQ1TxMFM8.iBM8FYDAGczzCLt.CLJzDUwzCLJzDUxzCLJzDUyzCLJzDUzzCLJ.kPwzCLJ.kPxzCLJ.kPyzCLJ.kPzzCLJHTcyESOvnfP0MmL8.iBBU2byzCLJHTcyQSOvnvTk4FYwzCLt.CLJLkaSI2XwzCLJLkaDAGcwzCLt.CLJLUYtQlL8.iKv.iBS41TxMlL8.iBS4FQvQmL8.iKv.iBAQGcS0SLJLxXs0yQxkFYFgkBGIWZj0CM3nvQBkGb8.iBGMEcuIWY8PSNJLxXs0SSuQlQXEiBM8FYk0CLJLTYtQWOx.iKv.iBSAWYj0SMv3BLvn.Tn8jYl0SMv3BLvn.QvQGZ8TCLt.CLJXTYkITOv3BLvnPSogWOv3BLvn.SCUGc8.iKv.iBHMTcz0SLv.iKv.iBQUWXj0CLt.CLJDEbnMWOxTiKv.iBLUVb8.iKv.iBHUVb8.iKv.iBQESOv3BLvnPTxzCLt.CLJTTTu4VOwnvHi0VOM8FYFgkLJzzajUVOvnvPk4Fc8HCLt.CLJLEbkQVO0.iKv.iBPg1SlYVO0.iKv.iBDAGcn0SMv3BLvnfQkUlP8.iKv.iBMkFd8.iKv.iBLMTcz0CLt.CLJfzP0QWOw.CLt.CLJDUcgQVOv3BLvnPTvg1b8HSMt.CLJvTYw0CLt.CLJfTYw0CLt.CLJDUL8.iKv.iBQISOv3BLvnPQQ8la8DiBiLVa8PTYrEVdwnPSuQVY8.iBMkFd8.iKv.iBFITOw.iKv.iBCITOxTiKv.iBLAUOw.CLt.CLJfDT8.iKv.iBDImc8.iKv.iBSkmaiESOznvT441XxzCMJLUdtM1L8PiBSkmaiQSOzn.UvzSLv.iKv.iBTESOw.CLt.CLJPkL8DCLv3BLvn.UyzSLv.iKv.iBPElawzSKw.CLt.CLJ.UXtISOw.CLt.CLJ.UXtMSOsDCLv3BLvn.Tg4FM8DCLv3BLvnvHi0VODUFagkmLJzzajUVOvnPSogWOv3BLvnfQB0SLv3BLvnvPB0iL03BLvn.SP0SLv.iKv.iBHAUOv3BLvn.QxYWOv3BLvnvT441XwzCMJLUdtMlL8PiBSkmaiMSOznvT441XzzCMJPEL8DCLv3BLvn.UwzSLv.iKv.iBTISOw.CLt.CLJP0L8DCLv3BLvn.Tg4VL8zRLv.iKv.iBPElaxzSLv.iKv.iBPElayzSKw.CLt.CLJ.UXtQSOw.CLt.CLJLxXs0yTnEFbkMiBTkGbk0CLJPTYvQGZ8.iKv.iBD0zTxMVOvn.QMQDbz0CLt.CLJTDYmUVO2TiKv.iBE0zTxMVOvnPQMQDbz0CLt.CLJjjavUGc8.iKv.iBOUGcvUGc8.iKv.iBHk1S0QWOv3BLvnvHi0VOSgVXvUFMJPUdvUVOvn.QkAGcn0CLt.CLJPTSSI2X8.iBD0DQvQWOv3BLvnPQjcVY8bSMt.CLJTTSSI2X8.iBE0DQvQWOv3BLvnPRtAWcz0CLt.CLJ7TczAWcz0CLt.CLJfTZOUGc8.iKv.iBiLVa8zTZ3UiBPEla8.iKv.iBMkFd8TCLt.CLJ.kaMQVOvn.Tt0DQ8.iKv.iBP4VSS0CLJLxXs0SSogmMJ.UXt0CLt.CLJzTZ30SMv3BLvn.Tt0DY8.iBP4VSD0CLt.CLJ.kaMMUOvnvHi0VORUlcwnPSuQVY8.iBDIWd8fiLt.CLJbUYz0yLv3BLvnfQB0SM33BLvn.Qg0Fb8DCMt.CLJLUZ5UVO2TiKv.iBSAGY8TCLt.CLJPDbz0iL23BLvn.QFITOzfiKv.iBDMUZ5UVO1TiKv.iBE0TZ30SNv3BLvn.QM8FY8DCLv3BLvn.QSAGY8TSMt.CLJ.kbk0CLt.CLJLxXs0yPu0Fbwn.U4AWY8.iBREFc8DCLv3BLvn.UnIWYy0SKx.iKv.iBAQGc8LCLt.CLJHUYr0SMv3BLvnPRtAWcz0CLt.CLJ7TczAWcz0CLt.CLJLxXs0yPu0Fbxn.U4AWY8.iBREFc8DCLv3BLvn.UnIWYy0SKx.iKv.iBAQGc8LCLt.CLJHUYr0SMv3BLvnPRtAWcz0CLt.CLJ7TczAWcz0CLt.CLJLxXs0SQQEiBlMVL8DiLt.CLJHWYyESOzPiKv.iBmEVZtESOsDiMtTCLJX1XxzCM23BLvnfbkMmL8PiKv.iBmEVZtISOsLiK0.iBlM1L8XCLt.CLJHWYyMSOz3BLvnvYgklayzSNt.CLJX1XzzSLv.iKv.iBxU1bzziM13BLvnvYgklazzSKxHiK0.iBiLVa8TTTxnfYiESOx.iKv.iBxU1bwziL03BLvnvYgklawzCLt.CLJX1XxzCMv3BLvnfbkMmL8HSMt.CLJbVXo4lL8.iKv.iBlM1L8XCLt.CLJHWYyMSOxTiKv.iBmEVZtMSOv3BLvnfYiQSO3.iKv.iBxU1bzziL03BLvnvYgklazzCLt.CLJLxXs0iUCYTMJPUdv0CLJLTcz0SL0.iKv.iBRU1b8.iKv.iBDImc8.iKv.iBGEVZt0CLt.CLJXTSwzCLt.CLJXzTwzCLJXTSxzCLt.CLJXzTxzCLJrTY4M0Xr0CLt.CLJLxXs0iUCYjMJPUdv0CLJLTcz0SL0.iKv.iBRU1b8.iKv.iBDImc8.iKv.iBGEVZt0CLt.CLJXTSwzCLt.CLJXzTwzCLJXTSxzCLt.CLJXzTxzCLJrTY4M0Xr0CLt.CLJLxXs0yTBMiBRElamUVOvnfQxUVb8.iKv.iBF0zTxMVOvnfQMQDbz0CLt.CLJ7jYlMWOv3BLvnvSMMkbi0CLJ7TSDAGc8.iKv.iBMkFd8TCLt.CLJzTSSI2X8.iBM0DQvQWOv3BLvnvHi0VOX0jQyn.U4AWOvnvP0QWOwTCLt.CLJHUYy0CLt.CLJXTSwzCLt.CLJXzTwzCLJXTSxzCLt.CLJXzTxzCLJrTY4M0Xr0CLt.CLJXzSlYVOv3BLvnfQO0zaj0CLt.CLJXzSSI2X8.iBXYTS8.iKv.iBXYTSD0CLt.CLJfkQMMUOvnfPoE1b8.iKv.iBOwzagQVOv3BLvnvPrk1Xq0CLt.CLJPjb10SLJH0a0QWOvn.U4AmL8zRLJLxXs0CQoMGcyn.U4AWY8.iBI4Fb0QWOv3BLvnvS0QGb0QWOv3BLvn.TxUFUowFc8.iKv.iBPMGcTkFaz0CLt.CLJLjazYjbkEWOw.CLt.CLJvza20CLt.CLJfTZmgVOv3BLvn.TuMGcFwFc8.iBiLVa8PTZyQGMJPUdvUVOvnPRtAWcz0CLt.CLJ7TczAWcz0CLt.CLJ.kbkQUZrQWOv3BLvn.TyQGUowFc8.iKv.iBC4FcFIWYw0SLv.iKv.iBL81c8.iKv.iBHk1Yn0CLt.CLJ.0ayQmQrQWOvnvHi0VONUmTkYWLJ.kbk0CLt.CLJPTXsAWO3.iKv.iBDU1XgkWO0.iKv.iBSkldk0SLv.iKv.iBT8lak0CLt.CLJbUZjQGZ8bSMt.CLJzTZ30iLv3BLvnvHi0VOZ0TXyofTkQWL8.iKv.iBRUFcxzCLt.CLJzTXyQWO0LiKv.iBXkULL0SMvn.VYICS8TSLJfUVyvTO0HiBXkEML0SMyn.VYECU8TCMJfUVxPUO0TiBXk0LT0SM1n.VYQCU8TyMJ7zTCESO0fiBOM0PxzSM4nvSSMzL8XCLJ7zTCQSO1DiBMMUQGESO1HiBMMUQGISO1LiBMMUQGMSO1PiBMMUQGQSO1TiBMMUQGUSO1XiBMMUQGYSO1biBMMUQGcSO1fiBMMUQGgSO1jiBRUlcwzyMvn.TtMSOzn.TtQSOvn.TtUSOvn.TtYSOvn.TtcSOvn.TtgSOvn.TtkSOvn.TtECL8.iBP4VLwzCLJHUXisFL8bSLJHUXisVL8biLJLxXs0CSgkWSk0lBLEVdMUVawzCLJvTX40TYsISOvn.SgkWSk01L8.iBLEVdMUVazzCLJvTX40TYsUSOvnfBJ7xKfLUYiQWZu4FHl8lbfT2YrkGHi8VavIWYyMWYjAhXo4VXxkGHDEFcgovKu.BQO4zITABUOU0PHABUHkzTJn.IjPBI3TSM1PiB+DVXgEVZgQFb5n1ZpolZpw1a5bFYmMVYtUlX5DVXgEVZgwFb5.mavAGZvQFb5.WavAGZvQFb5.WavAGZvwFb5nPXgEVXgEVYgoyXgEVXgEVXgoCbtAGbnAGavoSXgoCYuoCYvoSYhoSYioCavoCauoSYgoyXgoCYtoSXqoSZgoyYJXlNnUlNvAmNsElNgUlNhElNmIlNjMlNlQlNmAmNqElNv4lNgIlNnAWHyETVAkyXvUVaVcFYScVaiAGUIUVaMMkBmUVSnMFZjEjLyjybHETLvTVZUkTYsclZNEyYs0TREclZmgVRkklUnM1YuM1amkFUnEVPzDybHEzMzLGRAECLloPYrolPuY1XvkFZoA2alcVZuIVZoMVYvs1alIVYskVXs8lZvY1Yuo1Xu4VXiwlZiAmZs4lYswVYkcVYuEFYnUlaJ3lYuYFZt41atUVaq8FYo0FamckZsEkYpUlZo01Yr4FavQFbmoVXF0lYjglYiYFarElZh0lZiQFZtIVZyEUPw.iBnEFTqoVXoMWPYETNkklUng1TnM1YkkTUmQ1TnMVLAICMyLGSAEyL3LWPYEjL1TybLEjMwETLxbybLEjMwETLxnvMygTPw.yYk0zYmMEZlcVaNkDZjcFYScVaMEjLxDGdAECRwDTLLgTPwbERAECTHETLuEFRyETXiETMwEzLwgWPJDCRwDTLLgTPwbERAECTHETLuEFRAICQAEiTDETLIQTPwPVXDETLHQTPwXVXDETLmEFQAECZgQTPwvDQAESZoQjBAEiZgQTPwnVZDETLWQTPwrVZDETLrEFQAECaoQTPw.EQAESaoQTPw3VXDETLtkFQAEyagQTPw7VZDETLvEFQAoPLvkFQAISQAESTEETLgkVQAESXsUTPwHUQAEiXkUTPwHVZEETLh0VQAESREETLiUVQAEyXoUTPwLVaEETLjEVQJDTLjUVQAECYoUTPwPVaEETLHUTPwTVYEETLkkVQAESYsUTPwXVXEETLlUVQAEiYoUTPwXVaEETLmEVQAEyYkUjBAEyYoUTPwbVaEETLnEVQAEiSEETLnkVQAECZsUTPwvTQAESZiUTPwjVYEETLocVQAESZoUTPwj1ZEETLo0VQAoPLo8VQAEiZgUTPwn1XEETLpUVQAEiZmUTPwnVZEETLpsVQAEiZsUTPwn1aEETLWUTPwr1XEETLqUVQAEyZmUTPJDyZoUTPwr1ZEETLq0VQAEyZuUTPwvVXEETLrMVQAECakUTPwv1YEETLrkVQAECaqUTPwvVaEETLGUTPw.UQAEiBsMVQAESakUTPwz1YEETLskVQAESaqUTPwzVaEETLs8VQAEiagUTPw31XEETLtUVQAEiamUTPw3VZEETLtsVQAoPLt0VQAEiauUTPw7VXEETLuMVQAEyakUTPw71YEETLukVQAEyaqUTPw7VaEETLu8VQAECbgUTPw.2XEETLvUVQJDTLvcVQAECboUTPw.2ZEETLv0VQAECbuUzbjEVXiETMwEzLgYVPxjUPxDFYAISVQEjL4fWPwLCSHETLy.ERAEiBzPTPwLSRDEzMxETLPgTPwDSbAcibAECRwDzMxETLWgTP2HWPw7VXHEzMxETLmEFQAcibAEiYgQTP2HWPwfDQAovMxETLjEFQAcibAESRDEzMxETLRQTP2HWPwjVZDEzMxETLpEFQAcibAEiZoQTP2HWPwbEQAcibAEyZoQTP2HWPJDCagQTP2HWPwvVZDEzMxETLPQTP2HWPwzVZDEzMxETLtEFQAcibAEiaoQTP2HWPw7VXDEzMxETLukFQAcibAEiBvEFQAcibAECboQTP2HWPwTybjEVXiETMwEzLgYVPxjUPxDFYAISVQEjL4fWPwLCSHETLy.ERAECMDETLyjDQAovMxETLPgTPwDSbAcibAECRwDzMxETLWgTP2HWPw7VXHEzMxETLmEFQAcibAEiYgQTP2HWPwfDQAcibAECYgQTPJbibAESRDEzMxETLRQTP2HWPwjVZDEzMxETLpEFQAcibAEiZoQTP2HWPwbEQAcibAEyZoQTP2HWPwvVXDEzMxEjBwvVZDEzMxETLPQTP2HWPwzVZDEzMxETLtEFQAcibAEiaoQTP2HWPw7VXDEzMxETLukFQAcibAECbgQTP2HWPwn.boQTP2HWPwTybjEVXiETMwEzLgYVPxjUPxDFYAISVQEjL4fWPwLCSHETLy.ERAECMDETLyjDQAcibAECTHETLJDSbAcibAECRwDzMxETLWgTP2HWPw7VXHEzMxETLmEFQAcibAEiYgQTP2HWPwfDQAcibAECYgQTP2HWPwjDQAciBxETLRQTP2HWPwjVZDEzMxETLpEFQAcibAEiZoQTP2HWPwbEQAcibAEyZoQTP2HWPwvVXDEzMxETLrkFQAcibAoPLPQTP2HWPwzVZDEzMxETLtEFQAcibAEiaoQTP2HWPw7VXDEzMxETLukFQAcibAECbgQTP2HWPw.WZDEzMxETLJTybjEVXiETMwEzLgYVPxjUPxDFYAISVQEjL4fWPwLCSHETLy.ERAECMDETLyjDQAcibAECTHETLwDWP2HWPwfjBwDzMxETLWgTP2HWPw7VXHEzMxETLmEFQAcibAEiYgQTP2HWPwfDQAcibAECYgQTP2HWPwjDQAcibAEiTDEzMxoPPwjVZDEzMxETLpEFQAcibAEiZoQTP2HWPwbEQAcibAEyZoQTP2HWPwvVXDEzMxETLrkFQAcibAECTDEzMxETLJzVZDEzMxETLtEFQAcibAEiaoQTP2HWPw7VXDEzMxETLukFQAcibAECbgQTP2HWPw.WZDEzMxETL0LGSAYSbAEiBxbybLEjMwETLxbybLEjMwETLxbybLEjMwETLxbybAE1XAUSbzAWXvgFZrYzag8FbnglQtE1angFYFAkavYkQroPXtg1YrYzUsA2YnYjZg0FZmQlQLYjYvYDZgwFZlwlQmE1ZvYFZFYVXqgVUFgjZvUFbFQVXpgVYrYTRoAWYnYjTJjFZkQlQAo0PFAWXncFYrYzagc1ajglQtE1YmQFYFAkYuMFbFwVXlc1XrYzUk81XnYjZgU1YiQlQLIjXvYDZgQlBmIFaFcVXi8lXnYjYgM1YhQlQHI1agAmQjElXmEFaFkTXuEFZFIUXmEFYFEDbsg0QuE1arAmYGAkar8laGcUarovalcDSrwlatczYgsFatY1QHoFas41QIkFasY1QAgFar41QuE1YqwlYGAkYqslaGcUYqslYGwDYqolaGcVXislZJX1QHI1Zo41QIsTZlcTPvUFZpcDTtQ1YpcDSrQlYpcDRpQVYpcTPnQFYpcDTlM1XpcDSTIlZGgjXiElZG8zajAmBhwlan81Zj4lXr4FVmMFahwlan01XiolXr4Fbm0FYSwlavUVQiIFat8VYoQVahwVaPEFYYwVakkVPYQVaikVZioPahQVahcVQiIlRhkVajMkRg41XiolXJk1amMFahoTXvsFYtIlRpE1ajAmXJEVZhMVXpITYoQkXpITZoY1XiolPJzVZnMFYpITXooFYkolPkkFajYlZBkVZtQ1YpITaoAGYnolPQsTZlIzXkI1Zo4lPkU1XqolYBcVYjslZtITZkUlBqslYBsVYls1ZtITakc1ZrYlPuUFZqwlaBEUZr0lYBMVYpwVatITYksFatYlPmUFar4laBkVYsw1alIzZk4FauofaB0VYuwFblIzakAGaXITXiE1YgQ1PhMVXuEFZCM1XhcVXrMDUh8VXvMTQiclXjMjYiM1ahg1PmMFYmIFaCg1XJHjXvMTZiU1YiQ1PpMVYuMFZCs1Xlc1XrMDaiY1aiA2PsM1YmQFYC41Xm8FYnMzaig1Yjw1PvMFZuMTLgMVZnUlBjMjXikFbkg1PiMlZnUFaCQkZvUFbCUzZnU0PlM1ZvYFZCc1XrglYrMDZiYjYvMTZi0FZmQ1PpMVavcFZCs1Xto.Zmw1PrMlavY0PsM1angFYC41XuAGZnMzaiAGZnw1PvM1SZMzbAE1XAUSbAUSLwLWPgMVP0DGSogFYsIzZkwlXJX1aCcVarU1XqMjagwVam8lQvkVZsIVYCwVamElSC8VXoQVZpwlanE1YswzQIcjaiIDTvs1YpwlajkFYpsVZBwjBvUFUGckZgIVaBoVYm81YqYTYsk1Yl4lQIQVXmE1QLgEbjcjTg0VXjIDYk8VZiYlQuElYisVaGYVZiklXmMjXso.YmIFaCIValIVXnYzZo4lZnc1PpEFSjUlQjUFahQVZCAWan4VYmMTPls1ZpwlavEVZhsVaGoVZnsVZqIDSi4lZJbFaswVXiQlZgIDTlAmZlcDYowFaoo1Qq01ZnIFZCAWXrcVXuMTao01Yh4lQn0lYnYVXCQVaOM1XFkVZmUVQCwlBgsVaZYzUvE1alozago1ap4lRWUFYlA2PmkVZmElYC4VYqsFZlYzaoMlasAmPnElalw1ZBwTXmE1aFQVaQYFbFovao4laqc1QrEVYlclaF4VXhM1ahcjaswVamU1PiUlZmY1ZCA0ak0FZr41Uqk1anczao0FaqQlPHUVan4FatEDUJLVaBwVZogVYlYDbkoFblolQmE1XpoVZr4lagAWXtw1QPg1apwlPuE1Zm4VXr41YgkFbsclRlElalIFZFkVZsolBi4lQnklYsslYBI0YkQFZBUVZZMlYCEDbnEEatYVXuAWVB8VYiYlYmYzUjQlSFEDYlklaj0lYggVago1QjU1YroPXvMDTkw1QJwDZlAmYBgVauIVXlYDakA2XiwlQIcVXpolPPc1av8lRp0lZlUFZC0VZWoFYBMVZqg1XqMTRq8FaJf1Qk0FarEFYFAWXq4FYrIDSqQVZvcDRuU1SJcVZocVancDSX4lar0lYoo0YuMzUnoFYsMjXsA2XhclQi0VYtclBuMjZg4FbjQlQrkVZuUVZCEEZpcVXFkVZiUlZmIjTjU1ZiIDYgUFakslQpUlapQVYCsVYmclUFkzatE1YC8VZuo.aUMDSmsVavwVahk1ZvkVYGgVXtEFaoITPtkFatoTYkklXig1PtElXlQVZGwzXu4FZJ8VZoQVYjYjYsk1Yn01PJvVZnklahcjXo0DYpYDRmwFYmcTZsMVYkglQkUFYjUjQAgjaroDSv0FZpoTZsQjYuMjYko1ago1PuklZoc1aFMmBAE1XAUSbP0lYuglPkkFbh4lZBoVYn8FYpYjagQTYpYTRmkFZqcTYkgjXnYDbo81Yqc1QskVXsUFaCIURn81ProPXsMVYocTao8Vaow1QLgFZnwlPrEVal0FYGcVXoQlQJUVaqIlXlYTXoslZiclQL0VYsolPHckYioTasEUYuMTRJ3FYs8lPlk1YpIlZCkjXnwVXr4FZgI0XsczZooVYl01PnEFaoIzPs0VZnUVZFAWassVXoMDTsAGZqMTPgMlYoQlBsQVXjIlXiIjZkUFYmc1PrE1XpgkPIYlXnI1PsklYiklXBsVarU1XsMTRq0lZpcjZgUFauQ1Qn0FbuElYCkVZlo.arUlPnkFbggVZFYVXoUVXsMjXkklanM1PIwlZocFatwTZlc1aGcVZOQlZCYVZmklZgIDbkAGanM1PuEFZmYlXJHTPpY1ZoIDZoI1ZuM1Quk1ajYzQWs1ZpAmPPgVaWojasAGajk1PLoFavQFasgDbjoFYJYVXvwFYsYTXs0FYjQlBFAWXWYFZBEzToA2QHsDaqozaoM0aqcDagcVXhU1Qmk1Ytg1ZFcUYngFYFAkatgVZr4lXkQjXhYDRqoFZhcTZooPPkAmQsUVXiQjQRQVZg8lPPclavoFatkzXjgkPP41XlIFatQVZs8VZjIDRhI1ZlcDagsjZpczasIFZRMDYkgTXJ31PoklarIVaFAkZjUFbCgVaoM1XpYTYsA2Xjo1PREFYjs1PlEFZi41ZG0VZtcFbjcTaos1ZqglPAwFarsFasAkBuglSBUVakU1XjYTXoYFbs81QHglZiA2PRcFarYlPjUVZkYlaFIVYt4VTCsVZjYFZqYDRuY1QB8VYo0VXvMzZoofYr0FaGkjapAWaGgVXsAWZqITRtE1agwlaIw1ZsglRvkVZiIlXFQVXms1XlYzXoklXsMlPL0FapUFYskjZoUVYJLjagElZGIzZsIFak81PWcFas4lRnElamkFYBEDYsQFaFwVatglYrYzaowVXsQ1QjEVYvYlXF8VZks1XmYjYsUlBlMlXCsVYokVXjMjXoo1ZgQlQtEFYhc1ZFQVXtc1YgcTYko1aiAmQA81Zo01QskVYoQFaCkVapklXjMjYoUlZvo.YG8VZk41XqYzbg0VXjETMwUVYkolYiUFZQEjLg0VPxTFbUUFYjIVPyDlahIVPwT1aVclZnQVSjIVPwD1ahIVPJDiYmUFYkcFYjEzLgMlXhETLkcVYtUFbjQVPyD1ahIVPwXVZk4VYmQlXAMSXpglXAESYuY0YpgFYMQUPwD1ahMlBAESUmk1TnEVSjIVPwrjXhETLlcVYjU1YTEzLgMlXoETLkAWUkQFYjEzLg8lXhETLlcVYjU1YjUVPyD1XhMVPwnPYmUlakAGYhEzLg8lXkETLkcVYtUFbTEzLg8lXoETLkAWUkQFYkEzLg8lXhETLkcVYtUFbjUVPyD1ahMVPwTFYJX0Ytc1XjIVPxrjXhETLkQlUm41YiQUPxrjXoETLlcVYjU1YjIVPyD1XhIVPwT0YoMEZg0DUAEyRhMVPwTlamolBnkFYhEzLK4TPwTlamoFZoQUPyrDZoETLk41YpgVZjQVPyrDZhETLk41YpgVZjUVPyrDZiETLlM1Ypc1amgFYhoPPxrjSAEiYiclZm81YnQUPxrDZoETLkAWUkQFUAMSXuIlXAEiYoUlakcFUAMyRnMVPwTUQjIVPzrjXkETLUUDUJDDMKIVZAESYkclZnQlSjIVPxrjXhETLkU1YpgFYNQUPxrjXiETLkclUm01YkQlXAIyRhUVPwT1YVcVamUFUAIiBKIVZAMCN0LWPRETMwEDMvjSMyEUdAICdAECLCgkYlEzPwETLwTySqo1SBg0XqEzPwETLwTCbuU0SBAWZOEiPwoPPwDSMv0FVv8lPvk1Zp8jPwETLwTCbrsFZv8lPvgVUOITbAESL0T1aow1alITYqQFZuclPwETLwTyZhc1as0lPJnVahsVatITbAESL0.WYlIFajIzavgEajITbAESL0TFZjYlZqITQuIlZqITbAESL0n1ZhkVZhIjZk0VYoIlPwEjBwDSMtsFbnUFbB01akAmYhITbAESL0vzQh4lPNI1YhAmPwETLwTSYssjanoDYkw1ZtolRwETLwTCYgMFbMoTPoo.bmslRwETLwTyauklahUlRG8laholRwETLwTiYm4lZogFYsA2YpklZiQVawETLvbSczEzLTIVYlcFYsEWPw.yMJTGcX8jVGgFZQklYBEWPw.yM0QGVOEyQic1Zsk0PwETLvbSczA2aOMjQhIlamgzPwETLvbSczomcwETLvbSczomB1EWPw.yM0Qmd1EWPw.yM0Qmd1EWPw.yM0Qmd1EWPw.yM0Q2c1EWPw.yM0Q2c1EWPw.yM0Q2c1EWPw.yM0Q2c1oPbAECL2TGc2YWbAECL2TGc2YWbAECL2TGc2YWbAQiLvLSXlEjLyIUP1fmYoUVaj01Xko0LmEVYoQVXhklVyLWPJjWPxfWP3DSNwLWdAciYqQURlg1TncVSNM0YicVaMkTYlgVZnElUnMlSAEiLyEUdAICdAECLCgkYlEzPwETLwTiBOslZOIDVisVPCEWPwDSMv8VUOIDbo8TLBEWPwDSMv0FVv8lPvk1Zp8jPwETLwTCbrsFZv8lPvgVUOITbAESL0nPYukFauYlPksFYn81YBEWPwDSMqI1Yu0VaBoVahsVatITbAESL0.WYlIFajIzavgEajITbAESL0TFZjYlZqITQJ7lXpslPwETLwTiZqIVZoIlPpUVakklXBEWPwDSMtsFbnUFbB01akAmYhITbAESL0vzQh4lPNI1YhAmPwETLwTiBk01RtglRjUFaq4lZJEWPwDSMjE1Xv0jRAkFbmslRwETLwTyauklahUlRG8laholRwETLwTiYm4lZogFYsA2YpoPZpMFYsEWPw.yM0QWPyPkXkY1Yj0VbAECL2TGcX8jVGgFZQklYBEWPw.yM0QGVOEyQic1Zsk0PwETLvbSczA2aJ7zPFIlXtcFRCEWPw.yM0Qmd1EWPw.yM0Qmd1EWPw.yM0Qmd1EWPw.yM0Qmd1EWPw.yM0Qmd1EWPw.yM0Q2c1EmBAECL2TGc2YWbAECL2TGc2YWbAECL2TGc2YWbAECL2TGc2YWbAECL2TGc2YWbAECL2TGc2YWbAQiLvLSXlEjLyofTAYCdlkVYsQVaiUlVybVXkkFYgIVZZMybAkWPxfWP3DSNwLWdAciYqQURlg1TncVSNM0YicVaMkTYlgVZnElUJf1XNEDMW4VXpMVVwDjLyEUdAICdAECLCgkYlEzPwETLwTySqo1SBg0XqEzPwETLwTCbuU0SBAWZOEiPwETLwTiBv0FVv8lPvk1Zp8jPwETLwTCbrsFZv8lPvgVUOITbAESL0T1aow1alITYqQFZuclPwETLwTyZhc1as0lPp0lXqoPatITbAESL0.WYlIFajIzavgEajITbAESL0TFZjYlZqITQuIlZqITbAESL0n1ZhkVZhIjZk0VYoIlPwETLwTiaJrFbnUFbB01akAmYhITbAESL0vzQh4lPNI1YhAmPwETLwTSYssjanoDYkw1ZtolRwETLwTCYgMFbMoTPoA2YqojBwETLwTyauklahUlRG8laholRwETLwTiYm4lZogFYsA2YpklZiQVawETLvbSczEzLTIVYlcFYsEWPw.yM0QGVOofVGgFZQklYBEWPw.yM0QGVOEyQic1Zsk0PwETLvbSczA2aOMjQhIlamgzPwETLvbSczomcwETLvbSczomcwETLJ.yM0Qmd1EWPw.yM0Qmd1EWPw.yM0Qmd1EWPw.yM0Q2c1EWPw.yM0Q2c1EWPw.yM0Q2c1EWPw.yM0Q2c1EWPw.iB2TGc2YWbAECL2TGc2YWbAECL2TGc2YWbAQiLvLSXlEjLyIUP1fmYoUVaj01Xko0LmEVYoQVXhklVyLWP4EjL3oPP3DSNwLWdAciYqQURlg1TncVSNM0YicVaMkTYlgVZnElUnMlSAEiLyEUdAICdAECLCgkYlEzPwETLwTySqo1SJHDVisVPCEWPwDSMv8VUOIDbo8TLBEWPwDSMv0FVv8lPvk1Zp8jPwETLwTCbrsFZv8lPvgVUOITbAESL0T1aowlBuYlPksFYn81YBEWPwDSMqI1Yu0VaBoVahsVatITbAESL0.WYlIFajIzavgEajITbAESL0TFZjYlZqITQuIlZqofPwETLwTiZqIVZoIlPpUVakklXBEWPwDSMtsFbnUFbB01akAmYhITbAESL0vzQh4lPNI1YhAmPwETLwTSYssjaJflRjUFaq4lZJEWPwDSMjE1Xv0jRAkFbmslRwETLwTyauklahUlRG8laholRwETLwTiYm4lZogFYsA2YpklZiQlBsEWPw.yM0QWPyPkXkY1Yj0VbAECL2TGcX8jVGgFZQklYBEWPw.yM0QGVOEyQic1Zsk0PwETLvbSczA2aOMjQhofXtcFRCEWPw.yM0Qmd1EWPw.yM0Qmd1EWPw.yM0Qmd1EWPw.yM0Qmd1EWPw.yM0Qmd1EWPw.yM0Q2c1EWPw.yMJTGc2YWbAECL2TGc2YWbAECL2TGc2YWbAECL2TGc2YWbAECL2TGc2YWbAECL2TGc2YWbAQiLvLSXlEjLyIUP1fmBlkVYsQVaiUlVybVXkkFYgIVZZMybAkWPxfWP3DSNwLWdAciYqQURlg1TncVSNM0YicVaMkTYlgVZnElUnMlSAoPLxLmTAYCdlMlYhUlYAoEMn8FRCo0LyIUP1fmYiYlXkYVPZQCZugzPZMybREjM3Y1XlIVYlEjVzf1aHMjVyLmTJDjM3Y1XlIVYlEjVzf1aHMjVyLmTAYCdlMlYhUlYAoEMn8FRCo0LyIUP1fmYiYlXkYVPZQCZugzPZMybg0VXjEjB0DWYkUlZlMVYnEFYAISXmEjLkYlYhQlXAQSXpIlXAESYtY0YkU1YlkFUAEyRhMVPwTVYMcVaSglZjIVPwrjXkoPPwTVYmoFZj4DYjEjLKIVYAEiYi0DZmQlXAMSXoIlXRETUmk1TnEVSjQVPwrjXiETLUcVZSgVXMQVYAEyRhUVPJDSYkclZnQlSjUVPxrjXoETLk41YpgVZjYVPyrDZhETLk41YpgVZjcVPyrDZiETLk4lUmUVYmYVZjIVPwrjXhEjBwT1anYlYi0DZmQlXAEyRhIlTAY1Xmo1YucFZjQVPxrDZhETLkQlUm4FZgQlXAIyRhMVPwTFYVclanEFUAIyRhoPYAEyLkUVSm01TnoFUAEyRhIVPwTlYlIFUAQyRhMVPwX1YkQVYmQlYAMSXiIVYAEyLlcVYjU1YjcVPyD1XhIVPJDSUEQFYAQyRhMVPwXVZk4VYmQFYAMyRnMVPzjyLyEjTAUSbAQCL4Tyb4EzMkAGZjcFYmo1YsEyTNYEZiEjLwLmB4EzMkc1YpcVaN0DZiclZm81YnEjLxLWdAcSYlgVZNg1XSgFYAISMykWP2TVYmoFZj4jUnMlSmolUm8VPxDybAoPVAkiYoojYnMEZigVXKYlZJUzYp4TSAICMxLWPYETNlklRkQFZl4jUmcVLKYlZJY1XMgFYVc1aSc1amQVSAIyLJTybAkUP4XVZJUFYmk1TVgFYKYlZJUlYm8FZm0zYsYEZg0TPxLyMyETVAkiYooTYvg1YMg1Xm0lUScVYKYlZJUlBmclZm0lSMg1XIU1Yk4VPxLyLykWP2LlaUQjYnkjSVkjYgYlYk0VUkYVPwfyb4EzMi4VUDYFZI4jUIYVXlYVYsoPUkYVPwfyb4EzMi4VUDYFZI4jUIYVXlYVYsUUYlETL3LWdAcyXtUEQlgVRNYURlElYlUVaUUlYAECNykWP2LlaJDSYpU1akolYkMlawDjZlEUXiolYAklXgklZlE0ZtsTXlkUXpEFZgQlXsETTg0lTv01asMWdAcyXtESYpU1akolBlU1XtESPpYVTgMlZlETZhEVZpYVTq41RgYVVgoVXnEFYh0VPQEVaRAWau01b4EzMi4VLkoVYuUlZlU1XtESPpofYQE1XpYVPoIVXoolYQslaKElYYElZggVXjIVaAEUXsIEbs8VaykWP2LlawTlZk8VYpYVYi4VLAolYQE1XpYVPJjlXgklZlE0ZtsTXlkUXpEFZgQlXsETTg0lTv01asMWdAgSSmc1TnY1Ys4TPxPyb4EDNMc1YSglYm0lSAICMykmBAgSSmc1TnY1Ys4TPxPyb4EDNMc1YSglYm0lSAICMykWP2bVYMc1YSglYm0lSAICMyETVAgSQAISM0LWPYEDNEoPPxTSM8bSMyTiLxn...."
                                    },
                                    "fileref": {
                                        "name": "Zebra 2.9.4",
                                        "filename": "Zebra 2.9.4.maxsnap",
                                        "filepath": "~/Documents/Max 9/Snapshots",
                                        "filepos": -1,
                                        "snapshotfileid": "87abafcc484e44b95db09c14c309cb67"
                                    }
                                }
                            ]
                        }
                    },
                    "text": "vst~",
                    "varname": "vst~",
                    "viewvisibility": 0
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "int": 1,
                    "maxclass": "gswitch2",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 738.0, 499.0, 30.0, 27.60000056028366 ]
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "int": 1,
                    "maxclass": "gswitch2",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 543.2000080943108, 499.0, 30.0, 27.60000056028366 ]
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "int": 1,
                    "maxclass": "gswitch2",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 617.0, 499.0, 30.0, 27.60000056028366 ]
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 8.0, 85.0, 61.0, 22.0 ],
                    "text": "s #0_s4m"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 8.0, 42.0, 55.0, 22.0 ],
                    "text": "zl.slice 1"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 8.0, 11.0, 97.0, 22.0 ],
                    "text": "udpreceive 7777"
                }
            },
            {
                "box": {
                    "id": "obj-36",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 299.60000109672546, 523.2000077962875, 61.0, 22.0 ],
                    "text": "s #0_s4m"
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 272.4000006914139, 559.2000083327293, 68.0, 22.0 ],
                    "text": "0.001885"
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 299.60000109672546, 496.00000739097595, 61.0, 22.0 ],
                    "text": "(frq-in $1)"
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 129.0, 402.0, 61.0, 22.0 ],
                    "text": "s #0_s4m"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 5,
                    "outlettype": [ "bang", "bang", "bang", "bang", "bang" ],
                    "patching_rect": [ 568.0, 383.0, 62.0, 22.0 ],
                    "text": "t b b b b b"
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 653.1999989748001, 296.80000442266464, 68.80000102519989, 68.80000102519989 ]
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 494.0, 466.99999952316284, 35.0, 22.0 ],
                    "text": "peek"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 738.0, 467.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 738.0, 530.0, 139.0, 22.0 ],
                    "text": "set! debounce-ksmps $1"
                }
            },
            {
                "box": {
                    "id": "obj-68",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 617.0, 535.0, 105.0, 22.0 ],
                    "text": "set! rms-thresh $1"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-69",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 617.0, 463.0, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-67",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 471.0, 660.0, 42.0, 42.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-65",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 494.0, 535.0, 111.0, 22.0 ],
                    "text": "set! delta-thresh $1"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-64",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 543.2000080943108, 466.99999952316284, 50.0, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-62",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 399.0, 575.0, 59.0, 22.0 ],
                    "text": "r #0_s4m"
                }
            },
            {
                "box": {
                    "id": "obj-61",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 371.0, 652.0, 81.0, 22.0 ],
                    "text": "set! debug $1"
                }
            },
            {
                "box": {
                    "id": "obj-59",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 371.0, 614.0, 27.20000571012497, 27.20000571012497 ]
                }
            },
            {
                "box": {
                    "id": "obj-56",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 129.0, 370.0, 67.0, 22.0 ],
                    "text": "(rms-in $1)"
                }
            },
            {
                "box": {
                    "id": "obj-54",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 905.0, 479.0, 35.0, 22.0 ],
                    "text": "reset"
                }
            },
            {
                "box": {
                    "id": "obj-52",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 471.0, 629.0, 119.0, 22.0 ],
                    "saved_object_attributes": {
                        "heap": 32,
                        "ins": 1,
                        "log-null": 0,
                        "outs": 1,
                        "thread": 104
                    },
                    "text": "s4m sax-tracker.scm"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 226.0, 244.0, 61.0, 22.0 ],
                    "text": "r #0_cs-in"
                }
            },
            {
                "box": {
                    "id": "obj-48",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 126.0, 431.0, 68.0, 22.0 ],
                    "text": "0.00034"
                }
            },
            {
                "box": {
                    "id": "obj-45",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 299.0, 392.0, 53.0, 22.0 ],
                    "text": "route frq"
                }
            },
            {
                "box": {
                    "id": "obj-44",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 515.2000076770782, 277.5, 111.0, 22.0 ],
                    "text": "outchannel amp $1"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-39",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 226.0, 643.2000095844269, 92.00000137090683, 22.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 226.0, 511.2000076174736, 31.0, 22.0 ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 226.0, 355.0, 120.0, 22.0 ],
                    "text": "route kchan outvalue"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 226.0, 392.0, 63.0, 22.0 ],
                    "text": "route amp"
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "meter~",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "float" ],
                    "patching_rect": [ 226.0, 590.4000087976456, 97.60000145435333, 37.60000056028366 ]
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 405.600006043911, 277.5, 101.0, 22.0 ],
                    "text": "outchannel frq $1"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 149.60000222921371, 148.80000221729279, 36.0, 65.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.gain~[2]",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.gain~[2]",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~[2]"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "ezadc~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 40.099999755620956, 122.90000197291374, 32.80000048875809, 32.80000048875809 ]
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 47.0, 335.5, 50.0, 22.0 ],
                    "text": "s~ cs-in"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 375.2500056028366, 244.0, 31.0, 22.0 ],
                    "text": "stop"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 296.0, 244.0, 35.0, 22.0 ],
                    "text": "reset"
                }
            },
            {
                "box": {
                    "id": "obj-15",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 21.0, 350.5, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 33.0, 386.5, 39.0, 22.0 ],
                    "text": "gate~"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 40.0, 231.5, 93.0, 68.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.gain~[1]",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.gain~",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~[1]"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 18.0, 463.5, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 335.0, 244.0, 32.0, 22.0 ],
                    "text": "start"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "signal" ],
                    "patching_rect": [ 226.0, 329.0, 145.0, 22.0 ],
                    "text": "csound6~ rms-frq-out.csd"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-98", 0 ],
                    "source": [ "obj-100", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-94", 0 ],
                    "source": [ "obj-101", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-102", 1 ],
                    "source": [ "obj-103", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-102", 0 ],
                    "source": [ "obj-103", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-94", 0 ],
                    "source": [ "obj-105", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-35", 0 ],
                    "source": [ "obj-106", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-109", 0 ],
                    "source": [ "obj-107", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-108", 0 ],
                    "source": [ "obj-109", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-11", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-11", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 1 ],
                    "order": 0,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "order": 1,
                    "source": [ "obj-14", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-63", 0 ],
                    "midpoints": [ 159.10000222921371, 227.671875, 196.91796875, 227.671875, 196.91796875, 76.07421875, 488.70000714063644, 76.07421875 ],
                    "order": 0,
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-93", 0 ],
                    "order": 1,
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-68", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-29", 1 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-65", 0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-39", 0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "order": 0,
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-48", 1 ],
                    "order": 1,
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-56", 0 ],
                    "order": 2,
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "order": 1,
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-45", 0 ],
                    "order": 0,
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-29", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 0 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-33", 0 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "midpoints": [ 609.75, 454.45468693971634, 747.5, 454.45468693971634 ],
                    "source": [ "obj-33", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "midpoints": [ 577.5, 454.91562443971634, 503.5, 454.91562443971634 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 0 ],
                    "midpoints": [ 620.5, 457.22031193971634, 914.5, 457.22031193971634 ],
                    "source": [ "obj-33", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-64", 0 ],
                    "midpoints": [ 588.25, 461.45078068971634, 552.7000080943108, 461.45078068971634 ],
                    "source": [ "obj-33", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-69", 0 ],
                    "midpoints": [ 599.0, 452.02109318971634, 626.5, 452.02109318971634 ],
                    "source": [ "obj-33", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 0 ],
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "order": 1,
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-63", 0 ],
                    "midpoints": [ 235.25000068545341, 190.38437783694826, 454.50938177271746, 190.38437783694826, 454.50938177271746, 96.29062643484212, 488.70000714063644, 96.29062643484212 ],
                    "order": 0,
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "order": 2,
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-46", 0 ],
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "source": [ "obj-44", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-106", 1 ],
                    "order": 1,
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-79", 0 ],
                    "order": 0,
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "source": [ "obj-46", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 0 ],
                    "midpoints": [ 747.5, 591.7710931897163, 480.5, 591.7710931897163 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-89", 0 ],
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-67", 0 ],
                    "order": 1,
                    "source": [ "obj-52", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-86", 0 ],
                    "order": 0,
                    "source": [ "obj-52", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 0 ],
                    "midpoints": [ 914.5, 592.4468744397163, 480.5, 592.4468744397163 ],
                    "source": [ "obj-54", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 1 ],
                    "order": 0,
                    "source": [ "obj-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-58", 0 ],
                    "order": 1,
                    "source": [ "obj-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-34", 0 ],
                    "source": [ "obj-56", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-61", 0 ],
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 0 ],
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 0 ],
                    "source": [ "obj-62", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-71", 0 ],
                    "source": [ "obj-63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 1 ],
                    "source": [ "obj-64", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 0 ],
                    "midpoints": [ 503.5, 589.1890619397163, 480.5, 589.1890619397163 ],
                    "source": [ "obj-65", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-52", 0 ],
                    "midpoints": [ 626.5, 591.5835931897163, 480.5, 591.5835931897163 ],
                    "source": [ "obj-68", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 1 ],
                    "source": [ "obj-69", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-1", 0 ],
                    "order": 0,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-10", 0 ],
                    "order": 2,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 1 ],
                    "order": 1,
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 1 ],
                    "order": 1,
                    "source": [ "obj-71", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-55", 0 ],
                    "midpoints": [ 488.70000714063644, 168.59062751219608, 673.6062600375153, 168.59062751219608, 673.6062600375153, 85.77187627810054, 702.5, 85.77187627810054 ],
                    "order": 0,
                    "source": [ "obj-71", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-70", 1 ],
                    "order": 2,
                    "source": [ "obj-71", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "source": [ "obj-72", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "source": [ "obj-73", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-51", 1 ],
                    "source": [ "obj-79", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-51", 0 ],
                    "source": [ "obj-79", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-101", 1 ],
                    "order": 1,
                    "source": [ "obj-84", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-95", 0 ],
                    "order": 0,
                    "source": [ "obj-84", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-84", 1 ],
                    "order": 0,
                    "source": [ "obj-85", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-84", 0 ],
                    "order": 1,
                    "source": [ "obj-85", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-87", 0 ],
                    "source": [ "obj-86", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-88", 0 ],
                    "order": 1,
                    "source": [ "obj-89", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-92", 1 ],
                    "order": 0,
                    "source": [ "obj-89", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-78", 1 ],
                    "source": [ "obj-90", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-97", 1 ],
                    "source": [ "obj-94", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-97", 0 ],
                    "source": [ "obj-94", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-98", 0 ],
                    "source": [ "obj-96", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-96", 0 ],
                    "midpoints": [ 858.6000127196312, 290.8999989628792, 856.2000126838684, 290.8999989628792 ],
                    "source": [ "obj-97", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-103", 1 ],
                    "source": [ "obj-98", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-103", 0 ],
                    "source": [ "obj-98", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-103": [ "live.gain~", "live.gain~", 0 ],
            "obj-20": [ "live.gain~[2]", "live.gain~[2]", 0 ],
            "obj-40": [ "vst~", "vst~", 0 ],
            "obj-7": [ "live.gain~[1]", "live.gain~", 0 ],
            "obj-98": [ "vst~[1]", "vst~[1]", 0 ],
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}