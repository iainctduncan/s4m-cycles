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
        "rect": [ 34.0, 100.0, 930.0, 795.0 ],
        "subpatcher_template": "s4m",
        "boxes": [
            {
                "box": {
                    "id": "obj-124",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "orientation": 1,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 547.0, 679.0, 62.0, 47.0 ],
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
                    "id": "obj-123",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 547.0, 740.0, 68.0, 22.0 ],
                    "text": "dac~ 49 50"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 546.8085067272186, 647.2340379953384, 39.0, 22.0 ],
                    "text": "click~"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
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
                        "rect": [ 113.0, 100.0, 833.0, 768.0 ],
                        "subpatcher_template": "s4m",
                        "visible": 1,
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-48",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 663.0, 312.5, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-47",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 663.0, 368.10000467300415, 32.0, 22.0 ],
                                    "text": "gate"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-38",
                                    "int": 1,
                                    "maxclass": "gswitch2",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 277.0, 556.0, 30.4000004529953, 28.800000429153442 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-41",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 277.0, 593.0, 77.0, 22.0 ],
                                    "text": "(nnum-in $1)"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-39",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 598.0, 19.5, 58.0, 22.0 ],
                                    "text": "loadbang"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-112",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 673.0, 53.5, 29.5, 22.0 ],
                                    "text": "10"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-111",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 553.0, 53.5, 29.5, 22.0 ],
                                    "text": "0.5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-105",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 593.0, 153.5, 104.0, 22.0 ],
                                    "text": "s #0_s4m_tracker"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-104",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 673.0, 91.5, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-103",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 673.0, 121.5, 105.0, 22.0 ],
                                    "text": "set! dbs-thresh $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-102",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 553.0, 121.5, 111.0, 22.0 ],
                                    "text": "set! delta-thresh $1"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "obj-100",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 553.0, 91.5, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-99",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 212.0, 121.5, 47.0, 22.0 ],
                                    "text": "s to-vst"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-98",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 587.0, 252.0, 45.0, 22.0 ],
                                    "text": "r to-vst"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-97",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 644.6000094413757, 252.0, 39.0, 22.0 ],
                                    "text": "60 90"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-94",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 587.0, 486.0, 68.0, 22.0 ],
                                    "text": "dac~ 51 52"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-91",
                                    "lastchannelcount": 0,
                                    "maxclass": "live.gain~",
                                    "numinlets": 2,
                                    "numoutlets": 5,
                                    "orientation": 1,
                                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 587.0, 428.0, 65.0, 47.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_longname": "live.gain~[4]",
                                            "parameter_mmax": 6.0,
                                            "parameter_mmin": -70.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "live.gain~[2]",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 4
                                        }
                                    },
                                    "varname": "live.gain~[1]"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-87",
                                    "maxclass": "newobj",
                                    "numinlets": 7,
                                    "numoutlets": 2,
                                    "outlettype": [ "int", "" ],
                                    "patching_rect": [ 587.0, 343.0, 108.0, 23.0 ],
                                    "text": "midiformat"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-88",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 587.0, 313.0, 32.5, 23.0 ],
                                    "text": "join"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 13.0,
                                    "id": "obj-90",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "float" ],
                                    "patching_rect": [ 587.0, 283.0, 109.0, 23.0 ],
                                    "text": "makenote 100 8n"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-85",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 539.5, 343.5, 31.0, 22.0 ],
                                    "text": "plug"
                                }
                            },
                            {
                                "box": {
                                    "autosave": 1,
                                    "bgmode": 0,
                                    "border": 0,
                                    "clickthrough": 0,
                                    "id": "obj-83",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 8,
                                    "offset": [ 0.0, 0.0 ],
                                    "outlettype": [ "signal", "signal", "", "list", "int", "", "", "" ],
                                    "patching_rect": [ 587.0, 394.0, 92.5, 22.0 ],
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
                                            "pluginname": "Pianoteq 8.vstinfo",
                                            "plugindisplayname": "Pianoteq 8",
                                            "pluginsavedname": "",
                                            "pluginsaveduniqueid": 1349793905,
                                            "version": 1,
                                            "isbank": 0,
                                            "isbase64": 1,
                                            "blob": "16227.CMlaKA....fQPMDZ....A.Ec3DG.HPv.....ffjPfLEckkla2EVdfPDHCwVXyMWZiEFa.........7yIPImUKkB..H.VFQETW7C..n....fLvHiMu.CMuDCLW.....UZg41azUVbffiKz3xLuHCLxTCL1DyLPKWRt.pMWj9F2MCb2NwReQFarEl09...zQFcM0PE..vE....HIDHSQWYo41cgkGHDAxPrE1byk1XgwF.....G....zzajElbzQmP....TgVZyABbxU1bkQGHuYlYkI2bfDFHBEDHsk1Xo41Yf.WYxMGbkMFcoYWYfbWZzgFHgAxXrE1byk1XgwFHy8VctQlK.....PT...vE....HIDHSQWYo41cgkGHDAxPrE1byk1XgwF.....xQA..bjTUUE...fA....AL.vMQkbqA..TvE.+KfFffTX4QlafzBHS8lagQWXfjlafbDHsElZuI2PvNjdBNCfxjSGfdDGX.4QAIGr.MBI.UyI.0yI.8yI.EjI.QD.CwmI.gjI.wD.C4mI.8TI.A0I.E0I.IUI.M0I.QUfV.jUp.zUQ.JRbTAr.ckAPhjLe.KPWoAnJwwBvBzTH.oRBI.fGcRGvBTRn.zNC.HR87Ar.MxCfNDG..nR+X.n6vQA2vAAPNjQFriMB.KP.P.j2fSM.tCO.LTQDbSOCx.n6vgA2vwCPtiN..5PbH.j2TyCCETO.tiP.LzPHbSPAZDnEwQEPVjPLAXQ.AAnGwADPdzQTApLb.PQbX.Ob7.jxXi.EkD.7nyG.dDPVvSPFHSOAlVQ+vAnCwADPNDQkA3P2b.nxvgB7vQCPJyMGvSMF.ZQbLAjEIjL.JSP.viPBtCnGwgB.VzNH.4QAEHH.djOc.5MbnvPb7.j2bB.ftCGD.4P7PwNvbDr.oBH.tCPF.KP9DAf2ziDvBjPN.3P.cAr.czI.wzI.E0I.UEI.k0N.skfG.TVl.DUn.zSl.jSp.TSf.DSm.TRk.zPk.jNn.jJl.D.lLDTB.JRb..Sbr.jHgDALEUEvND.N.HREIXEf5DGW.oS+..fLkCKf9DGW.4SIACnGwAEPdDP..pRb.AjJcD..9TPB3zOjbzPWnTQCd.nHwg.EwACPhDPBTjPP.6PQ3AfEIjKvNTElLDFnLzFeMjGm.pRb..rCABEPpjMB.HR2v.rCQBJCkh.fxDGU.ISCEArCsBH.pTOF.6PrDAnCwwCGwA..xTP..4PCY.rC0RBPdTQY.6PwX.fCMTHvNDNC.3Q.IBrCwyIC4CJC4iRC8iICEDICMjICQDJCQzCfdDGR.4QKY.rCYDHfBDGE.6PLI.n7vABPBjQMvyMN.6PUMAfG0yCfVDGE.6Pd4.jEIzEvNTYO.5Qb.AfEAD.fdD..bDGG.6PtEAjGIzEvNzclLze+.HOmX.nEwwCPVDTI.3QA4EnCwA..VDPS.4PLMAn8vwDP1iPM.HP.gSOAMHBCYSCfpDGX.oR8L.nBwAA9vQDP5SNFHDLpAnO1L3CvBDIb.pLbf.r.Ei..JjLT.oLn.Ar.kiI.wSD.JSNW.KP9XBPAYBPCYBPGYBPJUBPLcBPOIAfJoSEvBTU.Ljdj.zW.LjXj.TX.LjPl.jS.LDFH.pRbrfObP.jJkE.fJDGH.oOQMfPNQ.r.IC.CAvI.A.E.5CQ.HjQCtBnBwAB9vAAPJjSE3CR0.nPFAgOCEXNJsyAfxDGP.ISJMCnNwAB.xzPG.oSMsFnLwQBPxjVa.nS.o.n9vA.CwwCP5CPVLjPR.HS+vwPCkgO.M3.fNDGL3CG.vDGC.4PKofOHA.SaUCfCUDBLMzB9Hzfh.5PbTPRbr.jC4D.IgkAfBDGH3CGG.IPCgfOAsAfCcDG.MDAvBDOI.nO+zAr.AkH.k0I.0UfX.jWl.TXr.XRrXDr.4UIfNDGB.KPY8.jC0iAfBDGC3CGDnDGI.KPSY.j.Ai.9TC.J8yGvBzSM.3PBw.P8r.r.szA.5yOe.KPGoBPCU.nLwgB.pzNJ.ISC0.r.8CJ.sCAf5DGS.oSHs.r.oyI.gCCf9DGR.4SMkAfL8CAvBTLm.D.a.ZTb7.jQUkA.5TPH.pObHfPbz.jBoz..9DQ..oO7v.fQkDKBUzD9.jfrApObffPb.PTb7.j9zC.Qok.BEzJ.FEQHHTPS3CPCJAn2vgBPdSRB.pOb.vTbz.j9DD.Sc0K.dCQ.3CPT.KPcTBP3bBP+XBPAYBPEYBPKYBPScBPWUBPXkDfS0i.vBTUh.JVbX.r.oj.f5CGFbCGA.IVUYfOGIvMEUAr.wSF.dCPG3SPF.KPoHBP.rAnVwwCPZUTi.6PUXxPY7.nUwQEPVERH.6PczBfX4iKfNEGQ.4TK0AfV8CHvNDHd.XU+f.rCMhICkB..NEPW.ZTbz.rC4h.f5CGF.YT.8fO5.Ar.IB.CESI.5iO..KPy.vPwbBP6fBP+.vPxXBPCAvPzXBPFAvP4XBPJAvP5PBPLYBPM4DPLAvP6LBPJAvP7LAnUwwA.FUOH.YUGQ.r.YD.C8CAf5CGO.oO+LAr.ID.CIzEPdiIO.KP7.vPFMAf9Dj.fNEGQ.4THA.r.cC.CkzF.diHK.KP0.vPKYBP0.vPKQ.fU0CBfFEGQ.YTFk.r.MC.C0TG.NEPH.KPv.vPQQBPs.vPUk.nOwQEP9TS..XT+f.r.kB.CoEJ.cB.C4kI.YB.CM1G.9jPG.KPi.vPqcAn9vg.4vQCvBzG.LzbB.oO+XPN7P.nNwQEP5DQF.KP..vP6UxP+UAfNIzfI.pSbbAjNMjAf1CGI.nOyf.j87yL.5zPJ.JSbDAjLcTO.xDQ2.pSb7.jNQ0afxDGP.ISLkAfN0yR4zCG83CBLADAfpDGS.oRKc.n9vwDP5CN6.nO8LnPfJCGa.oLrrCfJYSgJHCI4.pRbLAjJoSf4.KPhTBPuvCP3XBP7HBP9XBP.YBPCwBPFYBPIYBPLcBPMMBPOcBPQcBPQ0DfJYQMfxDGY.IS2jDr.A0Af1DGY.YS5b.r.4zH.sjI.YjH.xTOD.KP9P.fM8yDfRDGM.KPvH.jD8DIvBDHN.pObb.MbH.fDUjBP5yKEPSKB.KP.vCf9XSBzXifSAJQbP.MbbfObX.jDwzCzPC.9nCS.5yOBPCPePjOAhBnEwgEPVTQ.A5Qbb.fEATCPdzQVAJMb.PQbr.Obn.jE0j.zbCB7bCS.dTP.viOIPSNA5VQ8PAnDwQDPRzSxAJMbrvNb.Aj63y.znBCfVDGT.YQFQ.fDsyI6HTBz3SfiUDO0.5QbDAjGcTN.djQKAZNbvAj4zxEfdDGT.4QBMHV.dzNy.ZKbn.RbTAjsPhAH8RDvBzJO.XNvTAr.ciI.0CJ.AjI.MjI.cTH.hzKA.KPKYBPMoCPOcBPPcBPPQBPM4AfsjBBvBzPe.JRbb.r.ACAflCGD.IRB8PN77.r.APfmAHRg.CnLwAEPxjPmAZQb.AfL4y.PVzQ..XNzHBn1vAEPZiMAtBfEA..PVjDqAJRb7.jHQD..VzNvYyNe.5Qb7.jGYkBfdCGS.HR8D.j2fSf7A3Q9jAnJwwCPpTRAN.nCwgCPNjSH.nR9z.nuvgEP9BMJ.3MvHHGvNjdL.5QbH.fC4CDPdzQJ.6PoYxPaQxPOcxPAcAnEwwCPVjR..6PvPAfG8CCfBCGF.6Ph7.jvfSEvNDGb.3KjHCrCAhICIhICQhICYxI.VTO..6PnnAnHwQCvNjJF.IRGEBrC8RICgSICETFfBDGB.HL+r.rCoj.PBDSG.HR4X.nwvwEPFSN..6PRYxPWgxPccxPlUxPxcxP8QxP+AEnEwQEPVjQO.HP9bVL1LCnxvgCCwwCPJCLBLDQ..XQ7LnWxPxCC4SFfJDGOXBGD.oPzbgInPDr.YyF.ZhMK.KP.cBPEAvPtkBPJAvPOMBPOAvPxXBPTAvPbXBPXAvP.XBPaYBPeUBPicBPpcBP+IEn4vQCPliTD.nPA0.r.UkI.QCJ.APfkATIl.DLl.TNn.jOl.TPl.jQj.TSn.jUl.TWl.jXk.TZl.zeUAXN9n.n6vwCPtiQCAJObDAj7rjL.tCOV.KPQcBPjb.nxvABNwAAPJSWI3DXK.KP.f.f7HjLxTzf3.pLbj.jxrUM.JCRBFAnOwQDP9jRr.nS7r.nQwgDPF0SPA3SBABnBwgAHwABPJjXGfjTU.XTA8CR.MnKfhDGN.IRP0BfHgTfqA5Pb7.jCgTD.JDOk.ZQb7.jEEkF.NzOLAJOb3.UbP.j77zATYFA.VTPBlGU8..nXwwCPhUSAl.fXIDCfFEGO.YTLInF.FUOh.JUbbAjTQTGvBjIl.zMi.DPb.pSbH.fT8yAvBzQH.oSM8Ar.4TC.xiNd.KPTcBPaAvPQTBPmAvPTbBP+8.fNA..f5DGg4ze..6PWzAnQwwDPFUSa.6PZTBPe0AnNAfBvBTS.LTGl.DQE.pRb3.jJ0TDvBjP.LjHF.XT8HBr.UD.CchI.gD.C0hI.sD.CEiI.4D.CQCI.AE.CUyI.IE.CciI.ME.CoCJ.QE.C4SCf5DGO.oSNo.r.QE.CQDI.4D.CwzF.pDOK.KP.AvPXcAnOwwC6vA.vBDJ.LTZD.4SNsvNCkBr.A..C0GG.5zNK.6P+w.f6DTf88DPH.pRbDAjJczV.pTNk.JObTASbH.j7bSCLwDK.xSPARFS9rAnHwQDPhzPzAHR9TAnGwgDPdTTd.pOb7.j97i..dTRChCnGwgCPdTUX.pLbDAf9vi.PJCP+.ZQbf.fG8SBPVDPv.XQAQBnGwwEPdDQeAZQbDAjEwTI.dDPgA5Mbz.j2Tj.fNDGQ.4PTA.fEoCBx3CK2PDgI.5Jb7AfCADAPtBIE9EfqPCKfpDGW.oRyTFr.ghH.cCJ.0yI.8SI.EzI.QDI.cjI.wjI.8TN.IkI.UkI.YUf+.zUn.JSbTAfJgBAPxDNJAZSbXAjMkyFvBjUm.HS2..r.E0I.Yj..1zOW.JQbn.r.oiAPRDQN.pObH.Mb.Aj9Pi.vBzIE.IMtzAfDMDAvBD.V.nO5v.M2HXefRDGDPCGD3CGI.IQD8.My.fO13CfDIzA93CBz7Sf4.ZQbTAjEoyM.VDPB.5QbLAjGMzYfVDGDPCGKvCGA.YQZY.M63.O93AfG4CE7HjBz.TfZUDO4.JQbDAjDwjdfVDGS.YQNA.nzvAA6vA..RzOQ.IM4.vN9LCf6.TFz.TfIUzMy.5QbTAjGgzM.dTQAFAnGwwA4vgEPdDNWjiDCREfGkiIfhDGMzBGP.IRvb.r.UBCP1RIa.KPvbBP4jAf4jhCvBTOl.DPl.zPl.zQl.TRl.DSl.zSZ.HRpv.r.EkI.MkI.E0I.oTBfhDGP.XKoT.jHwSBflCG..KP93Bj4rhBvBTLl.zKj.jLl.TMl.zMn.DNl.DNW.pRb3.r.gyAPpzOe.KPzz.fHcSDfxDGH.KPrz.jLsj..pzOW.KPdXBP.n.nEwQA.lCMH.pMbb.jEkDC.xzOD.oM0PDr.AxI.MRI.QxI.YxI.chM.VTLU.KPlnAnHwACvBDIH.IRI4Ar.EhI.A...ZyLn.5QbHvMbDAjGAEA2rCB.hDPBVBnHwQEPhDPG.3QdvCnJwQDPpTRE.HR6jDnuvg.CwwDPNzR.7ROH.3M5bgR97Gr.4gH.ARafdDGG.KPcP.fCkCBPdDRa.KP.TFnvvg.EwgIPBCP.TDTW.3Q+jwKvHnBEgyBfhDGS.IRFIEfv3SHfFCGI.DGO.YL3..PEI.fH0ifcAZQb7.f.ECBPVjOLAXL6XBnxvABCwA..VjNO.oL2.vPGM3I.JSKTApPbz.fCwCBPJDOK.pIbTAjl7RGvBzJl.TOG.nI67Ar.EjJ.UjI.oDJ.ME.CEFI.oE.CcSI.AF.CAvN.Q1I.k1I.A2H.8Wfz.ZNbz.j4DlB.JTPY.KPaUBP6bBP.LXa.AhI.IhI.QhI.cxI.kRI.sxI.4xE.liOG.5Nbj.r.MiAPtyQe.KP5XBP+jAn7vQCvBzPB.IOLQBr.Yj..tCPj.KPDEBnxvgAvBjJG.oLaA.nNwwCP5DXO.KP.H.f7HDLxHzfDApLb7.jxvzO.JCQBd.nOwwEP9DQs.nS8H.nQwQDPFkTVA3SAkAnBwA.HwwCPJzXBfjVd.XTAgBRAM3LfhDGM.IRVQEfH4SfX.5PbHAjCYzV.JTOO.ZQb7.jEsTH.NTP2.JUbX.Obb.jT4EB7jjI.VzOBVEUA8.nXwADPhUSAV.nQwA..hkPO.YTMQEr.8BI.oCJ.8iI.EDI.QzI.F0M..KPE4AnTwQBvBzPF.IUL8Ar.oiI.EBJ.A..CEwGf5DGG.KPpX.jNYkG.R0OB.KP7.vP.TBPCUBPIAvPQbBPOcBPXcBPfIBPkAvPTXBPZY.fNUiHvBDQ.LzEB.ZTbDAjQszDvBzIm.D.i.zIm.TN.LTFD.pRb3.jJ4DEvBTPG.HO7PPT9jAr.cD.CwgI.8jI.gEJ.UlI.IGI.8GUfxDGO.ISHkCnNwADP5jSE.nR73.r.AF.CMhI.MD.C8RB.xzO..5Sb.wNbD.jOcEC6PD.vBTG.LDPl.nSAA.r.A..C4DH.tCQF.6PYcxPjcxPvgyP4YxP+sEnJwwDPpzPdAnR6fvS1TBn7vgDPxiP..JSbTAjLQTK.xSQApBS.YDnHwwDPhzO+.HRE0CnGwwCPdzRg.pOb7.j93C..dzQCFDnGwADPdzRI.pLbPAjxDTKfVDGB.nO2TAjE8CF.dD...5QbDBfEITGPdDIzAZQbz.jE8j..dTPANPQ+3.nCwQCPNzTD.5Mbv.j2DzE.JyOsbyPD1CnqvQFPthKB.3P.U3QqvCUf9DGZ.4S5D3UvBDIm.zKl.TNl.TOn.zOj.jPl.TQl.jRl.zS3.jTm.TUk.zUl.TVl.jVl.zVKAzVm.DWAFAnQwwG.9TKF.YTj.EnRwQC.F0MJ.oT8XAr.oEI.MkI.kzI.JUO..KP9bAnJwAA2vACvBTLB.oREgvMrzAr.4AH.pTPG.KP.T3FfZDGDnDGQ.oQ2HfR9D3CvBjIl.jLn.jNm.TOk.zOk.TP6.zPh.3MfP.r.UDJ.cjI.kDI.ozEfJCGS.oL3HBr.czH.AjI.ACJ.8gI.ghI.YCI.0iI.EzI.QzJ.cjI.oDLfhDGH.nR9j.jHADBvBzQD.nQgj.nEwQFvBTRC.YQubAfH4CCvBzSa.XQ6r.r.gkI.40I.MVI.c1RfhDGA.KPj4.jHIzEvBjVf.pRbf.r.sTA.hzPH.oR9jAr.ciI.A.K.JSMQ.JRbDAjHkDAfNCGDTDGK.nR+f.jyLyAEYC.vBzGn.jMl.TPm.jRT.XQ9HAr.UE.CgmI.QF.CYFI.8G.CgkICcDJC4hICA..++B.PI2bUkaJ..PR....B....PFM.....nA...vQxElajAxTzUVZtcWX4ABQffBRg0lX0I2Yo...........vI2asYF...P.....A....D....f.....jQC.....Z....bjbg4FYfLEckkla2EVdfPDHnfTXsIVcxcVJ...f+X...............................PkQ+++++C....................fb4EFaP....H...............7+++++ar81bQ....D....P.....FA..........A....D...............D...............D...............D...............D...............D...............D...............D...............D....................v..B..fkF.......QP...f+jF....zS08unAJeK8KnH8ru.MfU9BfLN0CHRgnufy8.+B.Ay2KPdRuuX40F.CPNazKPf.qO.V3x9.iJW7K.tVfuv30i+xePY+KTZF0unTOH+Ptug9C.nzmu.1HN9Bd.T8Kf2spuHIaZ+H7eJ.DkFC3OfGMk9.yWp7C.IKeO.Uj.+B.hh4qltbAP3DQw+frI19KaGc3OXYo6+fREp+iJTIBPTYnw+vqJzADfTM1OfdZt+Pi0T9iWVAHP7RVF.A3bE1CX9rpO.xyB9RolO+C97q3OPOmt+.fMl+ikFyAPR8iO.gF5i.DvJnBP3oIY+.nKH6Kb9n+u.q6K9H6VQ.DBP68u7hU0+X3VE.DbLT4OnbkY+.+lp8qb4OEP7dyj+vEdQ.LfWoau9prC.ojzt.jhNV.P.z808B8TI9iNFsEPTp45+.V6b6C.3kyuvwDp+RYf9.LSOy6uP1xt+xLx59KAsN6OZhfX.AUpI9K3q.5ujJHg+nFRh.j.jaEPTErj+fHHl.DXjP1O.Y1R9Bq4+.DFhFCPwa8j.o5XSAD+VPCPDLLo+.qLI7CHYq.PC....D...............L....................v.....................C....D....P.....A........9C.....A.........P4+IhOC.H...VZ.......DAA...9SZ....UYZR+zHxyvzOC1ezN8ifXFXT+7PSCQ0OSewU+z9+Y8Ca7y0Om3.X+LfMi8S8zY1O6ubZ+LfMi8Ca7y0OMMDU+z9+Y8yIN.1OCXyX+TOcl8S8zY1OBr+xo8SJ7z1OovSa+HvlFC2OGxFc+bHaz8i.u7Bd+r9C78y5Ov2OMXAB.9is5P3Oj6lg+DisH9yLB13OYj.j+P3oR9CwdU4O80wl+rAJd9i2QE5OuxIo+voBn9CmJf5OMbdmq9C+X85OE5yr+TVT29SHL.7OAsKw+TkoI+S+Q67OMMD0+z9+Y+yIN.9O0Sm4+jBOs+SJ7z9OAbHaz+ygrQ+OAr9C7+y5Ov+OBtKFB.zfj6lA.MY...................Jv...n.A..1JD.....C.H...E...mPA.........................P...................Jv...n.A....v..B..fI.......fZP..fqBI..........AN.f...XB.......nFD..3pPB........9SfAB........fzD..................f....+....9y..B..PA..vIT..........L.f...XoA......PDD...3OoA........r....f+B...AL...DvD....AD....P...v.A...9C...3OF....CD...DP...f.A....L...Dv...f.A...BDB...n.A...CD...HP.........9C....v...f+....AL...DvC....AD...HP...n.A..fBjA...P.C..fBD..........A...AL...JP...n.UA...DP...f.A....D....v...f+....BD....P...n.A...AD...Dv.........BD...Dv.........9C...3u...P.C..fBD...Dv.....C..........E...fBD...Dv.....C...9K...Dv...P.O....JP.....C...AL...DvO....BD...3O...P.C...BD........f.A...9K....P...n.A...AL...3u.....C...CD...JP...P.C...A7......C...9C...Dv...P.G....3u...f+R....LP...f.A...AL..........b....3O...P.C....L...LP...P.C...CD...Dv...P.GH....PC.H...E...mPA........9i.....A....TE...PQwUWXrABck0FbkIWXsUlazo.UnUFHyQWXtQVXxQFHzUmao41Yr.xcnUlbkABcnUFHuMFcgYWYfj1bfPVZ1kFYkQFHo4FHwHCHkEWcgwFHyQWYvMmKL.......HKD..fzP..fkCA..HOD..n+P..fEDA..uPD..fDQ..PXDA..5QD..lHQ..fkDE..........D.......bODO....EA...XD.....+A........vA....DUlYgUGazA..........B....L.f...XoA......PDD...3OoA.........5..............3OA....D....P.....L....L.f...PK........9C...fP...ABA..fHD..PhP...PBA..DID...mP...cBA..DKD..XrPK.......fBTf...f.EH...DPAB....Tf...f+DH....P.........9y..B..fI.......fZP..fqBI........3OAN.f...XoA......PDD...3OoA...LD8N9CZZr8f+bzt48irBC4OzFrY+.O2u8ipqL3Oyhhj+v2FJ9C0XO3OuBGf+rYik8ipoL4On0dj+7fGy8S7BR3O6wfZ+37Sb8i.L02Oy+sl+7spP9itKa2ONmPY+D13q8Scvh3OsCEg+XstZ8yPcb2OP8ue+Lvb18Sr6p0OUlxY+HkuR8io7h3O+rlb+nF+O8iwzP4O8A0V+.8Vs8SJZl0OzNef+bQPj8yy0B4OSDWZ+z7T38SIB42OTyOg+3wie8Sm.u1O1z3f+jDeC9SfiB4OEDYd+T67B9y5Xo2OJpFg+78C08yM2B3Oj.Ei+THI.9SDEv1OdiVc+7bRs8y9Hm1O.qjX+rfpF9iFMk3Oq.qZ+.OwE9iBWt1Otwoh+fNxc7iKKb3O+PLY+rpsx8SWdc1Ovdrg+XmH18SUeG1OW4If+nBq08CZjO0OI.ae+71cF9iJtk2OtiOZ+79lx8CzcN3OqUEZ+b96r8iECo1O7mVh+TJYD9C4Rm1ObMZV+bB1B9yTbKzOaBbi+faww8SBMo3O4p9Q+rjHM9Ccry0OzcLl+n9RQ9y..B..PA..5QT..........L.f...T..fdDE........3O.....L.f...T...bBE.............f+L.f...T...bBE..........A...............MyLy81LyL2S...................vu....+....9y..B...M.......fZP...bBA..XKz........f+HH.....C.H...l........pAA..tJj..........DH...3OC.H...l........pAA..tJj........f+DH...hPC.H...DB.......pAA..PJD..fpP...sBA...KD..vrP...1BA..hKDB.........HH...3OD....AD...LP...HAA...ED...3OC.H...z........pAA..vID..fsPC........9ifC.H...l........2BA..bKj..........G......A....L.f...XB.............3OB.........P....f+L.f...XB.............3OB........9SfC.H...DA.........vvjI4i898yO...f+P..........AB...9SfC.H...l..............9i..........DH.....MyLS9....................7C.....MyLK.M.f...XB.......nFD..3pPB........9SfMyLK.A...7y..B..HE........3OA....D....P.....J....LUagwFaffTXrw1B....sUFYoUWanEFarEC...HP...nAA...9SyLy3O.....zLyL0C.....MyLS9.....vLyL6O..vqCA...9C...3OA....X........3O...f+L.f...XoA......PDD...3OoA.......9yjw0ih+.QgqG4O1iBm+vdTX9yiBW4Ow0ih+nYlY9yiBW4O6Qgi+7nvU9ilYl4O35Qo+zLyL9iBWO5ORgqm+nYlY9y0iB4OWOJj+TAtdT5Oov0i+DtdT9SOJb4O6Qgi+7nvU9CRgq4O6Qgq+35Qg9C...3Oov0i+HEtd9C...3OgqGk+7nvU9yGEt3OOJbk+T35Q9y0iB4OMyLi+DtdT9S35Q4OmrGEN9Sb8n3OOJbk+Lb8H9C6Qg4OMyLi+PgqG9yGEt3OrGEl+HEtd9ydT33OtdTn+jBWO9ilYl4Ob8nn+nv0i9iYlY5OjBWm+LyLS9yiBW6ORgqm+nYlY9ilYl6O35Qo+...f9SyLy5OZlYt+PJbc9CRgq4OMyLq+ziBW9SJb83OCWOp+ziBW9Cov04OZlYl+DWOp9CRgq4ORgqm+HEtd9SAHEtl+rGEt9S35Q4O1iBm+PJbc9y..B...M.......fZP...bBA..XKz........f+HH.....C.H...VW.......pAA...9SW.........bXLZVNuTgT3H06EUcPu.kQX7.sP306WXmTOvZSR85cNhmK1UoZutf6Z8hSHSny0iAHuVrMg8RjTEzCpI9HOBdIr55Nup1ijhWau0Fut8nMaI0yPuDZOjawp61KBu0KA+AZuWycq8tcEc1ygCNTO7VPk8JSMFyS16EauQEtq7xHixyCc+GbOaYtM6ZlXOpKDonaObe1r8.hKZ1SozJQuN+cg71Xx1xiTGgJOJQit8HG4m0atZ.XO+WSq8RcYc1ShczEO133V83JWP1qNo2UufAVn7v2gF0SDmoPONl0.8rA+VuiwTGKuWgwd8D.Fk0aG7ILOynII89DLR0aRuoSu26jS8v1z11Sx1dRuUrTo8ziWc1SQsnWu9PJd8TY4eyaGgeIukDLi83mRYmiY2ebOZkUH8T4RNyy.OvYuZq4Z8xVvR1CJy.OOk76r819ne0iQ76XOvlOP8F..........A........7C....PC........9C...3O...f+L.f...PC.......nFD...mP...1BM........3OBN.f...PC.......nFD...mP...1BM........3OBN.f...PC.......nFD...mP...1BM........3OBB...9C...3OG........9ilYloOMyLS+zLyL+ilYloOH..........................fYloO................C.H...VZ.......DAA...9SZ....I.Zo+fFzdH4ODz8i+7E9R9SsMb3OoiAf+vY9A9yeTu2OGv8Z+zWbM9yNTc1OzaEX+zOqu8ikWg2OruVc+XaAz9irOo5OKh2h+DYnz8iYJS2OzLWl+HyIV9yYlT3O7xJj+TsRL9CMy.2OvlUf+vAXJ9yDxx3O..tj+L91f9i8Bo4OvU1Y+zewD9ihH80O2cuc+D.vQ8Su6ZxOrplO+fXWK9ShHUxOeYXf+nInd9ihBe5OF+0P+.TB38i3YA6ONuOm+7qOO9Chvh2O9X2j+.j1G9S3Eg2OdK6b+D15E9izov2Od7Wd+7tNU9SuE+5O3Npu+TgWY9y.2n2OmYhn+XinD9Su2K3Oc3tg+74MR9yYlN4OZl4Q+XloS9SyLB8OmYhn+zLaD9ilYX0OcQFe+blYF+S..f4OKSyT+rmSW8i3Q33Oizju+jLtF+S..H8OMyDq+zLCk9S..25O+2Wa+br7Y8SHYO6OEttq+.DOU9iCP.3OG6HY+PNdM9ihYg1OvZzi+Dz3T9SGVs2OXMsY+jsja8CEUK1OB7Uc+rQ2I9CJZp4OrtTf+L.f...PC.......nFD...mP...1BM........3OBN.f...PC.......nFD...mP...1BM........3OBN.f...PC.......nFD...mP...1BM........3OBF....PZ.......DAM.f...XLD............3OLD........v+.....7O.....KB..fDz..B..fIP............f+HP.........+C....v+.....DH...SPC.H...F9.............9C9.........7O.....2C...Ez..B..f8N............f+7N.........+C....f6...TAM.f...XqC............3OqC........v+.....nN...VPC.H...13.............9y3.........7O.....hC..vEz..B..fkM............f+jM.........+C.....1...fAM.f...XSC............3OSC........v+.....HM..fXPC.H...Fz.............9Cz.........7O.....OC..PFz..B..f4L............f+3L.........+C....Py...lAM.f...XKC............3OKC........v+.....nL...ZPC.H...lx.............9ix.........7O.....IC..nFz..B..fIN............f+HN.........+C....P3...rAM.f...XZC............3OZC........v+.....jM..faPC.H...Vz.............9Sz.........7O.....PC...Gz..B..fwO............f+vO.........+C....v9...xAM.f...XnC............3OnC........v+.....bN...cPC.H...V1.............9S1.........7O.....XC..XGz..B..fkL............f+jL.........+C.....x...3AM.f...XaC............3OaC........v+.....nM..fdPC.H...l4.............9i4.........7O.....kC..vGz..B..fYM............f+XM.........+C....P0...9AM.f...XJC............3OJC........v+.....jL...fPC.H...1v.............9yv.........7O.....BC..DHz..B..fwL............f+vL.......7uA...f.D...BPA....+C...7OYNyLy9SBlYlo+nYlY9C...3OyLyL+....7ilYloOMyLS9zLyL2C..........7O.....iB..HHz..B..fIM............f+HM.......JvA...........A.....L....vAB...Ab...........v+.....jL..vfPC.H...lw.............9iw.........7O.....EC..PHz..B..fQL............f+PL.......DvC.........Dv..........v+.....7K..PgPC.H...Fw.............9Cw.........DH...DvA...........+C....vu...FBM.f...XDC............3ODC........v+.....LL..vgPC.H...1p.............9yp....lYlg+J....Dv..........v+.....bJ...hPC.H...1p.............9yp.........7O.....pB..jHz..B..fkJ............f+jJ.........+C.....p...JBM.f...XSB............3OSB........v+.....HI..vhPC.H...1j.............9yj.........H....Hv..........f....P.C..........NB...Abf.....zN..fdPA...........KB..vHz..B..fMI............f+LI.........+C....fj...MBM.f...X.B............3O.B........v+...NBM.f...X.B............3O.B.......AT...........vh...P.G...........vH...DvA...........fC..7Hz..B..fAH............f+.H.......DPC.........Dv..........v9...PBM.f...XrA............3OrA.......BTA.....A....L...3O...f+B...9C...3OA...........BB....b...........f2...QBM.f...XrA............3OrA...XlYF9a...........ffyLy..G...........bH...DvA...........ZC..HIz..B..fwF............f+vF.......3uA...........AB...Ab...........ff...P.G............N..vjPC.H...lY.............9iY.........T....DP...P.C........Jv..........ff...f.G...........nM...kPC.H...1U.............9yU.......P.UvLyL.P...j.C........Dv...........z...UBM.f...XWA............3OWA.......+Sf.....HH...DvA...........B....AL..........vL..fkPC.H...lU.............9iU.......f+T......lYlw+....ArYlY7O..........f....P.C..........BB...Bb...........vw...WBM.f...XIA............3OIA.......9af...P.I.YlY3ulYlg+XlYF9y....P.MyLC.L..........7K...lPC.H...VR.............9SR.......v+R....Dv...v+....+K..........LL..PlPC.H...FR.............9CR.........D....7u...v+FH.....AB...Bb...........vu...ZBM.f...XDA............3ODA...XlYF9y.yLy..C...9C..........bH...DvC.........Dv...........h...P.KH.....mB..rIz..B..f4C............f+3C.........B....AL..........nK...mPC.H...VN.............9SN.......v+D....3u...f+FH.....C....AL...3u...........r...cBM.f...X4.............3O4....XlYF9SfB..P.K....3ulYlg+XlYF9i.G1LS8B..........vB..3Iz..B..fYC............f+XC.........BB...9y..........BL..........LH...DvB.....D..........bJ..vmPC.H...VL.............9SL.......f+D...........DH...DvAB....fp...fBM.f...Xv.............3Ov.........vq..ffBM.f...Xs.............3Os........9SA.........9K........f+B..........DB...Ab...........vm...gBM.f...Xq.............3Oq........9Sf.....G....3u...f+F...........TH...DvAB....f....P.C..........YB..FJz..B..fcB............f+bB.........lB..HJz..B..fYB............f+XB...fYlY3uAB...Azf.....TH...DvA...........WB..JJz..B..fQB............f+PB.......3uA....9C...3OBH...AL..........3I..vnPC.H...lH.............9iH....6++++Vv+++GPxLy..A....vLyL.v..........vl..fiBM.f...Xf.............3Of....H...Ab......A....DAlYlg+XlYF9K....P...........l...jBM.f...Xc.............3Oc..........m..fjBM.f...Xb.............3Ob.........vl...kBM.f...Xa.............3Oa.........fl..fkBM.f...XY.............3OY..........l...lBM.f...XX.............3OX........9a...........f.MyLi+...........RB..ZJz..B..fYA............f+XA...fYlY3OC.....j...DPxLy..KyLC.b...........vi...mBM.f...XU.............3OU.........f....f+...........QB..dJz..B..fQA............f+PA.......3uAB...Ab...........vi...nBM.f...XS.............3OS.........b...........vf.....G...........nH..HpPC.H...lD.............9iD....fBrO.MH...7uA...........KB..jJz..B..fEA............f+DA...fYlY3OF....9qYlY3O.....A........3O..........Ph..foBM.f...XP.............3OP.........zAlYlg+nYl49K........v+B........7u..........vg...pBM.f...XO.............3OO.........fi..fpBM.f...XN.............3ON.........Pi...qBM.f...XM.............3OM..........i..fqBM.f...XL.............3OL.........vh...rBM.f...XL.............3OL.........vh..frBM.f...XK.............3OK.........fh...sBM.f...XJ.............3OJ.........Ph..fsBM.f...XJ.............3OJ.........Ph...tBM.f...XI.............3OI..........h..ftBM.f...XI.............3OI..........h...uBM.f...XH.............3OH.........vg..fuBM.f...XH.............3OH.........vg...vBM.f...XH.............3OH.........vg..fvBM.f...XH.............3OH.........vg...wBM.f...XH.............3OH.........vg..fwBM.f...XH.............3OH.........vg...xBM.f...XH.............3OH.........vg..fxBM.f...XH.............3OH.........vg...yBM.f...XH.............3OH.........vg..fyBM.f...XH.............3OH.........vg...zBM.f...XH.............3OH.........vg..fzBM.f...XH.............3OH.........vg...0BM.f...XH.............3OH.........vg..f0BM.f...XH.............3OH.........vg...1BM.f...XD.............3OD.........vf..f1BM.f...XD.............3OD.........vf...2BM.f...XD.............3OD.........vf..f2BM.f...XD.............3OD.........vf...3BM.f...XD.............3OD.........vf..f3BM.f...XD.............3OD.........vfb2K28L.f...PV.......PDD..fZP...vAA..fGD..fdP....BA..HHD..fgP...IBA..vHD...jP...SBA..fID...mP...fBA..HJD...oP...lBA..fJD..fpP...vBA..XKjE....uYPH+P.sky3OjN0i+Py0Q9iZpE4OpoVj+HX6A53OAnlZQ9iZpE4ODzdfN9il1t3OsGni+nosK9il1t3OA955W8Sfa0dQ+Hv4llxOAMX69D..........A....LyLy7iYlY5OA....D....P.....CWOZ+zLyL9S..........D....vLyLyOlYlo+D..........A....LyLy7iYlY5OA.........P.....yLyL+XlYl9S.............vKD.....N........7SyLybOMyLS9....7y..........L.f...RA...............C.H..fT..........P....f.....C....P....P.....A........9C...3OA....D....P.....A....D........3O.........BD..PqPFA....v..B..HE...............L.f...RA....................L.f...RA...............C....b....P..........3.....D.........7nv00C...3O.........7K...mP.....................................................L....fB....A.........fC....P............frP.........7C....P..fkCA...9K...vO...f+..PbTD...3O....+....AD...............v.....J....D..........N.....A............xBA........3O.....A..5OD........f+....9C.fxXQ.....MyLy7C...DP................A....D........3O...PAC....v.....C.........P.....E....P....P.....C....XOJb.TqGE9O...v+...gML.....C....T........3O...bBC...KL...rv...vBW...............................T...............................D..........D....D....v........H.oLyL8C...7O...MBA....v.....E.......vIL...3O...vBC...KL...rvE.........vE2FUN................E...............................A..........A....A....L.....zQgqOcT3p+jBWO9CNcMtPeQ+gCU....PA.......HAC...GL...mv...bBC..vIbA....WbaT4bwsQkC...............PA..............................P..........P....P.....C....7Qgq6iT354Oov0i+...hKD..HqvE....T........bv...HAC..vIL...mv...bBW..........uIw.5................T...............................D..........D.........v.....35Qw+ziBW8iqGE9O................E.......vIL...mv...bBC..vIL...mvE...............................E...............................A....................D....v.....RgqG+vdT35qYlY5O...jAA...............D.........."
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
                                                        "blob": "16227.CMlaKA....fQPMDZ....A.Ec3DG.HPv.....ffjPfLEckkla2EVdfPDHCwVXyMWZiEFa.........7yIPImUKkB..H.VFQETW7C..n....fLvHiMu.CMuDCLW.....UZg41azUVbffiKz3xLuHCLxTCL1DyLPKWRt.pMWj9F2MCb2NwReQFarEl09...zQFcM0PE..vE....HIDHSQWYo41cgkGHDAxPrE1byk1XgwF.....G....zzajElbzQmP....TgVZyABbxU1bkQGHuYlYkI2bfDFHBEDHsk1Xo41Yf.WYxMGbkMFcoYWYfbWZzgFHgAxXrE1byk1XgwFHy8VctQlK.....PT...vE....HIDHSQWYo41cgkGHDAxPrE1byk1XgwF.....xQA..bjTUUE...fA....AL.vMQkbqA..TvE.+KfFffTX4QlafzBHS8lagQWXfjlafbDHsElZuI2PvNjdBNCfxjSGfdDGX.4QAIGr.MBI.UyI.0yI.8yI.EjI.QD.CwmI.gjI.wD.C4mI.8TI.A0I.E0I.IUI.M0I.QUfV.jUp.zUQ.JRbTAr.ckAPhjLe.KPWoAnJwwBvBzTH.oRBI.fGcRGvBTRn.zNC.HR87Ar.MxCfNDG..nR+X.n6vQA2vAAPNjQFriMB.KP.P.j2fSM.tCO.LTQDbSOCx.n6vgA2vwCPtiN..5PbH.j2TyCCETO.tiP.LzPHbSPAZDnEwQEPVjPLAXQ.AAnGwADPdzQTApLb.PQbX.Ob7.jxXi.EkD.7nyG.dDPVvSPFHSOAlVQ+vAnCwADPNDQkA3P2b.nxvgB7vQCPJyMGvSMF.ZQbLAjEIjL.JSP.viPBtCnGwgB.VzNH.4QAEHH.djOc.5MbnvPb7.j2bB.ftCGD.4P7PwNvbDr.oBH.tCPF.KP9DAf2ziDvBjPN.3P.cAr.czI.wzI.E0I.UEI.k0N.skfG.TVl.DUn.zSl.jSp.TSf.DSm.TRk.zPk.jNn.jJl.D.lLDTB.JRb..Sbr.jHgDALEUEvND.N.HREIXEf5DGW.oS+..fLkCKf9DGW.4SIACnGwAEPdDP..pRb.AjJcD..9TPB3zOjbzPWnTQCd.nHwg.EwACPhDPBTjPP.6PQ3AfEIjKvNTElLDFnLzFeMjGm.pRb..rCABEPpjMB.HR2v.rCQBJCkh.fxDGU.ISCEArCsBH.pTOF.6PrDAnCwwCGwA..xTP..4PCY.rC0RBPdTQY.6PwX.fCMTHvNDNC.3Q.IBrCwyIC4CJC4iRC8iICEDICMjICQDJCQzCfdDGR.4QKY.rCYDHfBDGE.6PLI.n7vABPBjQMvyMN.6PUMAfG0yCfVDGE.6Pd4.jEIzEvNTYO.5Qb.AfEAD.fdD..bDGG.6PtEAjGIzEvNzclLze+.HOmX.nEwwCPVDTI.3QA4EnCwA..VDPS.4PLMAn8vwDP1iPM.HP.gSOAMHBCYSCfpDGX.oR8L.nBwAA9vQDP5SNFHDLpAnO1L3CvBDIb.pLbf.r.Ei..JjLT.oLn.Ar.kiI.wSD.JSNW.KP9XBPAYBPCYBPGYBPJUBPLcBPOIAfJoSEvBTU.Ljdj.zW.LjXj.TX.LjPl.jS.LDFH.pRbrfObP.jJkE.fJDGH.oOQMfPNQ.r.IC.CAvI.A.E.5CQ.HjQCtBnBwAB9vAAPJjSE3CR0.nPFAgOCEXNJsyAfxDGP.ISJMCnNwAB.xzPG.oSMsFnLwQBPxjVa.nS.o.n9vA.CwwCP5CPVLjPR.HS+vwPCkgO.M3.fNDGL3CG.vDGC.4PKofOHA.SaUCfCUDBLMzB9Hzfh.5PbTPRbr.jC4D.IgkAfBDGH3CGG.IPCgfOAsAfCcDG.MDAvBDOI.nO+zAr.AkH.k0I.0UfX.jWl.TXr.XRrXDr.4UIfNDGB.KPY8.jC0iAfBDGC3CGDnDGI.KPSY.j.Ai.9TC.J8yGvBzSM.3PBw.P8r.r.szA.5yOe.KPGoBPCU.nLwgB.pzNJ.ISC0.r.8CJ.sCAf5DGS.oSHs.r.oyI.gCCf9DGR.4SMkAfL8CAvBTLm.D.a.ZTb7.jQUkA.5TPH.pObHfPbz.jBoz..9DQ..oO7v.fQkDKBUzD9.jfrApObffPb.PTb7.j9zC.Qok.BEzJ.FEQHHTPS3CPCJAn2vgBPdSRB.pOb.vTbz.j9DD.Sc0K.dCQ.3CPT.KPcTBP3bBP+XBPAYBPEYBPKYBPScBPWUBPXkDfS0i.vBTUh.JVbX.r.oj.f5CGFbCGA.IVUYfOGIvMEUAr.wSF.dCPG3SPF.KPoHBP.rAnVwwCPZUTi.6PUXxPY7.nUwQEPVERH.6PczBfX4iKfNEGQ.4TK0AfV8CHvNDHd.XU+f.rCMhICkB..NEPW.ZTbz.rC4h.f5CGF.YT.8fO5.Ar.IB.CESI.5iO..KPy.vPwbBP6fBP+.vPxXBPCAvPzXBPFAvP4XBPJAvP5PBPLYBPM4DPLAvP6LBPJAvP7LAnUwwA.FUOH.YUGQ.r.YD.C8CAf5CGO.oO+LAr.ID.CIzEPdiIO.KP7.vPFMAf9Dj.fNEGQ.4THA.r.cC.CkzF.diHK.KP0.vPKYBP0.vPKQ.fU0CBfFEGQ.YTFk.r.MC.C0TG.NEPH.KPv.vPQQBPs.vPUk.nOwQEP9TS..XT+f.r.kB.CoEJ.cB.C4kI.YB.CM1G.9jPG.KPi.vPqcAn9vg.4vQCvBzG.LzbB.oO+XPN7P.nNwQEP5DQF.KP..vP6UxP+UAfNIzfI.pSbbAjNMjAf1CGI.nOyf.j87yL.5zPJ.JSbDAjLcTO.xDQ2.pSb7.jNQ0afxDGP.ISLkAfN0yR4zCG83CBLADAfpDGS.oRKc.n9vwDP5CN6.nO8LnPfJCGa.oLrrCfJYSgJHCI4.pRbLAjJoSf4.KPhTBPuvCP3XBP7HBP9XBP.YBPCwBPFYBPIYBPLcBPMMBPOcBPQcBPQ0DfJYQMfxDGY.IS2jDr.A0Af1DGY.YS5b.r.4zH.sjI.YjH.xTOD.KP9P.fM8yDfRDGM.KPvH.jD8DIvBDHN.pObb.MbH.fDUjBP5yKEPSKB.KP.vCf9XSBzXifSAJQbP.MbbfObX.jDwzCzPC.9nCS.5yOBPCPePjOAhBnEwgEPVTQ.A5Qbb.fEATCPdzQVAJMb.PQbr.Obn.jE0j.zbCB7bCS.dTP.viOIPSNA5VQ8PAnDwQDPRzSxAJMbrvNb.Aj63y.znBCfVDGT.YQFQ.fDsyI6HTBz3SfiUDO0.5QbDAjGcTN.djQKAZNbvAj4zxEfdDGT.4QBMHV.dzNy.ZKbn.RbTAjsPhAH8RDvBzJO.XNvTAr.ciI.0CJ.AjI.MjI.cTH.hzKA.KPKYBPMoCPOcBPPcBPPQBPM4AfsjBBvBzPe.JRbb.r.ACAflCGD.IRB8PN77.r.APfmAHRg.CnLwAEPxjPmAZQb.AfL4y.PVzQ..XNzHBn1vAEPZiMAtBfEA..PVjDqAJRb7.jHQD..VzNvYyNe.5Qb7.jGYkBfdCGS.HR8D.j2fSf7A3Q9jAnJwwCPpTRAN.nCwgCPNjSH.nR9z.nuvgEP9BMJ.3MvHHGvNjdL.5QbH.fC4CDPdzQJ.6PoYxPaQxPOcxPAcAnEwwCPVjR..6PvPAfG8CCfBCGF.6Ph7.jvfSEvNDGb.3KjHCrCAhICIhICQhICYxI.VTO..6PnnAnHwQCvNjJF.IRGEBrC8RICgSICETFfBDGB.HL+r.rCoj.PBDSG.HR4X.nwvwEPFSN..6PRYxPWgxPccxPlUxPxcxP8QxP+AEnEwQEPVjQO.HP9bVL1LCnxvgCCwwCPJCLBLDQ..XQ7LnWxPxCC4SFfJDGOXBGD.oPzbgInPDr.YyF.ZhMK.KP.cBPEAvPtkBPJAvPOMBPOAvPxXBPTAvPbXBPXAvP.XBPaYBPeUBPicBPpcBP+IEn4vQCPliTD.nPA0.r.UkI.QCJ.APfkATIl.DLl.TNn.jOl.TPl.jQj.TSn.jUl.TWl.jXk.TZl.zeUAXN9n.n6vwCPtiQCAJObDAj7rjL.tCOV.KPQcBPjb.nxvABNwAAPJSWI3DXK.KP.f.f7HjLxTzf3.pLbj.jxrUM.JCRBFAnOwQDP9jRr.nS7r.nQwgDPF0SPA3SBABnBwgAHwABPJjXGfjTU.XTA8CR.MnKfhDGN.IRP0BfHgTfqA5Pb7.jCgTD.JDOk.ZQb7.jEEkF.NzOLAJOb3.UbP.j77zATYFA.VTPBlGU8..nXwwCPhUSAl.fXIDCfFEGO.YTLInF.FUOh.JUbbAjTQTGvBjIl.zMi.DPb.pSbH.fT8yAvBzQH.oSM8Ar.4TC.xiNd.KPTcBPaAvPQTBPmAvPTbBP+8.fNA..f5DGg4ze..6PWzAnQwwDPFUSa.6PZTBPe0AnNAfBvBTS.LTGl.DQE.pRb3.jJ0TDvBjP.LjHF.XT8HBr.UD.CchI.gD.C0hI.sD.CEiI.4D.CQCI.AE.CUyI.IE.CciI.ME.CoCJ.QE.C4SCf5DGO.oSNo.r.QE.CQDI.4D.CwzF.pDOK.KP.AvPXcAnOwwC6vA.vBDJ.LTZD.4SNsvNCkBr.A..C0GG.5zNK.6P+w.f6DTf88DPH.pRbDAjJczV.pTNk.JObTASbH.j7bSCLwDK.xSPARFS9rAnHwQDPhzPzAHR9TAnGwgDPdTTd.pOb7.j97i..dTRChCnGwgCPdTUX.pLbDAf9vi.PJCP+.ZQbf.fG8SBPVDPv.XQAQBnGwwEPdDQeAZQbDAjEwTI.dDPgA5Mbz.j2Tj.fNDGQ.4PTA.fEoCBx3CK2PDgI.5Jb7AfCADAPtBIE9EfqPCKfpDGW.oRyTFr.ghH.cCJ.0yI.8SI.EzI.QDI.cjI.wjI.8TN.IkI.UkI.YUf+.zUn.JSbTAfJgBAPxDNJAZSbXAjMkyFvBjUm.HS2..r.E0I.Yj..1zOW.JQbn.r.oiAPRDQN.pObH.Mb.Aj9Pi.vBzIE.IMtzAfDMDAvBD.V.nO5v.M2HXefRDGDPCGD3CGI.IQD8.My.fO13CfDIzA93CBz7Sf4.ZQbTAjEoyM.VDPB.5QbLAjGMzYfVDGDPCGKvCGA.YQZY.M63.O93AfG4CE7HjBz.TfZUDO4.JQbDAjDwjdfVDGS.YQNA.nzvAA6vA..RzOQ.IM4.vN9LCf6.TFz.TfIUzMy.5QbTAjGgzM.dTQAFAnGwwA4vgEPdDNWjiDCREfGkiIfhDGMzBGP.IRvb.r.UBCP1RIa.KPvbBP4jAf4jhCvBTOl.DPl.zPl.zQl.TRl.DSl.zSZ.HRpv.r.EkI.MkI.E0I.oTBfhDGP.XKoT.jHwSBflCG..KP93Bj4rhBvBTLl.zKj.jLl.TMl.zMn.DNl.DNW.pRb3.r.gyAPpzOe.KPzz.fHcSDfxDGH.KPrz.jLsj..pzOW.KPdXBP.n.nEwQA.lCMH.pMbb.jEkDC.xzOD.oM0PDr.AxI.MRI.QxI.YxI.chM.VTLU.KPlnAnHwACvBDIH.IRI4Ar.EhI.A...ZyLn.5QbHvMbDAjGAEA2rCB.hDPBVBnHwQEPhDPG.3QdvCnJwQDPpTRE.HR6jDnuvg.CwwDPNzR.7ROH.3M5bgR97Gr.4gH.ARafdDGG.KPcP.fCkCBPdDRa.KP.TFnvvg.EwgIPBCP.TDTW.3Q+jwKvHnBEgyBfhDGS.IRFIEfv3SHfFCGI.DGO.YL3..PEI.fH0ifcAZQb7.f.ECBPVjOLAXL6XBnxvABCwA..VjNO.oL2.vPGM3I.JSKTApPbz.fCwCBPJDOK.pIbTAjl7RGvBzJl.TOG.nI67Ar.EjJ.UjI.oDJ.ME.CEFI.oE.CcSI.AF.CAvN.Q1I.k1I.A2H.8Wfz.ZNbz.j4DlB.JTPY.KPaUBP6bBP.LXa.AhI.IhI.QhI.cxI.kRI.sxI.4xE.liOG.5Nbj.r.MiAPtyQe.KP5XBP+jAn7vQCvBzPB.IOLQBr.Yj..tCPj.KPDEBnxvgAvBjJG.oLaA.nNwwCP5DXO.KP.H.f7HDLxHzfDApLb7.jxvzO.JCQBd.nOwwEP9DQs.nS8H.nQwQDPFkTVA3SAkAnBwA.HwwCPJzXBfjVd.XTAgBRAM3LfhDGM.IRVQEfH4SfX.5PbHAjCYzV.JTOO.ZQb7.jEsTH.NTP2.JUbX.Obb.jT4EB7jjI.VzOBVEUA8.nXwADPhUSAV.nQwA..hkPO.YTMQEr.8BI.oCJ.8iI.EDI.QzI.F0M..KPE4AnTwQBvBzPF.IUL8Ar.oiI.EBJ.A..CEwGf5DGG.KPpX.jNYkG.R0OB.KP7.vP.TBPCUBPIAvPQbBPOcBPXcBPfIBPkAvPTXBPZY.fNUiHvBDQ.LzEB.ZTbDAjQszDvBzIm.D.i.zIm.TN.LTFD.pRb3.jJ4DEvBTPG.HO7PPT9jAr.cD.CwgI.8jI.gEJ.UlI.IGI.8GUfxDGO.ISHkCnNwADP5jSE.nR73.r.AF.CMhI.MD.C8RB.xzO..5Sb.wNbD.jOcEC6PD.vBTG.LDPl.nSAA.r.A..C4DH.tCQF.6PYcxPjcxPvgyP4YxP+sEnJwwDPpzPdAnR6fvS1TBn7vgDPxiP..JSbTAjLQTK.xSQApBS.YDnHwwDPhzO+.HRE0CnGwwCPdzRg.pOb7.j93C..dzQCFDnGwADPdzRI.pLbPAjxDTKfVDGB.nO2TAjE8CF.dD...5QbDBfEITGPdDIzAZQbz.jE8j..dTPANPQ+3.nCwQCPNzTD.5Mbv.j2DzE.JyOsbyPD1CnqvQFPthKB.3P.U3QqvCUf9DGZ.4S5D3UvBDIm.zKl.TNl.TOn.zOj.jPl.TQl.jRl.zS3.jTm.TUk.zUl.TVl.jVl.zVKAzVm.DWAFAnQwwG.9TKF.YTj.EnRwQC.F0MJ.oT8XAr.oEI.MkI.kzI.JUO..KP9bAnJwAA2vACvBTLB.oREgvMrzAr.4AH.pTPG.KP.T3FfZDGDnDGQ.oQ2HfR9D3CvBjIl.jLn.jNm.TOk.zOk.TP6.zPh.3MfP.r.UDJ.cjI.kDI.ozEfJCGS.oL3HBr.czH.AjI.ACJ.8gI.ghI.YCI.0iI.EzI.QzJ.cjI.oDLfhDGH.nR9j.jHADBvBzQD.nQgj.nEwQFvBTRC.YQubAfH4CCvBzSa.XQ6r.r.gkI.40I.MVI.c1RfhDGA.KPj4.jHIzEvBjVf.pRbf.r.sTA.hzPH.oR9jAr.ciI.A.K.JSMQ.JRbDAjHkDAfNCGDTDGK.nR+f.jyLyAEYC.vBzGn.jMl.TPm.jRT.XQ9HAr.UE.CgmI.QF.CYFI.8G.CgkICcDJC4hICA..++B.PI2bUkaJ..PR....B....PFM.....nA...vQxElajAxTzUVZtcWX4ABQffBRg0lX0I2Yo...........vI2asYF...P.....A....D....f.....jQC.....Z....bjbg4FYfLEckkla2EVdfPDHnfTXsIVcxcVJ...f+X...............................PkQ+++++C....................fb4EFaP....H...............7+++++ar81bQ....D....P.....FA..........A....D...............D...............D...............D...............D...............D...............D...............D...............D....................v..B..fkF.......QP...f+jF....zS08unAJeK8KnH8ru.MfU9BfLN0CHRgnufy8.+B.Ay2KPdRuuX40F.CPNazKPf.qO.V3x9.iJW7K.tVfuv30i+xePY+KTZF0unTOH+Ptug9C.nzmu.1HN9Bd.T8Kf2spuHIaZ+H7eJ.DkFC3OfGMk9.yWp7C.IKeO.Uj.+B.hh4qltbAP3DQw+frI19KaGc3OXYo6+fREp+iJTIBPTYnw+vqJzADfTM1OfdZt+Pi0T9iWVAHP7RVF.A3bE1CX9rpO.xyB9RolO+C97q3OPOmt+.fMl+ikFyAPR8iO.gF5i.DvJnBP3oIY+.nKH6Kb9n+u.q6K9H6VQ.DBP68u7hU0+X3VE.DbLT4OnbkY+.+lp8qb4OEP7dyj+vEdQ.LfWoau9prC.ojzt.jhNV.P.z808B8TI9iNFsEPTp45+.V6b6C.3kyuvwDp+RYf9.LSOy6uP1xt+xLx59KAsN6OZhfX.AUpI9K3q.5ujJHg+nFRh.j.jaEPTErj+fHHl.DXjP1O.Y1R9Bq4+.DFhFCPwa8j.o5XSAD+VPCPDLLo+.qLI7CHYq.PC....D...............L....................v.....................C....D....P.....A........9C.....A.........P4+IhOC.H...VZ.......DAA...9SZ....UYZR+zHxyvzOC1ezN8ifXFXT+7PSCQ0OSewU+z9+Y8Ca7y0Om3.X+LfMi8S8zY1O6ubZ+LfMi8Ca7y0OMMDU+z9+Y8yIN.1OCXyX+TOcl8S8zY1OBr+xo8SJ7z1OovSa+HvlFC2OGxFc+bHaz8i.u7Bd+r9C78y5Ov2OMXAB.9is5P3Oj6lg+DisH9yLB13OYj.j+P3oR9CwdU4O80wl+rAJd9i2QE5OuxIo+voBn9CmJf5OMbdmq9C+X85OE5yr+TVT29SHL.7OAsKw+TkoI+S+Q67OMMD0+z9+Y+yIN.9O0Sm4+jBOs+SJ7z9OAbHaz+ygrQ+OAr9C7+y5Ov+OBtKFB.zfj6lA.MY...................Jv...n.A..1JD.....C.H...E...mPA.........................P...................Jv...n.A....v..B..fI.......fZP..fqBI..........AN.f...XB.......nFD..3pPB........9SfAB........fzD..................f....+....9y..B..PA..vIT..........L.f...XoA......PDD...3OoA........r....f+B...AL...DvD....AD....P...v.A...9C...3OF....CD...DP...f.A....L...Dv...f.A...BDB...n.A...CD...HP.........9C....v...f+....AL...DvC....AD...HP...n.A..fBjA...P.C..fBD..........A...AL...JP...n.UA...DP...f.A....D....v...f+....BD....P...n.A...AD...Dv.........BD...Dv.........9C...3u...P.C..fBD...Dv.....C..........E...fBD...Dv.....C...9K...Dv...P.O....JP.....C...AL...DvO....BD...3O...P.C...BD........f.A...9K....P...n.A...AL...3u.....C...CD...JP...P.C...A7......C...9C...Dv...P.G....3u...f+R....LP...f.A...AL..........b....3O...P.C....L...LP...P.C...CD...Dv...P.GH....PC.H...E...mPA........9i.....A....TE...PQwUWXrABck0FbkIWXsUlazo.UnUFHyQWXtQVXxQFHzUmao41Yr.xcnUlbkABcnUFHuMFcgYWYfj1bfPVZ1kFYkQFHo4FHwHCHkEWcgwFHyQWYvMmKL.......HKD..fzP..fkCA..HOD..n+P..fEDA..uPD..fDQ..PXDA..5QD..lHQ..fkDE..........D.......bODO....EA...XD.....+A........vA....DUlYgUGazA..........B....L.f...XoA......PDD...3OoA.........5..............3OA....D....P.....L....L.f...PK........9C...fP...ABA..fHD..PhP...PBA..DID...mP...cBA..DKD..XrPK.......fBTf...f.EH...DPAB....Tf...f+DH....P.........9y..B..fI.......fZP..fqBI........3OAN.f...XoA......PDD...3OoA...LD8N9CZZr8f+bzt48irBC4OzFrY+.O2u8ipqL3Oyhhj+v2FJ9C0XO3OuBGf+rYik8ipoL4On0dj+7fGy8S7BR3O6wfZ+37Sb8i.L02Oy+sl+7spP9itKa2ONmPY+D13q8Scvh3OsCEg+XstZ8yPcb2OP8ue+Lvb18Sr6p0OUlxY+HkuR8io7h3O+rlb+nF+O8iwzP4O8A0V+.8Vs8SJZl0OzNef+bQPj8yy0B4OSDWZ+z7T38SIB42OTyOg+3wie8Sm.u1O1z3f+jDeC9SfiB4OEDYd+T67B9y5Xo2OJpFg+78C08yM2B3Oj.Ei+THI.9SDEv1OdiVc+7bRs8y9Hm1O.qjX+rfpF9iFMk3Oq.qZ+.OwE9iBWt1Otwoh+fNxc7iKKb3O+PLY+rpsx8SWdc1Ovdrg+XmH18SUeG1OW4If+nBq08CZjO0OI.ae+71cF9iJtk2OtiOZ+79lx8CzcN3OqUEZ+b96r8iECo1O7mVh+TJYD9C4Rm1ObMZV+bB1B9yTbKzOaBbi+faww8SBMo3O4p9Q+rjHM9Ccry0OzcLl+n9RQ9y..B..PA..5QT..........L.f...T..fdDE........3O.....L.f...T...bBE.............f+L.f...T...bBE..........A...............MyLy81LyL2S...................vu....+....9y..B...M.......fZP...bBA..XKz........f+HH.....C.H...l........pAA..tJj..........DH...3OC.H...l........pAA..tJj........f+DH...hPC.H...DB.......pAA..PJD..fpP...sBA...KD..vrP...1BA..hKDB.........HH...3OD....AD...LP...HAA...ED...3OC.H...z........pAA..vID..fsPC........9ifC.H...l........2BA..bKj..........G......A....L.f...XB.............3OB.........P....f+L.f...XB.............3OB........9SfC.H...DA.........vvjI4i898yO...f+P..........AB...9SfC.H...l..............9i..........DH.....MyLS9....................7C.....MyLK.M.f...XB.......nFD..3pPB........9SfMyLK.A...7y..B..HE........3OA....D....P.....J....LUagwFaffTXrw1B....sUFYoUWanEFarEC...HP...nAA...9SyLy3O.....zLyL0C.....MyLS9.....vLyL6O..vqCA...9C...3OA....X........3O...f+L.f...XoA......PDD...3OoA.......9yjw0ih+.QgqG4O1iBm+vdTX9yiBW4Ow0ih+nYlY9yiBW4O6Qgi+7nvU9ilYl4O35Qo+zLyL9iBWO5ORgqm+nYlY9y0iB4OWOJj+TAtdT5Oov0i+DtdT9SOJb4O6Qgi+7nvU9CRgq4O6Qgq+35Qg9C...3Oov0i+HEtd9C...3OgqGk+7nvU9yGEt3OOJbk+T35Q9y0iB4OMyLi+DtdT9S35Q4OmrGEN9Sb8n3OOJbk+Lb8H9C6Qg4OMyLi+PgqG9yGEt3OrGEl+HEtd9ydT33OtdTn+jBWO9ilYl4Ob8nn+nv0i9iYlY5OjBWm+LyLS9yiBW6ORgqm+nYlY9ilYl6O35Qo+...f9SyLy5OZlYt+PJbc9CRgq4OMyLq+ziBW9SJb83OCWOp+ziBW9Cov04OZlYl+DWOp9CRgq4ORgqm+HEtd9SAHEtl+rGEt9S35Q4O1iBm+PJbc9y..B...M.......fZP...bBA..XKz........f+HH.....C.H...VW.......pAA...9SW.........bXLZVNuTgT3H06EUcPu.kQX7.sP306WXmTOvZSR85cNhmK1UoZutf6Z8hSHSny0iAHuVrMg8RjTEzCpI9HOBdIr55Nup1ijhWau0Fut8nMaI0yPuDZOjawp61KBu0KA+AZuWycq8tcEc1ygCNTO7VPk8JSMFyS16EauQEtq7xHixyCc+GbOaYtM6ZlXOpKDonaObe1r8.hKZ1SozJQuN+cg71Xx1xiTGgJOJQit8HG4m0atZ.XO+WSq8RcYc1ShczEO133V83JWP1qNo2UufAVn7v2gF0SDmoPONl0.8rA+VuiwTGKuWgwd8D.Fk0aG7ILOynII89DLR0aRuoSu26jS8v1z11Sx1dRuUrTo8ziWc1SQsnWu9PJd8TY4eyaGgeIukDLi83mRYmiY2ebOZkUH8T4RNyy.OvYuZq4Z8xVvR1CJy.OOk76r819ne0iQ76XOvlOP8F..........A........7C....PC........9C...3O...f+L.f...PC.......nFD...mP...1BM........3OBN.f...PC.......nFD...mP...1BM........3OBN.f...PC.......nFD...mP...1BM........3OBB...9C...3OG........9ilYloOMyLS+zLyL+ilYloOH..........................fYloO................C.H...VZ.......DAA...9SZ....I.Zo+fFzdH4ODz8i+7E9R9SsMb3OoiAf+vY9A9yeTu2OGv8Z+zWbM9yNTc1OzaEX+zOqu8ikWg2OruVc+XaAz9irOo5OKh2h+DYnz8iYJS2OzLWl+HyIV9yYlT3O7xJj+TsRL9CMy.2OvlUf+vAXJ9yDxx3O..tj+L91f9i8Bo4OvU1Y+zewD9ihH80O2cuc+D.vQ8Su6ZxOrplO+fXWK9ShHUxOeYXf+nInd9ihBe5OF+0P+.TB38i3YA6ONuOm+7qOO9Chvh2O9X2j+.j1G9S3Eg2OdK6b+D15E9izov2Od7Wd+7tNU9SuE+5O3Npu+TgWY9y.2n2OmYhn+XinD9Su2K3Oc3tg+74MR9yYlN4OZl4Q+XloS9SyLB8OmYhn+zLaD9ilYX0OcQFe+blYF+S..f4OKSyT+rmSW8i3Q33Oizju+jLtF+S..H8OMyDq+zLCk9S..25O+2Wa+br7Y8SHYO6OEttq+.DOU9iCP.3OG6HY+PNdM9ihYg1OvZzi+Dz3T9SGVs2OXMsY+jsja8CEUK1OB7Uc+rQ2I9CJZp4OrtTf+L.f...PC.......nFD...mP...1BM........3OBN.f...PC.......nFD...mP...1BM........3OBN.f...PC.......nFD...mP...1BM........3OBF....PZ.......DAM.f...XLD............3OLD........v+.....7O.....KB..fDz..B..fIP............f+HP.........+C....v+.....DH...SPC.H...F9.............9C9.........7O.....2C...Ez..B..f8N............f+7N.........+C....f6...TAM.f...XqC............3OqC........v+.....nN...VPC.H...13.............9y3.........7O.....hC..vEz..B..fkM............f+jM.........+C.....1...fAM.f...XSC............3OSC........v+.....HM..fXPC.H...Fz.............9Cz.........7O.....OC..PFz..B..f4L............f+3L.........+C....Py...lAM.f...XKC............3OKC........v+.....nL...ZPC.H...lx.............9ix.........7O.....IC..nFz..B..fIN............f+HN.........+C....P3...rAM.f...XZC............3OZC........v+.....jM..faPC.H...Vz.............9Sz.........7O.....PC...Gz..B..fwO............f+vO.........+C....v9...xAM.f...XnC............3OnC........v+.....bN...cPC.H...V1.............9S1.........7O.....XC..XGz..B..fkL............f+jL.........+C.....x...3AM.f...XaC............3OaC........v+.....nM..fdPC.H...l4.............9i4.........7O.....kC..vGz..B..fYM............f+XM.........+C....P0...9AM.f...XJC............3OJC........v+.....jL...fPC.H...1v.............9yv.........7O.....BC..DHz..B..fwL............f+vL.......7uA...f.D...BPA....+C...7OYNyLy9SBlYlo+nYlY9C...3OyLyL+....7ilYloOMyLS9zLyL2C..........7O.....iB..HHz..B..fIM............f+HM.......JvA...........A.....L....vAB...Ab...........v+.....jL..vfPC.H...lw.............9iw.........7O.....EC..PHz..B..fQL............f+PL.......DvC.........Dv..........v+.....7K..PgPC.H...Fw.............9Cw.........DH...DvA...........+C....vu...FBM.f...XDC............3ODC........v+.....LL..vgPC.H...1p.............9yp....lYlg+J....Dv..........v+.....bJ...hPC.H...1p.............9yp.........7O.....pB..jHz..B..fkJ............f+jJ.........+C.....p...JBM.f...XSB............3OSB........v+.....HI..vhPC.H...1j.............9yj.........H....Hv..........f....P.C..........NB...Abf.....zN..fdPA...........KB..vHz..B..fMI............f+LI.........+C....fj...MBM.f...X.B............3O.B........v+...NBM.f...X.B............3O.B.......AT...........vh...P.G...........vH...DvA...........fC..7Hz..B..fAH............f+.H.......DPC.........Dv..........v9...PBM.f...XrA............3OrA.......BTA.....A....L...3O...f+B...9C...3OA...........BB....b...........f2...QBM.f...XrA............3OrA...XlYF9a...........ffyLy..G...........bH...DvA...........ZC..HIz..B..fwF............f+vF.......3uA...........AB...Ab...........ff...P.G............N..vjPC.H...lY.............9iY.........T....DP...P.C........Jv..........ff...f.G...........nM...kPC.H...1U.............9yU.......P.UvLyL.P...j.C........Dv...........z...UBM.f...XWA............3OWA.......+Sf.....HH...DvA...........B....AL..........vL..fkPC.H...lU.............9iU.......f+T......lYlw+....ArYlY7O..........f....P.C..........BB...Bb...........vw...WBM.f...XIA............3OIA.......9af...P.I.YlY3ulYlg+XlYF9y....P.MyLC.L..........7K...lPC.H...VR.............9SR.......v+R....Dv...v+....+K..........LL..PlPC.H...FR.............9CR.........D....7u...v+FH.....AB...Bb...........vu...ZBM.f...XDA............3ODA...XlYF9y.yLy..C...9C..........bH...DvC.........Dv...........h...P.KH.....mB..rIz..B..f4C............f+3C.........B....AL..........nK...mPC.H...VN.............9SN.......v+D....3u...f+FH.....C....AL...3u...........r...cBM.f...X4.............3O4....XlYF9SfB..P.K....3ulYlg+XlYF9i.G1LS8B..........vB..3Iz..B..fYC............f+XC.........BB...9y..........BL..........LH...DvB.....D..........bJ..vmPC.H...VL.............9SL.......f+D...........DH...DvAB....fp...fBM.f...Xv.............3Ov.........vq..ffBM.f...Xs.............3Os........9SA.........9K........f+B..........DB...Ab...........vm...gBM.f...Xq.............3Oq........9Sf.....G....3u...f+F...........TH...DvAB....f....P.C..........YB..FJz..B..fcB............f+bB.........lB..HJz..B..fYB............f+XB...fYlY3uAB...Azf.....TH...DvA...........WB..JJz..B..fQB............f+PB.......3uA....9C...3OBH...AL..........3I..vnPC.H...lH.............9iH....6++++Vv+++GPxLy..A....vLyL.v..........vl..fiBM.f...Xf.............3Of....H...Ab......A....DAlYlg+XlYF9K....P...........l...jBM.f...Xc.............3Oc..........m..fjBM.f...Xb.............3Ob.........vl...kBM.f...Xa.............3Oa.........fl..fkBM.f...XY.............3OY..........l...lBM.f...XX.............3OX........9a...........f.MyLi+...........RB..ZJz..B..fYA............f+XA...fYlY3OC.....j...DPxLy..KyLC.b...........vi...mBM.f...XU.............3OU.........f....f+...........QB..dJz..B..fQA............f+PA.......3uAB...Ab...........vi...nBM.f...XS.............3OS.........b...........vf.....G...........nH..HpPC.H...lD.............9iD....fBrO.MH...7uA...........KB..jJz..B..fEA............f+DA...fYlY3OF....9qYlY3O.....A........3O..........Ph..foBM.f...XP.............3OP.........zAlYlg+nYl49K........v+B........7u..........vg...pBM.f...XO.............3OO.........fi..fpBM.f...XN.............3ON.........Pi...qBM.f...XM.............3OM..........i..fqBM.f...XL.............3OL.........vh...rBM.f...XL.............3OL.........vh..frBM.f...XK.............3OK.........fh...sBM.f...XJ.............3OJ.........Ph..fsBM.f...XJ.............3OJ.........Ph...tBM.f...XI.............3OI..........h..ftBM.f...XI.............3OI..........h...uBM.f...XH.............3OH.........vg..fuBM.f...XH.............3OH.........vg...vBM.f...XH.............3OH.........vg..fvBM.f...XH.............3OH.........vg...wBM.f...XH.............3OH.........vg..fwBM.f...XH.............3OH.........vg...xBM.f...XH.............3OH.........vg..fxBM.f...XH.............3OH.........vg...yBM.f...XH.............3OH.........vg..fyBM.f...XH.............3OH.........vg...zBM.f...XH.............3OH.........vg..fzBM.f...XH.............3OH.........vg...0BM.f...XH.............3OH.........vg..f0BM.f...XH.............3OH.........vg...1BM.f...XD.............3OD.........vf..f1BM.f...XD.............3OD.........vf...2BM.f...XD.............3OD.........vf..f2BM.f...XD.............3OD.........vf...3BM.f...XD.............3OD.........vf..f3BM.f...XD.............3OD.........vfb2K28L.f...PV.......PDD..fZP...vAA..fGD..fdP....BA..HHD..fgP...IBA..vHD...jP...SBA..fID...mP...fBA..HJD...oP...lBA..fJD..fpP...vBA..XKjE....uYPH+P.sky3OjN0i+Py0Q9iZpE4OpoVj+HX6A53OAnlZQ9iZpE4ODzdfN9il1t3OsGni+nosK9il1t3OA955W8Sfa0dQ+Hv4llxOAMX69D..........A....LyLy7iYlY5OA....D....P.....CWOZ+zLyL9S..........D....vLyLyOlYlo+D..........A....LyLy7iYlY5OA.........P.....yLyL+XlYl9S.............vKD.....N........7SyLybOMyLS9....7y..........L.f...RA...............C.H..fT..........P....f.....C....P....P.....A........9C...3OA....D....P.....A....D........3O.........BD..PqPFA....v..B..HE...............L.f...RA....................L.f...RA...............C....b....P..........3.....D.........7nv00C...3O.........7K...mP.....................................................L....fB....A.........fC....P............frP.........7C....P..fkCA...9K...vO...f+..PbTD...3O....+....AD...............v.....J....D..........N.....A............xBA........3O.....A..5OD........f+....9C.fxXQ.....MyLy7C...DP................A....D........3O...PAC....v.....C.........P.....E....P....P.....C....XOJb.TqGE9O...v+...gML.....C....T........3O...bBC...KL...rv...vBW...............................T...............................D..........D....D....v........H.oLyL8C...7O...MBA....v.....E.......vIL...3O...vBC...KL...rvE.........vE2FUN................E...............................A..........A....A....L.....zQgqOcT3p+jBWO9CNcMtPeQ+gCU....PA.......HAC...GL...mv...bBC..vIbA....WbaT4bwsQkC...............PA..............................P..........P....P.....C....7Qgq6iT354Oov0i+...hKD..HqvE....T........bv...HAC..vIL...mv...bBW..........uIw.5................T...............................D..........D.........v.....35Qw+ziBW8iqGE9O................E.......vIL...mv...bBC..vIL...mvE...............................E...............................A....................D....v.....RgqG+vdT35qYlY5O...jAA...............D.........."
                                                    },
                                                    "fileref": {
                                                        "name": "Pianoteq 8",
                                                        "filename": "Pianoteq 8_20260403.maxsnap",
                                                        "filepath": "~/Documents/Max 9/Snapshots",
                                                        "filepos": -1,
                                                        "snapshotfileid": "37f6efd05a8405b3a692f56aa041e1c9"
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
                                    "id": "obj-81",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 556.0, 534.0, 29.5, 22.0 ],
                                    "text": "0"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 12.0,
                                    "id": "obj-78",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 535.0, 590.0, 51.0, 22.0 ],
                                    "textcolor": [ 0.19607843137254902, 0.8901960784313725, 0.058823529411764705, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-77",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 3,
                                    "outlettype": [ "int", "int", "int" ],
                                    "patching_rect": [ 535.0, 563.0, 40.0, 22.0 ],
                                    "text": "peak"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 24.0,
                                    "id": "obj-76",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 452.0, 572.0, 70.0, 35.0 ],
                                    "textcolor": [ 0.19607843137254902, 0.8901960784313725, 0.058823529411764705, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-74",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 451.0, 534.0, 35.0, 22.0 ],
                                    "text": "r dbs"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-73",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 134.0, 460.0, 37.0, 22.0 ],
                                    "text": "s dbs"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-53",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 0,
                                    "patching_rect": [ 17.0, 401.10000467300415, 71.0, 22.0 ],
                                    "text": "print cs out:"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-50",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 94.0, 492.0, 66.0, 22.0 ],
                                    "text": "(dbs-in $1)"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-49",
                                    "maxclass": "gswitch2",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 94.0, 462.0, 25.3999941945076, 24.00000035762787 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-43",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 112.0, 431.10000467300415, 59.0, 22.0 ],
                                    "text": "route dbs"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-42",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 253.0, 314.10000467300415, 107.0, 22.0 ],
                                    "text": "outchannel dbs $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-40",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 77.3999941945076, 76.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-31",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 22.3999941945076, 105.0, 104.0, 22.0 ],
                                    "text": "s #0_s4m_tracker"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-30",
                                    "int": 1,
                                    "maxclass": "gswitch2",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 22.3999941945076, 76.0, 34.0, 27.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 22.3999941945076, 40.0, 55.0, 22.0 ],
                                    "text": "zl.slice 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 22.3999941945076, 14.0, 97.0, 22.0 ],
                                    "text": "udpreceive 7778"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "gswitch2",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 432.0, 62.0, 24.0, 19.800001859664917 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 432.0, 92.0, 29.5, 22.0 ],
                                    "text": "set"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 276.0, 175.0, 61.0, 22.0 ],
                                    "text": "delay 500"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 275.0, 14.0, 35.0, 22.0 ],
                                    "text": "reset"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-4",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 314.0, 139.5, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1414.0, 447.0, 150.0, 20.0 ],
                                    "text": "adjust thresholds"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 24.0,
                                    "id": "obj-16",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 349.0, 148.00000220537186, 146.0, 35.0 ],
                                    "textcolor": [ 0.13725490196078433, 0.9058823529411765, 0.10588235294117647, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1460.0, 677.0, 104.0, 22.0 ],
                                    "text": "s #0_s4m_tracker"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "gswitch2",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 1448.0, 635.0, 31.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "linecount": 10,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 886.0, 11.0, 310.0, 154.0 ],
                                    "text": "Version for embedding in sax and mod. To activate, turn on csound and adc.\n\nThis depends on the following files, which must be on the Max file path:\n\nrms-frq-out.csd - csound amp and pitch tracker\nsax-tracker.scm - scm to take raw and and frq data and determine when a note has played.\n\n"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 13.0, 173.80000042915344, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 13.0, 211.80000042915344, 52.0, 22.0 ],
                                    "text": "adc~ 45"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-106",
                                    "maxclass": "gswitch2",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 202.0, 464.0, 30.0, 26.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 24.0,
                                    "id": "obj-92",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 337.0, 537.0, 54.0, 35.0 ],
                                    "text": "64",
                                    "textcolor": [ 0.11764705882352941, 1.0, 0.06666666666666667, 1.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-89",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 276.0, 523.0, 32.0, 22.0 ],
                                    "text": "ftom"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-86",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 293.6000043749809, 97.60000145435333, 83.0, 22.0 ],
                                    "text": "route note-out"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-79",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "float" ],
                                    "patching_rect": [ 276.0, 464.0, 29.5, 22.0 ],
                                    "text": "t b f"
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
                                    "patching_rect": [ 163.6999970972538, 270.80000042915344, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-51",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 276.0, 496.0, 79.0, 22.0 ],
                                    "text": "334.090909"
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
                                    "patching_rect": [ 1503.0, 555.0, 30.0, 27.60000056028366 ]
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
                                    "patching_rect": [ 1308.0, 555.0, 30.0, 27.60000056028366 ]
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
                                    "patching_rect": [ 1382.0, 555.0, 30.0, 27.60000056028366 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-35",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 202.0, 496.0, 61.0, 22.0 ],
                                    "text": "(frq-in $1)"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-34",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 100.5, 543.5, 104.0, 22.0 ],
                                    "text": "s #0_s4m_tracker"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 5,
                                    "outlettype": [ "bang", "bang", "bang", "bang", "bang" ],
                                    "patching_rect": [ 1333.0, 483.0, 62.0, 22.0 ],
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
                                    "patching_rect": [ 1333.0, 440.0, 34.0, 34.0 ]
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
                                    "patching_rect": [ 1514.0, 519.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1503.0, 591.0, 139.0, 22.0 ],
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
                                    "patching_rect": [ 1382.0, 591.0, 105.0, 22.0 ],
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
                                    "patching_rect": [ 1393.0, 519.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "blinkcolor": [ 0.403921568627451, 0.8901960784313725, 0.4627450980392157, 1.0 ],
                                    "id": "obj-67",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 276.0, 136.5, 35.0, 35.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-65",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1259.0, 591.0, 111.0, 22.0 ],
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
                                    "patching_rect": [ 1319.0, 519.0, 50.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-62",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 313.0, 41.0, 102.0, 22.0 ],
                                    "text": "r #0_s4m_tracker"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-61",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 192.0, 41.0, 81.0, 22.0 ],
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
                                    "patching_rect": [ 192.0, 13.0, 23.0, 23.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-54",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1650.0, 591.0, 35.0, 22.0 ],
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
                                    "patching_rect": [ 275.0, 68.0, 130.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "heap": 32,
                                        "ins": 1,
                                        "log-null": 0,
                                        "outs": 1,
                                        "thread": 104
                                    },
                                    "text": "s4m sax-tracker-2.scm"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-45",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 207.5, 429.0, 53.0, 22.0 ],
                                    "text": "route frq"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-28",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 112.0, 398.10000467300415, 120.0, 22.0 ],
                                    "text": "route kchan outvalue"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 142.0, 314.10000467300415, 101.0, 22.0 ],
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
                                    "orientation": 1,
                                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 13.0, 247.80000042915344, 65.0, 47.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_longname": "live.gain~[3]",
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
                                    "id": "obj-18",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 94.0, 314.10000467300415, 31.0, 22.0 ],
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
                                    "patching_rect": [ 17.0, 314.10000467300415, 35.0, 22.0 ],
                                    "text": "reset"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 60.0, 314.10000467300415, 32.0, 22.0 ],
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
                                    "patching_rect": [ 60.0, 368.10000467300415, 156.0, 22.0 ],
                                    "text": "csound6~ sax-tracker-2.csd"
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
                                    "destination": [ "obj-30", 1 ],
                                    "order": 1,
                                    "source": [ "obj-10", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-40", 0 ],
                                    "order": 0,
                                    "source": [ "obj-10", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-102", 0 ],
                                    "source": [ "obj-100", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-105", 0 ],
                                    "source": [ "obj-102", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-105", 0 ],
                                    "source": [ "obj-103", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-103", 0 ],
                                    "source": [ "obj-104", 0 ]
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
                                    "destination": [ "obj-16", 0 ],
                                    "midpoints": [ 441.5, 134.890625, 358.5, 134.890625 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-100", 0 ],
                                    "source": [ "obj-111", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-104", 0 ],
                                    "source": [ "obj-112", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-13", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "midpoints": [ 26.5, 359.36796617507935, 69.5, 359.36796617507935 ],
                                    "source": [ "obj-17", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "midpoints": [ 103.5, 362.29374742507935, 69.5, 362.29374742507935 ],
                                    "source": [ "obj-18", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
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
                                    "midpoints": [ 151.5, 359.17655992507935, 69.5, 359.17655992507935 ],
                                    "source": [ "obj-25", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-43", 0 ],
                                    "midpoints": [ 121.5, 423.9031280905474, 121.5, 423.9031280905474 ],
                                    "order": 1,
                                    "source": [ "obj-28", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-45", 0 ],
                                    "midpoints": [ 121.5, 424.7812531036325, 217.0, 424.7812531036325 ],
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
                                    "midpoints": [ 69.5, 362.95390367507935, 69.5, 362.95390367507935 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-31", 0 ],
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
                                    "midpoints": [ 1374.75, 510.45468693971634, 1523.5, 510.45468693971634 ],
                                    "source": [ "obj-33", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-54", 0 ],
                                    "midpoints": [ 1385.5, 509.37656193971634, 1659.5, 509.37656193971634 ],
                                    "source": [ "obj-33", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-64", 0 ],
                                    "midpoints": [ 1353.25, 517.4507806897163, 1328.5, 517.4507806897163 ],
                                    "source": [ "obj-33", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-69", 0 ],
                                    "midpoints": [ 1364.0, 509.26718693971634, 1402.5, 509.26718693971634 ],
                                    "source": [ "obj-33", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 0 ],
                                    "source": [ "obj-35", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-41", 0 ],
                                    "source": [ "obj-38", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-111", 0 ],
                                    "order": 1,
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-112", 0 ],
                                    "order": 0,
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "midpoints": [ 262.5, 360.52578592300415, 69.5, 360.52578592300415 ],
                                    "source": [ "obj-42", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-49", 1 ],
                                    "order": 1,
                                    "source": [ "obj-43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-73", 0 ],
                                    "order": 0,
                                    "source": [ "obj-43", 0 ]
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
                                    "midpoints": [ 217.0, 458.9999989718199, 285.5, 458.9999989718199 ],
                                    "order": 0,
                                    "source": [ "obj-45", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-83", 0 ],
                                    "source": [ "obj-47", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-47", 0 ],
                                    "source": [ "obj-48", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-50", 0 ],
                                    "source": [ "obj-49", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 1 ],
                                    "midpoints": [ 1512.5, 625.44921875, 1469.5, 625.44921875 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 0 ],
                                    "source": [ "obj-50", 0 ]
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
                                    "destination": [ "obj-13", 1 ],
                                    "midpoints": [ 1659.5, 624.52734375, 1469.5, 624.52734375 ],
                                    "source": [ "obj-54", 0 ]
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
                                    "destination": [ "obj-24", 1 ],
                                    "source": [ "obj-64", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 1 ],
                                    "midpoints": [ 1268.5, 624.96484375, 1469.5, 624.96484375 ],
                                    "source": [ "obj-65", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-67", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 1 ],
                                    "midpoints": [ 1391.5, 624.7421875, 1469.5, 624.7421875 ],
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
                                    "destination": [ "obj-15", 1 ],
                                    "midpoints": [ 285.5, 204.02734375, 516.12109375, 204.02734375, 516.12109375, 20.16015625, 446.5, 20.16015625 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "order": 1,
                                    "source": [ "obj-72", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-42", 0 ],
                                    "midpoints": [ 173.1999970972538, 307.22265625, 262.5, 307.22265625 ],
                                    "order": 0,
                                    "source": [ "obj-72", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-76", 0 ],
                                    "order": 1,
                                    "source": [ "obj-74", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-77", 0 ],
                                    "midpoints": [ 460.5, 560.0250003878027, 544.5, 560.0250003878027 ],
                                    "order": 0,
                                    "source": [ "obj-74", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-78", 0 ],
                                    "source": [ "obj-77", 0 ]
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
                                    "destination": [ "obj-77", 1 ],
                                    "source": [ "obj-81", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-91", 1 ],
                                    "source": [ "obj-83", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-91", 0 ],
                                    "source": [ "obj-83", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-83", 0 ],
                                    "source": [ "obj-85", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 1 ],
                                    "order": 0,
                                    "source": [ "obj-86", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "midpoints": [ 303.1000043749809, 136.1171875, 323.5, 136.1171875 ],
                                    "order": 1,
                                    "source": [ "obj-86", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-99", 0 ],
                                    "order": 2,
                                    "source": [ "obj-86", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-47", 1 ],
                                    "source": [ "obj-87", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-87", 0 ],
                                    "midpoints": [ 596.5, 338.1999970674515, 596.5, 338.1999970674515 ],
                                    "source": [ "obj-88", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-38", 1 ],
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
                                    "destination": [ "obj-52", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-88", 1 ],
                                    "midpoints": [ 686.5, 309.1999970674515, 610.0, 309.1999970674515 ],
                                    "source": [ "obj-90", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-88", 0 ],
                                    "midpoints": [ 596.5, 308.1999970674515, 596.5, 308.1999970674515 ],
                                    "source": [ "obj-90", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-94", 1 ],
                                    "source": [ "obj-91", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-94", 0 ],
                                    "source": [ "obj-91", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-90", 0 ],
                                    "source": [ "obj-97", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-90", 0 ],
                                    "source": [ "obj-98", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 758.0, 7.446808457374573, 78.0, 22.0 ],
                    "text": "p sax-tracker"
                }
            },
            {
                "box": {
                    "fontsize": 26.0,
                    "id": "obj-122",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 163.69148898124695, 724.0, 124.0, 38.0 ],
                    "text": "s4m-reset"
                }
            },
            {
                "box": {
                    "fontsize": 26.0,
                    "id": "obj-119",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 164.89361584186554, 658.2340379953384, 104.0, 38.0 ],
                    "text": "live-play"
                }
            },
            {
                "box": {
                    "id": "obj-118",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 18.69148898124695, 750.0, 109.0, 22.0 ],
                    "text": "s #0_s4m_in_main"
                }
            },
            {
                "box": {
                    "id": "obj-108",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 69.13829708099365, 46.5, 107.0, 22.0 ],
                    "text": "r #0_s4m_in_main"
                }
            },
            {
                "box": {
                    "fontsize": 26.0,
                    "id": "obj-103",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 13.191488981246948, 658.2340379953384, 105.0, 38.0 ],
                    "text": "live-stop"
                }
            },
            {
                "box": {
                    "id": "obj-121",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 876.0, 125.0, 47.0, 22.0 ],
                    "text": "s #0_in"
                }
            },
            {
                "box": {
                    "id": "obj-120",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 876.0, 100.0, 104.0, 22.0 ],
                    "text": "(on-note-in $1 $2)"
                }
            },
            {
                "box": {
                    "fontsize": 24.0,
                    "id": "obj-116",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 629.7872295379639, 56.382978320121765, 207.06382381916046, 35.0 ],
                    "text": "66 5.308082",
                    "textcolor": [ 0.13725490196078433, 0.9058823529411765, 0.10588235294117647, 1.0 ]
                }
            },
            {
                "box": {
                    "blinkcolor": [ 0.403921568627451, 0.8901960784313725, 0.4627450980392157, 1.0 ],
                    "id": "obj-117",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 579.6595703363419, 56.382978320121765, 35.0, 35.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-26",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1044.0, 42.44680845737457, 47.0, 22.0 ],
                    "text": "s #0_in"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
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
                        "rect": [ 34.0, 100.0, 1444.0, 76.0 ],
                        "subpatcher_template": "s4m",
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 620.0, 8.0, 29.5, 22.0 ],
                                    "text": "#f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 574.0, 8.0, 29.5, 22.0 ],
                                    "text": "#t"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 538.0, 45.0, 149.0, 22.0 ],
                                    "text": "mset :algo-on-take-end $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 344.0, 45.0, 93.0, 22.0 ],
                                    "text": "(load-preset $1)"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 490.0, 4.000000059604645, 29.5, 22.0 ],
                                    "text": "p-4"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 443.0, 4.000000059604645, 29.5, 22.0 ],
                                    "text": "p-3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 393.0, 4.000000059604645, 29.5, 22.0 ],
                                    "text": "p-2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 344.0, 4.000000059604645, 29.5, 22.0 ],
                                    "text": "p-1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 240.00000715255737, 4.000000059604645, 29.5, 22.0 ],
                                    "text": "#f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 193.33333909511566, 4.000000059604645, 29.5, 22.0 ],
                                    "text": "#t"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 158.00000470876694, 41.600000619888306, 127.0, 22.0 ],
                                    "text": "mset :play-note-ins $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 121.6000018119812, 4.000000059604645, 51.0, 22.0 ],
                                    "text": "'capture"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 60.00000089406967, 4.000000059604645, 50.0, 22.0 ],
                                    "text": "'replace"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 4.800000071525574, 4.000000059604645, 40.0, 22.0 ],
                                    "text": "'blend"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 4.800000071525574, 41.600000619888306, 126.0, 22.0 ],
                                    "text": "mset :record-mode $1"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-1",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 4.800000071525574, 102.4000015258789, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "midpoints": [ 69.50000089406967, 33.16875049425289, 14.300000071525574, 33.16875049425289 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "midpoints": [ 131.1000018119812, 34.20937550975941, 14.300000071525574, 34.20937550975941 ],
                                    "source": [ "obj-11", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "midpoints": [ 547.5, 85.44140625, 14.300000071525574, 85.44140625 ],
                                    "source": [ "obj-16", 0 ]
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
                                    "destination": [ "obj-16", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "source": [ "obj-9", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 1044.0, 7.446808457374573, 61.0, 22.0 ],
                    "text": "p controls"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 704.0, 7.446808457374573, 41.0, 22.0 ],
                    "text": "post $"
                }
            },
            {
                "box": {
                    "id": "obj-135",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 377.6595721244812, 678.2340379953384, 61.0, 22.0 ],
                    "text": "print midi:"
                }
            },
            {
                "box": {
                    "id": "obj-136",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 327.6595721244812, 678.2340379953384, 47.0, 22.0 ],
                    "text": "s #0_in"
                }
            },
            {
                "box": {
                    "id": "obj-137",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
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
                        "rect": [ 52.0, 274.0, 1369.0, 435.0 ],
                        "subpatcher_template": "s4m",
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-21",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 1196.0, 111.0, 91.0, 22.0 ],
                                    "text": "route midievent"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1196.0, 138.0, 124.0, 22.0 ],
                                    "text": "prepend midi-in 'bcf-1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-24",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 1196.0, 48.0, 50.0, 22.0 ],
                                    "text": "midiin b"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-25",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 8,
                                    "outlettype": [ "", "", "", "int", "int", "", "int", "" ],
                                    "patching_rect": [ 1196.0, 76.0, 92.5, 22.0 ],
                                    "text": "midiparse"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 1035.0, 111.0, 91.0, 22.0 ],
                                    "text": "route midievent"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1035.0, 138.0, 131.0, 22.0 ],
                                    "text": "prepend midi-in 'fpad-1"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "obj-7",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1035.0, 13.0, 92.0, 22.0 ],
                                    "text": "FootPad 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-10",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 1035.0, 55.0, 49.0, 22.0 ],
                                    "text": "midiin z"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-11",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 8,
                                    "outlettype": [ "", "", "", "int", "int", "", "int", "" ],
                                    "patching_rect": [ 1035.0, 83.0, 92.5, 22.0 ],
                                    "text": "midiparse"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 883.0, 111.0, 91.0, 22.0 ],
                                    "text": "route midievent"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 883.0, 138.0, 131.0, 22.0 ],
                                    "text": "prepend midi-in 'fpad-2"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "obj-18",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 883.0, 13.0, 92.0, 22.0 ],
                                    "text": "FootPad 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-19",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 883.0, 55.0, 49.0, 22.0 ],
                                    "text": "midiin y"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-20",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 8,
                                    "outlettype": [ "", "", "", "int", "int", "", "int", "" ],
                                    "patching_rect": [ 883.0, 83.0, 92.5, 22.0 ],
                                    "text": "midiparse"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-47",
                                    "linecount": 3,
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 80.0, 201.0, 420.0, 47.0 ],
                                    "text": "This file depends on the generic midi-handling and controller system used in s4m-live-code and the sax-modular rig: files PROJECT-midi-input.scm and midi-devices.scm"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "obj-45",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 214.0, 13.0, 92.5, 22.0 ],
                                    "text": "Keystep sml"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-40",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 697.0, 111.0, 91.0, 22.0 ],
                                    "text": "route midievent"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-41",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 697.0, 138.0, 128.0, 22.0 ],
                                    "text": "prepend midi-in 'pad-2"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "obj-42",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 697.25, 13.0, 92.0, 22.0 ],
                                    "text": "Pad Mini 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-43",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 697.0, 55.0, 50.0, 22.0 ],
                                    "text": "midiin q"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-44",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 8,
                                    "outlettype": [ "", "", "", "int", "int", "", "int", "" ],
                                    "patching_rect": [ 697.0, 83.0, 92.5, 22.0 ],
                                    "text": "midiparse"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-38",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 545.0, 111.0, 91.0, 22.0 ],
                                    "text": "route midievent"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-39",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 545.0, 138.0, 128.0, 22.0 ],
                                    "text": "prepend midi-in 'pad-1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-36",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 386.0, 111.0, 91.0, 22.0 ],
                                    "text": "route midievent"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-37",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 386.0, 138.0, 114.0, 22.0 ],
                                    "text": "prepend midi-in 'fire"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 14.0, 111.0, 91.0, 22.0 ],
                                    "text": "route midievent"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-34",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 14.0, 138.0, 138.0, 22.0 ],
                                    "text": "prepend midi-in 'keystep"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "obj-26",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 14.0, 13.0, 92.5, 22.0 ],
                                    "text": "Keystep 37"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "obj-23",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 545.25, 13.0, 92.0, 22.0 ],
                                    "text": "Pad Mini 1"
                                }
                            },
                            {
                                "box": {
                                    "fontface": 1,
                                    "fontsize": 14.0,
                                    "id": "obj-3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 385.25, 13.0, 72.0, 22.0 ],
                                    "text": "Fire"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-14",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 214.0, 111.0, 91.0, 22.0 ],
                                    "text": "route midievent"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-15",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 214.0, 138.0, 138.0, 22.0 ],
                                    "text": "prepend midi-in 'keystep"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-16",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 214.0, 48.0, 46.0, 22.0 ],
                                    "text": "midiin l"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 8,
                                    "outlettype": [ "", "", "", "int", "int", "", "int", "" ],
                                    "patching_rect": [ 214.0, 76.0, 92.5, 22.0 ],
                                    "text": "midiparse"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 545.0, 55.0, 50.0, 22.0 ],
                                    "text": "midiin p"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 8,
                                    "outlettype": [ "", "", "", "int", "int", "", "int", "" ],
                                    "patching_rect": [ 545.0, 83.0, 92.5, 22.0 ],
                                    "text": "midiparse"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 385.25, 48.0, 47.0, 22.0 ],
                                    "text": "midiin f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 8,
                                    "outlettype": [ "", "", "", "int", "int", "", "int", "" ],
                                    "patching_rect": [ 385.25, 76.0, 92.5, 22.0 ],
                                    "text": "midiparse"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-35",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "patching_rect": [ 14.0, 41.0, 49.0, 22.0 ],
                                    "text": "midiin k"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-66",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 8,
                                    "outlettype": [ "", "", "", "int", "int", "", "int", "" ],
                                    "patching_rect": [ 14.0, 69.0, 92.5, 22.0 ],
                                    "text": "midiparse"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-1",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 14.0, 195.0, 30.0, 30.0 ]
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-11", 0 ],
                                    "source": [ "obj-10", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "source": [ "obj-11", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "source": [ "obj-12", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "midpoints": [ 892.5, 181.48046875, 23.5, 181.48046875 ],
                                    "source": [ "obj-13", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-15", 0 ],
                                    "source": [ "obj-14", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-15", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-16", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-14", 0 ],
                                    "source": [ "obj-17", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-20", 0 ],
                                    "source": [ "obj-19", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-20", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-22", 0 ],
                                    "source": [ "obj-21", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "midpoints": [ 1205.5, 185.3046875, 23.5, 185.3046875 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-25", 0 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-21", 0 ],
                                    "source": [ "obj-25", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-34", 0 ],
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-34", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-66", 0 ],
                                    "source": [ "obj-35", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 0 ],
                                    "source": [ "obj-36", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-39", 0 ],
                                    "source": [ "obj-38", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-39", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-5", 0 ],
                                    "source": [ "obj-4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-41", 0 ],
                                    "source": [ "obj-40", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "source": [ "obj-41", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-44", 0 ],
                                    "source": [ "obj-43", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-40", 0 ],
                                    "source": [ "obj-44", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-36", 0 ],
                                    "source": [ "obj-5", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-1", 0 ],
                                    "midpoints": [ 1044.5, 184.3046875, 23.5, 184.3046875 ],
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 0 ],
                                    "source": [ "obj-66", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-9", 0 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-38", 0 ],
                                    "source": [ "obj-9", 7 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 327.6595721244812, 642.2340379953384, 104.0, 22.0 ],
                    "text": "p sax-mod-midi-in"
                }
            },
            {
                "box": {
                    "id": "obj-132",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 768.3829729557037, 641.1702082157135, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-126",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 686.4680799245834, 540.1063791513443, 70.0, 22.0 ],
                    "text": "loadmess 1"
                }
            },
            {
                "box": {
                    "id": "obj-133",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 465.95744347572327, 56.382978320121765, 35.0, 22.0 ],
                    "text": "clear",
                    "varname": "console-clear"
                }
            },
            {
                "box": {
                    "id": "obj-131",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "int" ],
                    "patching_rect": [ 465.95744347572327, 84.04255259037018, 50.0, 22.0 ],
                    "text": "console"
                }
            },
            {
                "box": {
                    "id": "obj-130",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 686.4680799245834, 573.0851023197174, 23.09999990463257, 23.09999990463257 ]
                }
            },
            {
                "box": {
                    "id": "obj-129",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 686.4680799245834, 642.2340379953384, 66.0, 22.0 ],
                    "text": "(clock-tick)"
                }
            },
            {
                "box": {
                    "id": "obj-127",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 686.4680799245834, 603.9361659288406, 178.0, 22.0 ],
                    "text": "metro @active @interval 1 ticks"
                }
            },
            {
                "box": {
                    "id": "obj-114",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1130.0, 6.446808457374573, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-115",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1130.0, 42.44680845737457, 65.0, 22.0 ],
                    "text": "log-repl $1"
                }
            },
            {
                "box": {
                    "id": "obj-113",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 0,
                    "patching_rect": [ 648.9361655712128, 471.27659237384796, 102.0, 22.0 ],
                    "text": "dac~ 21 22 23 24"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-112",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "float" ],
                    "patching_rect": [ 951.0638229846954, 471.27659237384796, 56.00000083446503, 22.0 ],
                    "sig": 0.0
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-110",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "float" ],
                    "patching_rect": [ 891.4893553256989, 471.27659237384796, 56.00000083446503, 22.0 ],
                    "sig": 0.0
                }
            },
            {
                "box": {
                    "id": "obj-99",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 826.5957387685776, 387.2340397834778, 114.0, 22.0 ],
                    "text": "event i 2 0 4 0.1 0.2"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-98",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "float" ],
                    "patching_rect": [ 828.7233983278275, 471.27659237384796, 58.400000870227814, 22.0 ],
                    "sig": 0.0
                }
            },
            {
                "box": {
                    "id": "obj-94",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 592.553187251091, 387.2340397834778, 35.0, 22.0 ],
                    "text": "reset"
                }
            },
            {
                "box": {
                    "id": "obj-111",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 637.2340379953384, 387.2340397834778, 32.0, 22.0 ],
                    "text": "start"
                }
            },
            {
                "box": {
                    "id": "obj-109",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 695.7446758747101, 387.2340397834778, 114.0, 22.0 ],
                    "text": "event i 1 0 16 0. 0.8"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 12.0,
                    "id": "obj-107",
                    "maxclass": "number~",
                    "mode": 2,
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "float" ],
                    "patching_rect": [ 768.0851008892059, 471.27659237384796, 55.2000008225441, 22.0 ],
                    "sig": 0.0
                }
            },
            {
                "box": {
                    "id": "obj-105",
                    "maxclass": "newobj",
                    "numinlets": 8,
                    "numoutlets": 9,
                    "outlettype": [ "", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal" ],
                    "patching_rect": [ 629.7872295379639, 427.65957140922546, 162.0, 22.0 ],
                    "text": "csound6~ csound-ramps.csd",
                    "varname": "csound"
                }
            },
            {
                "box": {
                    "id": "obj-106",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 531.9148898124695, 107.51063752174377, 24.0, 24.0 ],
                    "varname": "hybrids-off"
                }
            },
            {
                "box": {
                    "id": "obj-104",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 603.1914850473404, 7.446808457374573, 75.0, 22.0 ],
                    "text": "(all-gates 0 )"
                }
            },
            {
                "box": {
                    "id": "obj-102",
                    "maxclass": "gswitch2",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 618.0851019620895, 637.2340379953384, 39.0, 32.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-101",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 613.8297828435898, 691.4893567562103, 47.0, 22.0 ],
                    "text": "s #0_in"
                }
            },
            {
                "box": {
                    "id": "obj-100",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 618.0851019620895, 604.2553148269653, 29.5, 22.0 ],
                    "text": "(gc)"
                }
            },
            {
                "box": {
                    "id": "obj-88",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 595.7446765899658, 571.2765916585922, 61.0, 22.0 ],
                    "text": "delay 32n"
                }
            },
            {
                "box": {
                    "id": "obj-34",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 192.55319011211395, 7.446808457374573, 32.0, 22.0 ],
                    "text": "(gc )"
                }
            },
            {
                "box": {
                    "id": "obj-87",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 546.8085067272186, 7.446808457374573, 40.0, 22.0 ],
                    "text": "(tune)"
                }
            },
            {
                "box": {
                    "id": "obj-68",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 705.3829729557037, 108.51063752174377, 150.0, 34.0 ],
                    "text": " these aren't saving!\n"
                }
            },
            {
                "box": {
                    "id": "obj-93",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "float", "int", "int" ],
                    "patching_rect": [ 584.0425490140915, 108.51063752174377, 81.0, 22.0 ],
                    "text": "unpack 0. 0 0"
                }
            },
            {
                "box": {
                    "id": "obj-92",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "float", "int", "int" ],
                    "patching_rect": [ 266.0, 114.51063752174377, 81.0, 22.0 ],
                    "text": "unpack 0. 0 0"
                }
            },
            {
                "box": {
                    "id": "obj-91",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 328.0106360912323, 74.40425479412079, 56.0, 22.0 ],
                    "text": "route 7 8"
                }
            },
            {
                "box": {
                    "bgmode": 2,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-90",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "hybrid-synth.maxpat",
                    "numinlets": 4,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 584.0, 149.0, 312.0000046491623, 115.20000171661377 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "bgmode": 2,
                    "border": 0,
                    "clickthrough": 0,
                    "enablehscroll": 0,
                    "enablevscroll": 0,
                    "id": "obj-89",
                    "lockeddragscroll": 0,
                    "lockedsize": 0,
                    "maxclass": "bpatcher",
                    "name": "hybrid-synth.maxpat",
                    "numinlets": 4,
                    "numoutlets": 2,
                    "offset": [ 0.0, 0.0 ],
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 258.0638211965561, 149.0, 312.0000046491623, 115.20000171661377 ],
                    "viewvisibility": 1
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "maxclass": "newobj",
                    "numinlets": 4,
                    "numoutlets": 0,
                    "patching_rect": [ 724.4680799245834, 288.29787027835846, 102.0, 22.0 ],
                    "text": "dac~ 17 18 19 20"
                }
            },
            {
                "box": {
                    "id": "obj-10",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 672.3404207229614, 343.6170188188553, 94.0, 20.0 ],
                    "text": "<- 'amp-cv-X"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-70",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 621.2765913009644, 343.6170188188553, 39.0, 22.0 ],
                    "varname": "amp-cv-8"
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
                    "patching_rect": [ 577.6595703363419, 343.6170188188553, 39.0, 22.0 ],
                    "varname": "amp-cv-7"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-15",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 531.9148898124695, 343.6170188188553, 39.0, 22.0 ],
                    "varname": "amp-cv-6"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-40",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 485.10637950897217, 343.6170188188553, 39.0, 22.0 ],
                    "varname": "amp-cv-5"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-77",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 439.3616989850998, 343.6170188188553, 39.0, 22.0 ],
                    "varname": "amp-cv-4"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-95",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 394.68084824085236, 343.6170188188553, 39.0, 22.0 ],
                    "varname": "amp-cv-3"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-96",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 349.9999974966049, 343.6170188188553, 39.0, 22.0 ],
                    "varname": "amp-cv-2"
                }
            },
            {
                "box": {
                    "format": 6,
                    "id": "obj-97",
                    "maxclass": "flonum",
                    "maximum": 1.0,
                    "minimum": 0.0,
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 303.1914871931076, 343.6170188188553, 39.0, 22.0 ],
                    "varname": "amp-cv-1"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 184.04255187511444, 175.53191363811493, 25.200002789497375, 35.0 ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 158.5106371641159, 175.53191363811493, 25.200002789497375, 35.0 ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "id": "obj-76",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 136.1702117919922, 175.53191363811493, 25.200002789497375, 35.0 ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "id": "obj-74",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 115.95744597911835, 175.53191363811493, 25.200002789497375, 35.0 ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "id": "obj-73",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 95.7446801662445, 175.53191363811493, 25.200002789497375, 35.0 ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "id": "obj-72",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 70.21276545524597, 175.53191363811493, 25.200002789497375, 35.0 ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "id": "obj-71",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 47.87234008312225, 175.53191363811493, 25.200002789497375, 35.0 ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "id": "obj-67",
                    "linecount": 2,
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 25.531914710998535, 175.53191363811493, 25.200002789497375, 35.0 ],
                    "text": "sig~"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 308.5106360912323, 313.829784989357, 95.0, 20.0 ],
                    "text": "amp CV, 0.1/oct"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 52.12765920162201, 253.19148755073547, 95.0, 20.0 ],
                    "text": "pitch CV, 0.1/oct"
                }
            },
            {
                "box": {
                    "id": "obj-7",
                    "maxclass": "newobj",
                    "numinlets": 9,
                    "numoutlets": 9,
                    "outlettype": [ "", "", "", "", "", "", "", "", "" ],
                    "patching_rect": [ 303.1914871931076, 288.29787027835846, 382.42856625148227, 22.0 ],
                    "text": "route 1 2 3 4 5 6 7 8"
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 8,
                    "numoutlets": 0,
                    "patching_rect": [ 53.19148898124695, 228.72340261936188, 122.0, 22.0 ],
                    "text": "dac~ 1 2 3 4 5 6 9 10"
                }
            },
            {
                "box": {
                    "id": "obj-83",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 230.85106217861176, 308.5106360912323, 46.0, 22.0 ],
                    "text": "r es5-8"
                }
            },
            {
                "box": {
                    "id": "obj-84",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 197.87233901023865, 284.0425511598587, 46.0, 22.0 ],
                    "text": "r es5-7"
                }
            },
            {
                "box": {
                    "id": "obj-85",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 173.40425407886505, 308.5106360912323, 46.0, 22.0 ],
                    "text": "r es5-6"
                }
            },
            {
                "box": {
                    "id": "obj-86",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 139.361701130867, 284.0425511598587, 46.0, 22.0 ],
                    "text": "r es5-5"
                }
            },
            {
                "box": {
                    "id": "obj-81",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 117.02127575874329, 308.5106360912323, 46.0, 22.0 ],
                    "text": "r es5-4"
                }
            },
            {
                "box": {
                    "id": "obj-82",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 84.04255259037018, 284.0425511598587, 46.0, 22.0 ],
                    "text": "r es5-3"
                }
            },
            {
                "box": {
                    "id": "obj-80",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 64.89361655712128, 308.5106360912323, 46.0, 22.0 ],
                    "text": "r es5-2"
                }
            },
            {
                "box": {
                    "id": "obj-79",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 31.91489338874817, 284.0425511598587, 46.0, 22.0 ],
                    "text": "r es5-1"
                }
            },
            {
                "box": {
                    "id": "obj-78",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1.063829779624939, 344.6808485984802, 50.0, 20.0 ],
                    "text": " 'es5-X"
                }
            },
            {
                "box": {
                    "id": "obj-52",
                    "linecount": 3,
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 15.957446694374084, 387.2340397834778, 101.0, 47.0 ],
                    "text": "sending 1 or 0 to these opens and closes the gate"
                }
            },
            {
                "box": {
                    "id": "obj-54",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 122.34042465686798, 414.8936140537262, 55.0, 22.0 ],
                    "text": "dac~ 7 8"
                }
            },
            {
                "box": {
                    "id": "obj-28",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 246.80850887298584, 343.6170188188553, 24.0, 24.0 ],
                    "varname": "es5-8"
                }
            },
            {
                "box": {
                    "id": "obj-56",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 218.0851048231125, 343.6170188188553, 24.0, 24.0 ],
                    "varname": "es5-7"
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 190.42553055286407, 343.6170188188553, 24.0, 24.0 ],
                    "varname": "es5-6"
                }
            },
            {
                "box": {
                    "id": "obj-57",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 164.89361584186554, 343.6170188188553, 24.0, 24.0 ],
                    "varname": "es5-5"
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 136.1702117919922, 343.6170188188553, 24.0, 24.0 ],
                    "varname": "es5-4"
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
                    "patching_rect": [ 110.63829708099365, 343.6170188188553, 24.0, 24.0 ],
                    "varname": "es5-3"
                }
            },
            {
                "box": {
                    "id": "obj-20",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 81.9148930311203, 343.6170188188553, 24.0, 24.0 ],
                    "varname": "es5-2"
                }
            },
            {
                "box": {
                    "id": "obj-65",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 53.19148898124695, 343.6170188188553, 24.0, 24.0 ],
                    "varname": "es5-1"
                }
            },
            {
                "box": {
                    "id": "obj-66",
                    "maxclass": "newobj",
                    "numinlets": 16,
                    "numoutlets": 3,
                    "outlettype": [ "signal", "signal", "" ],
                    "patching_rect": [ 122.34042465686798, 387.2340397834778, 443.0, 22.0 ],
                    "text": "es5~"
                }
            },
            {
                "box": {
                    "id": "obj-29",
                    "maxclass": "ezdac~",
                    "numinlets": 2,
                    "numoutlets": 0,
                    "patching_rect": [ 11.702127575874329, 79.78723347187042, 30.0, 30.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-75",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 442.95744347572327, 740.0, 81.0, 22.0 ],
                    "text": "midioutput 16"
                }
            },
            {
                "box": {
                    "id": "obj-53",
                    "maxclass": "newobj",
                    "numinlets": 10,
                    "numoutlets": 10,
                    "outlettype": [ "", "", "", "", "", "", "", "", "", "" ],
                    "patching_rect": [ 52.12765920162201, 124.46808421611786, 126.0, 22.0 ],
                    "text": "route 1 2 3 4 5 6 7 8 9"
                }
            },
            {
                "box": {
                    "id": "obj-64",
                    "int": 1,
                    "maxclass": "gswitch2",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 480.8510603904724, 598.9361659288406, 39.0, 32.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-55",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 480.8510603904724, 571.2765916585922, 62.0, 22.0 ],
                    "text": "55 60 120"
                }
            },
            {
                "box": {
                    "id": "obj-45",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 480.8510603904724, 505.319145321846, 23.09999990463257, 23.09999990463257 ]
                }
            },
            {
                "box": {
                    "id": "obj-39",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 552.1276556253433, 536.1702089309692, 52.80000078678131, 20.0 ],
                    "text": "'metro"
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "button",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 552.1276556253433, 582.9787192344666, 29.19999486207962, 29.19999486207962 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 480.8510603904724, 534.0425493717194, 60.0, 23.0 ],
                    "text": "metro 4n",
                    "varname": "metro"
                }
            },
            {
                "box": {
                    "id": "obj-63",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 230.85106217861176, 7.446808457374573, 79.0, 22.0 ],
                    "text": "(s1 'run-step)"
                }
            },
            {
                "box": {
                    "id": "obj-62",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 465.95744347572327, 7.446808457374573, 70.0, 22.0 ],
                    "text": "(s4m-reset)"
                }
            },
            {
                "box": {
                    "id": "obj-61",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 319.1489338874817, 7.446808457374573, 61.0, 22.0 ],
                    "text": "(live-stop)"
                }
            },
            {
                "box": {
                    "id": "obj-60",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 394.68084824085236, 7.446808457374573, 61.0, 22.0 ],
                    "text": "(live-play)"
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 357.4468059539795, 513.8297835588455, 78.0, 20.0 ],
                    "text": "'transport"
                }
            },
            {
                "box": {
                    "id": "obj-46",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 307.44680631160736, 480.8510603904724, 52.0, 20.0 ],
                    "text": "'locate"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "format": 6,
                    "id": "obj-49",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 182.9787220954895, 573.4042512178421, 41.600000619888306, 23.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-48",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 98.93616950511932, 452.12765634059906, 71.20000106096268, 20.0 ],
                    "text": "'tempo-line"
                }
            },
            {
                "box": {
                    "id": "obj-42",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "patching_rect": [ 53.19148898124695, 449.9999967813492, 40.0, 22.0 ],
                    "text": "line",
                    "varname": "tempo-line"
                }
            },
            {
                "box": {
                    "id": "obj-38",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 53.19148898124695, 478.72340083122253, 59.0, 22.0 ],
                    "text": "tempo $1"
                }
            },
            {
                "box": {
                    "id": "obj-32",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 278.723402261734, 599.9999957084656, 72.0, 22.0 ],
                    "text": "prepend set"
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 310.6382956504822, 513.8297835588455, 42.0, 22.0 ],
                    "varname": "locate"
                }
            },
            {
                "box": {
                    "attr": "tempo",
                    "fontface": 0,
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-17",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 182.80850887298584, 452.12765634059906, 152.0, 23.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "format": 6,
                    "id": "obj-21",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 319.1489338874817, 573.4042512178421, 79.0, 23.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-22",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "bang", "" ],
                    "patching_rect": [ 7.446808457374573, 515.9574431180954, 39.0, 23.0 ],
                    "text": "sel 0"
                }
            },
            {
                "box": {
                    "id": "obj-23",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 278.723402261734, 575.531910777092, 20.0, 20.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-36",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 235.1063812971115, 573.4042512178421, 30.24999701976776, 23.0 ],
                    "text": "4 4"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "format": 6,
                    "id": "obj-41",
                    "maxclass": "flonum",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 121.27659487724304, 573.4042512178421, 48.800000727176666, 23.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-43",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 88.29787170886993, 573.4042512178421, 28.800000429153442, 23.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-44",
                    "maxclass": "number",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "", "bang" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 43.6170209646225, 573.4042512178421, 43.0, 23.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-47",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 7.446808457374573, 480.8510603904724, 25.0, 25.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-50",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 9,
                    "outlettype": [ "int", "int", "float", "float", "float", "", "int", "float", "" ],
                    "patching_rect": [ 53.19148898124695, 545.7446769475937, 345.0, 23.0 ],
                    "text": "transport",
                    "varname": "transport"
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-51",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 74.46808457374573, 515.9574431180954, 210.0, 23.0 ],
                    "text": "metro @interval 1 ticks @active 1"
                }
            },
            {
                "box": {
                    "id": "obj-31",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 1205.0, 6.446808457374573, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-25",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 1205.0, 72.44680845737457, 47.0, 22.0 ],
                    "text": "s #0_in"
                }
            },
            {
                "box": {
                    "id": "obj-24",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1205.0, 42.44680845737457, 64.0, 22.0 ],
                    "text": "log-null $1"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patching_rect": [ 4.255319118499756, 46.5, 55.0, 22.0 ],
                    "text": "zl.slice 1"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 4.255319118499756, 7.446808457374573, 97.0, 22.0 ],
                    "text": "udpreceive 7777"
                }
            },
            {
                "box": {
                    "id": "obj-33",
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 153.1914882659912, 7.446808457374573, 35.0, 22.0 ],
                    "text": "reset",
                    "varname": "s4m-reset"
                }
            },
            {
                "box": {
                    "id": "obj-35",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 105.31914818286896, 7.446808457374573, 45.0, 22.0 ],
                    "text": "r #0_in"
                }
            },
            {
                "box": {
                    "id": "obj-37",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 3,
                    "outlettype": [ "", "", "" ],
                    "patching_rect": [ 44.46808457374573, 69.14893567562103, 270.0, 22.0 ],
                    "saved_object_attributes": {
                        "heap": 32,
                        "ins": 1,
                        "log-null": 0,
                        "outs": 3,
                        "thread": 104
                    },
                    "text": "s4m mod-template-main.scm @outs 3 @heap 32"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-1", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-102", 1 ],
                    "source": [ "obj-100", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-101", 0 ],
                    "source": [ "obj-102", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-118", 0 ],
                    "source": [ "obj-103", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "midpoints": [ 612.6914850473404, 47.71010779775679, 53.96808457374573, 47.71010779775679 ],
                    "source": [ "obj-104", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-107", 0 ],
                    "order": 0,
                    "source": [ "obj-105", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-110", 0 ],
                    "order": 0,
                    "source": [ "obj-105", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-112", 0 ],
                    "source": [ "obj-105", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-113", 3 ],
                    "source": [ "obj-105", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-113", 2 ],
                    "order": 1,
                    "source": [ "obj-105", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-113", 1 ],
                    "order": 1,
                    "source": [ "obj-105", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-113", 0 ],
                    "order": 1,
                    "source": [ "obj-105", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-98", 0 ],
                    "order": 0,
                    "source": [ "obj-105", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-89", 3 ],
                    "order": 1,
                    "source": [ "obj-106", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-90", 3 ],
                    "midpoints": [ 541.4148898124695, 142.70620234985836, 886.5000046491623, 142.70620234985836 ],
                    "order": 0,
                    "source": [ "obj-106", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "source": [ "obj-108", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-105", 0 ],
                    "source": [ "obj-109", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "midpoints": [ 713.5, 47.08984375, 53.96808457374573, 47.08984375 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-105", 0 ],
                    "source": [ "obj-111", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-115", 0 ],
                    "source": [ "obj-114", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "source": [ "obj-115", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-120", 0 ],
                    "source": [ "obj-116", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-118", 0 ],
                    "source": [ "obj-119", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-124", 1 ],
                    "order": 0,
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-124", 0 ],
                    "order": 1,
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-121", 0 ],
                    "source": [ "obj-120", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-118", 0 ],
                    "source": [ "obj-122", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-123", 1 ],
                    "source": [ "obj-124", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-123", 0 ],
                    "source": [ "obj-124", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-130", 0 ],
                    "source": [ "obj-126", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-129", 0 ],
                    "order": 1,
                    "source": [ "obj-127", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-132", 0 ],
                    "order": 0,
                    "source": [ "obj-127", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-101", 0 ],
                    "midpoints": [ 695.9680799245834, 680.6163566112518, 623.3297828435898, 680.6163566112518 ],
                    "source": [ "obj-129", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-55", 0 ],
                    "order": 2,
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-88", 0 ],
                    "order": 0,
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "order": 1,
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-127", 0 ],
                    "source": [ "obj-130", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-131", 0 ],
                    "source": [ "obj-133", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-136", 0 ],
                    "source": [ "obj-137", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 13 ],
                    "source": [ "obj-15", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 1 ],
                    "midpoints": [ 320.1382956504822, 540.1263544559479, 388.69148898124695, 540.1263544559479 ],
                    "source": [ "obj-16", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "midpoints": [ 192.30850887298584, 506.80223005032167, 61.66791205666959, 506.80223005032167, 61.66791205666959, 520.9189060633071, 62.69148898124695, 520.9189060633071 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 6 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 1 ],
                    "source": [ "obj-20", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "source": [ "obj-22", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-32", 0 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-25", 0 ],
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 3 ],
                    "source": [ "obj-27", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 7 ],
                    "source": [ "obj-28", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 5 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
                    "source": [ "obj-31", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-47", 0 ],
                    "midpoints": [ 288.223402261734, 627.1576053653844, 3.860861344495788, 627.1576053653844, 3.860861344495788, 475.33572771563195, 16.946808457374573, 475.33572771563195 ],
                    "source": [ "obj-32", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "midpoints": [ 162.6914882659912, 45.08510661125183, 53.96808457374573, 45.08510661125183 ],
                    "source": [ "obj-33", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "midpoints": [ 202.05319011211395, 49.10073281847872, 53.96808457374573, 49.10073281847872 ],
                    "source": [ "obj-34", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "midpoints": [ 114.81914818286896, 44.08510661125183, 53.96808457374573, 44.08510661125183 ],
                    "source": [ "obj-35", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-53", 0 ],
                    "source": [ "obj-37", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-7", 0 ],
                    "midpoints": [ 179.46808457374573, 117.3569838355761, 246.99062868044712, 117.3569838355761, 246.99062868044712, 281.88198628718965, 312.6914871931076, 281.88198628718965 ],
                    "source": [ "obj-37", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-91", 0 ],
                    "source": [ "obj-37", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "source": [ "obj-38", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 7 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 12 ],
                    "source": [ "obj-40", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-38", 0 ],
                    "source": [ "obj-42", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-13", 0 ],
                    "source": [ "obj-45", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "order": 1,
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "midpoints": [ 16.946808457374573, 510.1263539195061, 62.69148898124695, 510.1263539195061 ],
                    "order": 0,
                    "source": [ "obj-47", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-116", 1 ],
                    "midpoints": [ 767.5, 33.85546875, 827.3510533571243, 33.85546875 ],
                    "order": 0,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-116", 0 ],
                    "order": 1,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-117", 0 ],
                    "order": 2,
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-50", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-50", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-36", 1 ],
                    "source": [ "obj-50", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "source": [ "obj-50", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-43", 0 ],
                    "source": [ "obj-50", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-44", 0 ],
                    "source": [ "obj-50", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "source": [ "obj-50", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-50", 0 ],
                    "source": [ "obj-51", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-2", 0 ],
                    "source": [ "obj-53", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-4", 0 ],
                    "source": [ "obj-53", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-67", 0 ],
                    "source": [ "obj-53", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-71", 0 ],
                    "source": [ "obj-53", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-72", 0 ],
                    "source": [ "obj-53", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-73", 0 ],
                    "source": [ "obj-53", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-74", 0 ],
                    "source": [ "obj-53", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-76", 0 ],
                    "source": [ "obj-53", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-64", 1 ],
                    "source": [ "obj-55", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 6 ],
                    "source": [ "obj-56", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 4 ],
                    "source": [ "obj-57", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 2 ],
                    "source": [ "obj-59", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "source": [ "obj-6", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "midpoints": [ 404.18084824085236, 47.08510661125183, 53.96808457374573, 47.08510661125183 ],
                    "source": [ "obj-60", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "midpoints": [ 328.6489338874817, 45.96010777167976, 53.96808457374573, 45.96010777167976 ],
                    "source": [ "obj-61", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-133", 0 ],
                    "order": 0,
                    "source": [ "obj-62", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "midpoints": [ 475.45744347572327, 47.08510661125183, 53.96808457374573, 47.08510661125183 ],
                    "order": 1,
                    "source": [ "obj-62", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "midpoints": [ 240.35106217861176, 46.08510661125183, 53.96808457374573, 46.08510661125183 ],
                    "source": [ "obj-63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-75", 0 ],
                    "source": [ "obj-64", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 0 ],
                    "source": [ "obj-65", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 1 ],
                    "source": [ "obj-66", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-54", 0 ],
                    "source": [ "obj-66", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "source": [ "obj-67", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 14 ],
                    "source": [ "obj-69", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-15", 0 ],
                    "source": [ "obj-7", 5 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-40", 0 ],
                    "source": [ "obj-7", 4 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-69", 0 ],
                    "source": [ "obj-7", 6 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-70", 0 ],
                    "source": [ "obj-7", 7 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-77", 0 ],
                    "source": [ "obj-7", 3 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-95", 0 ],
                    "source": [ "obj-7", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-96", 0 ],
                    "source": [ "obj-7", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-97", 0 ],
                    "source": [ "obj-7", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 15 ],
                    "source": [ "obj-70", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 1 ],
                    "source": [ "obj-71", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 2 ],
                    "source": [ "obj-72", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 3 ],
                    "source": [ "obj-73", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 4 ],
                    "source": [ "obj-74", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 5 ],
                    "source": [ "obj-76", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 11 ],
                    "source": [ "obj-77", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-65", 0 ],
                    "source": [ "obj-79", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-20", 0 ],
                    "source": [ "obj-80", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "source": [ "obj-81", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-59", 0 ],
                    "source": [ "obj-82", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-28", 0 ],
                    "source": [ "obj-83", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-56", 0 ],
                    "source": [ "obj-84", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-30", 0 ],
                    "source": [ "obj-85", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-57", 0 ],
                    "source": [ "obj-86", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-37", 0 ],
                    "midpoints": [ 556.3085067272186, 47.23198279063217, 53.96808457374573, 47.23198279063217 ],
                    "source": [ "obj-87", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-100", 0 ],
                    "source": [ "obj-88", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 1 ],
                    "midpoints": [ 560.5638258457184, 267.4569860722404, 761.6347465912501, 267.4569860722404 ],
                    "source": [ "obj-89", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "midpoints": [ 267.5638211965561, 269.2757360993419, 733.9680799245834, 269.2757360993419 ],
                    "source": [ "obj-89", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-9", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 3 ],
                    "midpoints": [ 886.5000046491623, 267.2788610695861, 816.9680799245834, 267.2788610695861 ],
                    "source": [ "obj-90", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 2 ],
                    "midpoints": [ 593.5, 268.61323608946986, 789.3014132579168, 268.61323608946986 ],
                    "source": [ "obj-90", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-92", 0 ],
                    "source": [ "obj-91", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-93", 0 ],
                    "midpoints": [ 356.0106360912323, 106.9413586803712 ],
                    "source": [ "obj-91", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-89", 2 ],
                    "source": [ "obj-92", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-89", 1 ],
                    "source": [ "obj-92", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-89", 0 ],
                    "source": [ "obj-92", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-90", 2 ],
                    "source": [ "obj-93", 2 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-90", 1 ],
                    "source": [ "obj-93", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-90", 0 ],
                    "source": [ "obj-93", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-105", 0 ],
                    "source": [ "obj-94", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 10 ],
                    "source": [ "obj-95", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 9 ],
                    "source": [ "obj-96", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-66", 8 ],
                    "source": [ "obj-97", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-105", 0 ],
                    "midpoints": [ 836.0957387685776, 415.59448827966116, 639.2872295379639, 415.59448827966116 ],
                    "source": [ "obj-99", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-124": [ "live.gain~", "live.gain~", 0 ],
            "obj-5::obj-20": [ "live.gain~[3]", "live.gain~[2]", 0 ],
            "obj-5::obj-83": [ "vst~", "vst~", 0 ],
            "obj-5::obj-91": [ "live.gain~[4]", "live.gain~[2]", 0 ],
            "obj-89::obj-14": [ "number[9]", "number", 0 ],
            "obj-89::obj-22": [ "number[12]", "number[2]", 0 ],
            "obj-89::obj-23": [ "number[15]", "number[2]", 0 ],
            "obj-89::obj-24": [ "number[11]", "number[2]", 0 ],
            "obj-89::obj-26": [ "number[16]", "number[8]", 0 ],
            "obj-89::obj-27": [ "flonum[2]", "flonum", 0 ],
            "obj-89::obj-28": [ "flonum[3]", "flonum", 0 ],
            "obj-89::obj-29": [ "number[14]", "number[2]", 0 ],
            "obj-89::obj-30": [ "number[10]", "number[2]", 0 ],
            "obj-89::obj-31": [ "number[13]", "number[2]", 0 ],
            "obj-90::obj-14": [ "number", "number", 0 ],
            "obj-90::obj-22": [ "number[3]", "number[2]", 0 ],
            "obj-90::obj-23": [ "number[2]", "number[2]", 0 ],
            "obj-90::obj-24": [ "number[4]", "number[2]", 0 ],
            "obj-90::obj-26": [ "number[8]", "number[8]", 0 ],
            "obj-90::obj-27": [ "flonum", "flonum", 0 ],
            "obj-90::obj-28": [ "flonum[1]", "flonum", 0 ],
            "obj-90::obj-29": [ "number[5]", "number[2]", 0 ],
            "obj-90::obj-30": [ "number[6]", "number[2]", 0 ],
            "obj-90::obj-31": [ "number[7]", "number[2]", 0 ],
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}