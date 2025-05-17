import Foundation

///
/// Static access to `Locale` instances for all supported `LocaleIdentifier` cases.
///
/// This extension provides a static `Locale` for each `LocaleIdentifier`,
/// allowing easy and readable access without manually instantiating each one.
///
/// - Example:
/// ```swift
/// let brazilian = Locale.ptBR
/// let american = Locale.enUS
/// ```
///
public extension Locale {
    /// Locale for aa-DJ
    static let aaDJ = LocaleIdentifier.aaDJ.locale!
    /// Locale for aa-ER
    static let aaER = LocaleIdentifier.aaER.locale!
    /// Locale for aa-ET
    static let aaET = LocaleIdentifier.aaET.locale!
    /// Locale for ab-GE
    static let abGE = LocaleIdentifier.abGE.locale!
    /// Locale for af-NA
    static let afNA = LocaleIdentifier.afNA.locale!
    /// Locale for af-ZA
    static let afZA = LocaleIdentifier.afZA.locale!
    /// Locale for ak-GH
    static let akGH = LocaleIdentifier.akGH.locale!
    /// Locale for am-ET
    static let amET = LocaleIdentifier.amET.locale!
    /// Locale for an-ES
    static let anES = LocaleIdentifier.anES.locale!
    /// Locale for ar-AE
    static let arAE = LocaleIdentifier.arAE.locale!
    /// Locale for ar-BH
    static let arBH = LocaleIdentifier.arBH.locale!
    /// Locale for ar-DJ
    static let arDJ = LocaleIdentifier.arDJ.locale!
    /// Locale for ar-DZ
    static let arDZ = LocaleIdentifier.arDZ.locale!
    /// Locale for ar-EG
    static let arEG = LocaleIdentifier.arEG.locale!
    /// Locale for ar-EH
    static let arEH = LocaleIdentifier.arEH.locale!
    /// Locale for ar-ER
    static let arER = LocaleIdentifier.arER.locale!
    /// Locale for ar-IL
    static let arIL = LocaleIdentifier.arIL.locale!
    /// Locale for ar-IQ
    static let arIQ = LocaleIdentifier.arIQ.locale!
    /// Locale for ar-JO
    static let arJO = LocaleIdentifier.arJO.locale!
    /// Locale for ar-KM
    static let arKM = LocaleIdentifier.arKM.locale!
    /// Locale for ar-KW
    static let arKW = LocaleIdentifier.arKW.locale!
    /// Locale for ar-LB
    static let arLB = LocaleIdentifier.arLB.locale!
    /// Locale for ar-LY
    static let arLY = LocaleIdentifier.arLY.locale!
    /// Locale for ar-MA
    static let arMA = LocaleIdentifier.arMA.locale!
    /// Locale for ar-MR
    static let arMR = LocaleIdentifier.arMR.locale!
    /// Locale for ar-OM
    static let arOM = LocaleIdentifier.arOM.locale!
    /// Locale for ar-PS
    static let arPS = LocaleIdentifier.arPS.locale!
    /// Locale for ar-QA
    static let arQA = LocaleIdentifier.arQA.locale!
    /// Locale for ar-SA
    static let arSA = LocaleIdentifier.arSA.locale!
    /// Locale for ar-SD
    static let arSD = LocaleIdentifier.arSD.locale!
    /// Locale for ar-SO
    static let arSO = LocaleIdentifier.arSO.locale!
    /// Locale for ar-SS
    static let arSS = LocaleIdentifier.arSS.locale!
    /// Locale for ar-SY
    static let arSY = LocaleIdentifier.arSY.locale!
    /// Locale for ar-TD
    static let arTD = LocaleIdentifier.arTD.locale!
    /// Locale for ar-TN
    static let arTN = LocaleIdentifier.arTN.locale!
    /// Locale for ar-YE
    static let arYE = LocaleIdentifier.arYE.locale!
    /// Locale for as-IN
    static let asIN = LocaleIdentifier.asIN.locale!
    /// Locale for ba-RU
    static let baRU = LocaleIdentifier.baRU.locale!
    /// Locale for be-BY
    static let beBY = LocaleIdentifier.beBY.locale!
    /// Locale for bg-BG
    static let bgBG = LocaleIdentifier.bgBG.locale!
    /// Locale for bm-ML
    static let bmML = LocaleIdentifier.bmML.locale!
    /// Locale for bn-BD
    static let bnBD = LocaleIdentifier.bnBD.locale!
    /// Locale for bn-IN
    static let bnIN = LocaleIdentifier.bnIN.locale!
    /// Locale for bo-CN
    static let boCN = LocaleIdentifier.boCN.locale!
    /// Locale for bo-IN
    static let boIN = LocaleIdentifier.boIN.locale!
    /// Locale for br-FR
    static let brFR = LocaleIdentifier.brFR.locale!
    /// Locale for ca-AD
    static let caAD = LocaleIdentifier.caAD.locale!
    /// Locale for ca-ES
    static let caES = LocaleIdentifier.caES.locale!
    /// Locale for ca-ES-VALENCIA
    static let caESVALENCIA = LocaleIdentifier.caESVALENCIA.locale!
    /// Locale for ca-FR
    static let caFR = LocaleIdentifier.caFR.locale!
    /// Locale for ca-IT
    static let caIT = LocaleIdentifier.caIT.locale!
    /// Locale for ce-RU
    static let ceRU = LocaleIdentifier.ceRU.locale!
    /// Locale for co-FR
    static let coFR = LocaleIdentifier.coFR.locale!
    /// Locale for cs-CZ
    static let csCZ = LocaleIdentifier.csCZ.locale!
    /// Locale for cu-RU
    static let cuRU = LocaleIdentifier.cuRU.locale!
    /// Locale for cv-RU
    static let cvRU = LocaleIdentifier.cvRU.locale!
    /// Locale for cy-GB
    static let cyGB = LocaleIdentifier.cyGB.locale!
    /// Locale for da-DK
    static let daDK = LocaleIdentifier.daDK.locale!
    /// Locale for da-GL
    static let daGL = LocaleIdentifier.daGL.locale!
    /// Locale for de-AT
    static let deAT = LocaleIdentifier.deAT.locale!
    /// Locale for de-BE
    static let deBE = LocaleIdentifier.deBE.locale!
    /// Locale for de-CH
    static let deCH = LocaleIdentifier.deCH.locale!
    /// Locale for de-DE
    static let deDE = LocaleIdentifier.deDE.locale!
    /// Locale for de-IT
    static let deIT = LocaleIdentifier.deIT.locale!
    /// Locale for de-LI
    static let deLI = LocaleIdentifier.deLI.locale!
    /// Locale for de-LU
    static let deLU = LocaleIdentifier.deLU.locale!
    /// Locale for dv-MV
    static let dvMV = LocaleIdentifier.dvMV.locale!
    /// Locale for dz-BT
    static let dzBT = LocaleIdentifier.dzBT.locale!
    /// Locale for ee-GH
    static let eeGH = LocaleIdentifier.eeGH.locale!
    /// Locale for ee-TG
    static let eeTG = LocaleIdentifier.eeTG.locale!
    /// Locale for el-CY
    static let elCY = LocaleIdentifier.elCY.locale!
    /// Locale for el-GR
    static let elGR = LocaleIdentifier.elGR.locale!
    /// Locale for en-AE
    static let enAE = LocaleIdentifier.enAE.locale!
    /// Locale for en-AG
    static let enAG = LocaleIdentifier.enAG.locale!
    /// Locale for en-AI
    static let enAI = LocaleIdentifier.enAI.locale!
    /// Locale for en-AS
    static let enAS = LocaleIdentifier.enAS.locale!
    /// Locale for en-AT
    static let enAT = LocaleIdentifier.enAT.locale!
    /// Locale for en-AU
    static let enAU = LocaleIdentifier.enAU.locale!
    /// Locale for en-BB
    static let enBB = LocaleIdentifier.enBB.locale!
    /// Locale for en-BE
    static let enBE = LocaleIdentifier.enBE.locale!
    /// Locale for en-BI
    static let enBI = LocaleIdentifier.enBI.locale!
    /// Locale for en-BM
    static let enBM = LocaleIdentifier.enBM.locale!
    /// Locale for en-BS
    static let enBS = LocaleIdentifier.enBS.locale!
    /// Locale for en-BW
    static let enBW = LocaleIdentifier.enBW.locale!
    /// Locale for en-BZ
    static let enBZ = LocaleIdentifier.enBZ.locale!
    /// Locale for en-CA
    static let enCA = LocaleIdentifier.enCA.locale!
    /// Locale for en-CC
    static let enCC = LocaleIdentifier.enCC.locale!
    /// Locale for en-CH
    static let enCH = LocaleIdentifier.enCH.locale!
    /// Locale for en-CK
    static let enCK = LocaleIdentifier.enCK.locale!
    /// Locale for en-CM
    static let enCM = LocaleIdentifier.enCM.locale!
    /// Locale for en-CX
    static let enCX = LocaleIdentifier.enCX.locale!
    /// Locale for en-CY
    static let enCY = LocaleIdentifier.enCY.locale!
    /// Locale for en-DE
    static let enDE = LocaleIdentifier.enDE.locale!
    /// Locale for en-DG
    static let enDG = LocaleIdentifier.enDG.locale!
    /// Locale for en-DK
    static let enDK = LocaleIdentifier.enDK.locale!
    /// Locale for en-DM
    static let enDM = LocaleIdentifier.enDM.locale!
    /// Locale for en-ER
    static let enER = LocaleIdentifier.enER.locale!
    /// Locale for en-FI
    static let enFI = LocaleIdentifier.enFI.locale!
    /// Locale for en-FJ
    static let enFJ = LocaleIdentifier.enFJ.locale!
    /// Locale for en-FK
    static let enFK = LocaleIdentifier.enFK.locale!
    /// Locale for en-FM
    static let enFM = LocaleIdentifier.enFM.locale!
    /// Locale for en-GB
    static let enGB = LocaleIdentifier.enGB.locale!
    /// Locale for en-GD
    static let enGD = LocaleIdentifier.enGD.locale!
    /// Locale for en-GG
    static let enGG = LocaleIdentifier.enGG.locale!
    /// Locale for en-GH
    static let enGH = LocaleIdentifier.enGH.locale!
    /// Locale for en-GI
    static let enGI = LocaleIdentifier.enGI.locale!
    /// Locale for en-GM
    static let enGM = LocaleIdentifier.enGM.locale!
    /// Locale for en-GU
    static let enGU = LocaleIdentifier.enGU.locale!
    /// Locale for en-GY
    static let enGY = LocaleIdentifier.enGY.locale!
    /// Locale for en-HK
    static let enHK = LocaleIdentifier.enHK.locale!
    /// Locale for en-ID
    static let enID = LocaleIdentifier.enID.locale!
    /// Locale for en-IE
    static let enIE = LocaleIdentifier.enIE.locale!
    /// Locale for en-IL
    static let enIL = LocaleIdentifier.enIL.locale!
    /// Locale for en-IM
    static let enIM = LocaleIdentifier.enIM.locale!
    /// Locale for en-IN
    static let enIN = LocaleIdentifier.enIN.locale!
    /// Locale for en-IO
    static let enIO = LocaleIdentifier.enIO.locale!
    /// Locale for en-JE
    static let enJE = LocaleIdentifier.enJE.locale!
    /// Locale for en-JM
    static let enJM = LocaleIdentifier.enJM.locale!
    /// Locale for en-KE
    static let enKE = LocaleIdentifier.enKE.locale!
    /// Locale for en-KI
    static let enKI = LocaleIdentifier.enKI.locale!
    /// Locale for en-KN
    static let enKN = LocaleIdentifier.enKN.locale!
    /// Locale for en-KY
    static let enKY = LocaleIdentifier.enKY.locale!
    /// Locale for en-LC
    static let enLC = LocaleIdentifier.enLC.locale!
    /// Locale for en-LR
    static let enLR = LocaleIdentifier.enLR.locale!
    /// Locale for en-LS
    static let enLS = LocaleIdentifier.enLS.locale!
    /// Locale for en-MG
    static let enMG = LocaleIdentifier.enMG.locale!
    /// Locale for en-MH
    static let enMH = LocaleIdentifier.enMH.locale!
    /// Locale for en-MO
    static let enMO = LocaleIdentifier.enMO.locale!
    /// Locale for en-MP
    static let enMP = LocaleIdentifier.enMP.locale!
    /// Locale for en-MS
    static let enMS = LocaleIdentifier.enMS.locale!
    /// Locale for en-MT
    static let enMT = LocaleIdentifier.enMT.locale!
    /// Locale for en-MU
    static let enMU = LocaleIdentifier.enMU.locale!
    /// Locale for en-MV
    static let enMV = LocaleIdentifier.enMV.locale!
    /// Locale for en-MW
    static let enMW = LocaleIdentifier.enMW.locale!
    /// Locale for en-MY
    static let enMY = LocaleIdentifier.enMY.locale!
    /// Locale for en-NA
    static let enNA = LocaleIdentifier.enNA.locale!
    /// Locale for en-NF
    static let enNF = LocaleIdentifier.enNF.locale!
    /// Locale for en-NG
    static let enNG = LocaleIdentifier.enNG.locale!
    /// Locale for en-NL
    static let enNL = LocaleIdentifier.enNL.locale!
    /// Locale for en-NR
    static let enNR = LocaleIdentifier.enNR.locale!
    /// Locale for en-NU
    static let enNU = LocaleIdentifier.enNU.locale!
    /// Locale for en-NZ
    static let enNZ = LocaleIdentifier.enNZ.locale!
    /// Locale for en-PG
    static let enPG = LocaleIdentifier.enPG.locale!
    /// Locale for en-PH
    static let enPH = LocaleIdentifier.enPH.locale!
    /// Locale for en-PK
    static let enPK = LocaleIdentifier.enPK.locale!
    /// Locale for en-PN
    static let enPN = LocaleIdentifier.enPN.locale!
    /// Locale for en-PR
    static let enPR = LocaleIdentifier.enPR.locale!
    /// Locale for en-PW
    static let enPW = LocaleIdentifier.enPW.locale!
    /// Locale for en-RW
    static let enRW = LocaleIdentifier.enRW.locale!
    /// Locale for en-SB
    static let enSB = LocaleIdentifier.enSB.locale!
    /// Locale for en-SC
    static let enSC = LocaleIdentifier.enSC.locale!
    /// Locale for en-SD
    static let enSD = LocaleIdentifier.enSD.locale!
    /// Locale for en-SE
    static let enSE = LocaleIdentifier.enSE.locale!
    /// Locale for en-SG
    static let enSG = LocaleIdentifier.enSG.locale!
    /// Locale for en-SH
    static let enSH = LocaleIdentifier.enSH.locale!
    /// Locale for en-SI
    static let enSI = LocaleIdentifier.enSI.locale!
    /// Locale for en-SL
    static let enSL = LocaleIdentifier.enSL.locale!
    /// Locale for en-SS
    static let enSS = LocaleIdentifier.enSS.locale!
    /// Locale for en-SX
    static let enSX = LocaleIdentifier.enSX.locale!
    /// Locale for en-SZ
    static let enSZ = LocaleIdentifier.enSZ.locale!
    /// Locale for en-TC
    static let enTC = LocaleIdentifier.enTC.locale!
    /// Locale for en-TK
    static let enTK = LocaleIdentifier.enTK.locale!
    /// Locale for en-TO
    static let enTO = LocaleIdentifier.enTO.locale!
    /// Locale for en-TT
    static let enTT = LocaleIdentifier.enTT.locale!
    /// Locale for en-TV
    static let enTV = LocaleIdentifier.enTV.locale!
    /// Locale for en-TZ
    static let enTZ = LocaleIdentifier.enTZ.locale!
    /// Locale for en-UG
    static let enUG = LocaleIdentifier.enUG.locale!
    /// Locale for en-UM
    static let enUM = LocaleIdentifier.enUM.locale!
    /// Locale for en-US
    static let enUS = LocaleIdentifier.enUS.locale!
    /// Locale for en-US-POSIX
    static let enUSPOSIX = LocaleIdentifier.enUSPOSIX.locale!
    /// Locale for en-VC
    static let enVC = LocaleIdentifier.enVC.locale!
    /// Locale for en-VG
    static let enVG = LocaleIdentifier.enVG.locale!
    /// Locale for en-VI
    static let enVI = LocaleIdentifier.enVI.locale!
    /// Locale for en-VU
    static let enVU = LocaleIdentifier.enVU.locale!
    /// Locale for en-WS
    static let enWS = LocaleIdentifier.enWS.locale!
    /// Locale for en-ZA
    static let enZA = LocaleIdentifier.enZA.locale!
    /// Locale for en-ZM
    static let enZM = LocaleIdentifier.enZM.locale!
    /// Locale for en-ZW
    static let enZW = LocaleIdentifier.enZW.locale!
    /// Locale for es-AR
    static let esAR = LocaleIdentifier.esAR.locale!
    /// Locale for es-BO
    static let esBO = LocaleIdentifier.esBO.locale!
    /// Locale for es-BR
    static let esBR = LocaleIdentifier.esBR.locale!
    /// Locale for es-BZ
    static let esBZ = LocaleIdentifier.esBZ.locale!
    /// Locale for es-CL
    static let esCL = LocaleIdentifier.esCL.locale!
    /// Locale for es-CO
    static let esCO = LocaleIdentifier.esCO.locale!
    /// Locale for es-CR
    static let esCR = LocaleIdentifier.esCR.locale!
    /// Locale for es-CU
    static let esCU = LocaleIdentifier.esCU.locale!
    /// Locale for es-DO
    static let esDO = LocaleIdentifier.esDO.locale!
    /// Locale for es-EA
    static let esEA = LocaleIdentifier.esEA.locale!
    /// Locale for es-EC
    static let esEC = LocaleIdentifier.esEC.locale!
    /// Locale for es-ES
    static let esES = LocaleIdentifier.esES.locale!
    /// Locale for es-GQ
    static let esGQ = LocaleIdentifier.esGQ.locale!
    /// Locale for es-GT
    static let esGT = LocaleIdentifier.esGT.locale!
    /// Locale for es-HN
    static let esHN = LocaleIdentifier.esHN.locale!
    /// Locale for es-IC
    static let esIC = LocaleIdentifier.esIC.locale!
    /// Locale for es-MX
    static let esMX = LocaleIdentifier.esMX.locale!
    /// Locale for es-NI
    static let esNI = LocaleIdentifier.esNI.locale!
    /// Locale for es-PA
    static let esPA = LocaleIdentifier.esPA.locale!
    /// Locale for es-PE
    static let esPE = LocaleIdentifier.esPE.locale!
    /// Locale for es-PH
    static let esPH = LocaleIdentifier.esPH.locale!
    /// Locale for es-PR
    static let esPR = LocaleIdentifier.esPR.locale!
    /// Locale for es-PY
    static let esPY = LocaleIdentifier.esPY.locale!
    /// Locale for es-SV
    static let esSV = LocaleIdentifier.esSV.locale!
    /// Locale for es-US
    static let esUS = LocaleIdentifier.esUS.locale!
    /// Locale for es-UY
    static let esUY = LocaleIdentifier.esUY.locale!
    /// Locale for es-VE
    static let esVE = LocaleIdentifier.esVE.locale!
    /// Locale for et-EE
    static let etEE = LocaleIdentifier.etEE.locale!
    /// Locale for eu-ES
    static let euES = LocaleIdentifier.euES.locale!
    /// Locale for fa-AF
    static let faAF = LocaleIdentifier.faAF.locale!
    /// Locale for fa-IR
    static let faIR = LocaleIdentifier.faIR.locale!
    /// Locale for fi-FI
    static let fiFI = LocaleIdentifier.fiFI.locale!
    /// Locale for fo-DK
    static let foDK = LocaleIdentifier.foDK.locale!
    /// Locale for fo-FO
    static let foFO = LocaleIdentifier.foFO.locale!
    /// Locale for fr-BE
    static let frBE = LocaleIdentifier.frBE.locale!
    /// Locale for fr-BF
    static let frBF = LocaleIdentifier.frBF.locale!
    /// Locale for fr-BI
    static let frBI = LocaleIdentifier.frBI.locale!
    /// Locale for fr-BJ
    static let frBJ = LocaleIdentifier.frBJ.locale!
    /// Locale for fr-BL
    static let frBL = LocaleIdentifier.frBL.locale!
    /// Locale for fr-CA
    static let frCA = LocaleIdentifier.frCA.locale!
    /// Locale for fr-CD
    static let frCD = LocaleIdentifier.frCD.locale!
    /// Locale for fr-CF
    static let frCF = LocaleIdentifier.frCF.locale!
    /// Locale for fr-CG
    static let frCG = LocaleIdentifier.frCG.locale!
    /// Locale for fr-CH
    static let frCH = LocaleIdentifier.frCH.locale!
    /// Locale for fr-CI
    static let frCI = LocaleIdentifier.frCI.locale!
    /// Locale for fr-CM
    static let frCM = LocaleIdentifier.frCM.locale!
    /// Locale for fr-DJ
    static let frDJ = LocaleIdentifier.frDJ.locale!
    /// Locale for fr-DZ
    static let frDZ = LocaleIdentifier.frDZ.locale!
    /// Locale for fr-FR
    static let frFR = LocaleIdentifier.frFR.locale!
    /// Locale for fr-GA
    static let frGA = LocaleIdentifier.frGA.locale!
    /// Locale for fr-GF
    static let frGF = LocaleIdentifier.frGF.locale!
    /// Locale for fr-GN
    static let frGN = LocaleIdentifier.frGN.locale!
    /// Locale for fr-GP
    static let frGP = LocaleIdentifier.frGP.locale!
    /// Locale for fr-GQ
    static let frGQ = LocaleIdentifier.frGQ.locale!
    /// Locale for fr-HT
    static let frHT = LocaleIdentifier.frHT.locale!
    /// Locale for fr-KM
    static let frKM = LocaleIdentifier.frKM.locale!
    /// Locale for fr-LU
    static let frLU = LocaleIdentifier.frLU.locale!
    /// Locale for fr-MA
    static let frMA = LocaleIdentifier.frMA.locale!
    /// Locale for fr-MC
    static let frMC = LocaleIdentifier.frMC.locale!
    /// Locale for fr-MF
    static let frMF = LocaleIdentifier.frMF.locale!
    /// Locale for fr-MG
    static let frMG = LocaleIdentifier.frMG.locale!
    /// Locale for fr-ML
    static let frML = LocaleIdentifier.frML.locale!
    /// Locale for fr-MQ
    static let frMQ = LocaleIdentifier.frMQ.locale!
    /// Locale for fr-MR
    static let frMR = LocaleIdentifier.frMR.locale!
    /// Locale for fr-MU
    static let frMU = LocaleIdentifier.frMU.locale!
    /// Locale for fr-NC
    static let frNC = LocaleIdentifier.frNC.locale!
    /// Locale for fr-NE
    static let frNE = LocaleIdentifier.frNE.locale!
    /// Locale for fr-PF
    static let frPF = LocaleIdentifier.frPF.locale!
    /// Locale for fr-PM
    static let frPM = LocaleIdentifier.frPM.locale!
    /// Locale for fr-RE
    static let frRE = LocaleIdentifier.frRE.locale!
    /// Locale for fr-RW
    static let frRW = LocaleIdentifier.frRW.locale!
    /// Locale for fr-SC
    static let frSC = LocaleIdentifier.frSC.locale!
    /// Locale for fr-SN
    static let frSN = LocaleIdentifier.frSN.locale!
    /// Locale for fr-SY
    static let frSY = LocaleIdentifier.frSY.locale!
    /// Locale for fr-TD
    static let frTD = LocaleIdentifier.frTD.locale!
    /// Locale for fr-TG
    static let frTG = LocaleIdentifier.frTG.locale!
    /// Locale for fr-TN
    static let frTN = LocaleIdentifier.frTN.locale!
    /// Locale for fr-VU
    static let frVU = LocaleIdentifier.frVU.locale!
    /// Locale for fr-WF
    static let frWF = LocaleIdentifier.frWF.locale!
    /// Locale for fr-YT
    static let frYT = LocaleIdentifier.frYT.locale!
    /// Locale for fy-NL
    static let fyNL = LocaleIdentifier.fyNL.locale!
    /// Locale for ga-GB
    static let gaGB = LocaleIdentifier.gaGB.locale!
    /// Locale for ga-IE
    static let gaIE = LocaleIdentifier.gaIE.locale!
    /// Locale for gd-GB
    static let gdGB = LocaleIdentifier.gdGB.locale!
    /// Locale for gl-ES
    static let glES = LocaleIdentifier.glES.locale!
    /// Locale for gn-PY
    static let gnPY = LocaleIdentifier.gnPY.locale!
    /// Locale for gu-IN
    static let guIN = LocaleIdentifier.guIN.locale!
    /// Locale for gv-IM
    static let gvIM = LocaleIdentifier.gvIM.locale!
    /// Locale for ha-GH
    static let haGH = LocaleIdentifier.haGH.locale!
    /// Locale for ha-NE
    static let haNE = LocaleIdentifier.haNE.locale!
    /// Locale for ha-NG
    static let haNG = LocaleIdentifier.haNG.locale!
    /// Locale for he-IL
    static let heIL = LocaleIdentifier.heIL.locale!
    /// Locale for hi-IN
    static let hiIN = LocaleIdentifier.hiIN.locale!
    /// Locale for hr-BA
    static let hrBA = LocaleIdentifier.hrBA.locale!
    /// Locale for hr-HR
    static let hrHR = LocaleIdentifier.hrHR.locale!
    /// Locale for hu-HU
    static let huHU = LocaleIdentifier.huHU.locale!
    /// Locale for hy-AM
    static let hyAM = LocaleIdentifier.hyAM.locale!
    /// Locale for id-ID
    static let idID = LocaleIdentifier.idID.locale!
    /// Locale for ie-EE
    static let ieEE = LocaleIdentifier.ieEE.locale!
    /// Locale for ig-NG
    static let igNG = LocaleIdentifier.igNG.locale!
    /// Locale for ii-CN
    static let iiCN = LocaleIdentifier.iiCN.locale!
    /// Locale for is-IS
    static let isIS = LocaleIdentifier.isIS.locale!
    /// Locale for it-CH
    static let itCH = LocaleIdentifier.itCH.locale!
    /// Locale for it-IT
    static let itIT = LocaleIdentifier.itIT.locale!
    /// Locale for it-SM
    static let itSM = LocaleIdentifier.itSM.locale!
    /// Locale for it-VA
    static let itVA = LocaleIdentifier.itVA.locale!
    /// Locale for iu-CA
    static let iuCA = LocaleIdentifier.iuCA.locale!
    /// Locale for ja-JP
    static let jaJP = LocaleIdentifier.jaJP.locale!
    /// Locale for jv-ID
    static let jvID = LocaleIdentifier.jvID.locale!
    /// Locale for ka-GE
    static let kaGE = LocaleIdentifier.kaGE.locale!
    /// Locale for ki-KE
    static let kiKE = LocaleIdentifier.kiKE.locale!
    /// Locale for kk-KZ
    static let kkKZ = LocaleIdentifier.kkKZ.locale!
    /// Locale for kl-GL
    static let klGL = LocaleIdentifier.klGL.locale!
    /// Locale for km-KH
    static let kmKH = LocaleIdentifier.kmKH.locale!
    /// Locale for kn-IN
    static let knIN = LocaleIdentifier.knIN.locale!
    /// Locale for ko-CN
    static let koCN = LocaleIdentifier.koCN.locale!
    /// Locale for ko-KP
    static let koKP = LocaleIdentifier.koKP.locale!
    /// Locale for ko-KR
    static let koKR = LocaleIdentifier.koKR.locale!
    /// Locale for ku-TR
    static let kuTR = LocaleIdentifier.kuTR.locale!
    /// Locale for kw-GB
    static let kwGB = LocaleIdentifier.kwGB.locale!
    /// Locale for ky-KG
    static let kyKG = LocaleIdentifier.kyKG.locale!
    /// Locale for la-VA
    static let laVA = LocaleIdentifier.laVA.locale!
    /// Locale for lb-LU
    static let lbLU = LocaleIdentifier.lbLU.locale!
    /// Locale for lg-UG
    static let lgUG = LocaleIdentifier.lgUG.locale!
    /// Locale for ln-AO
    static let lnAO = LocaleIdentifier.lnAO.locale!
    /// Locale for ln-CD
    static let lnCD = LocaleIdentifier.lnCD.locale!
    /// Locale for ln-CF
    static let lnCF = LocaleIdentifier.lnCF.locale!
    /// Locale for ln-CG
    static let lnCG = LocaleIdentifier.lnCG.locale!
    /// Locale for lo-LA
    static let loLA = LocaleIdentifier.loLA.locale!
    /// Locale for lt-LT
    static let ltLT = LocaleIdentifier.ltLT.locale!
    /// Locale for lu-CD
    static let luCD = LocaleIdentifier.luCD.locale!
    /// Locale for lv-LV
    static let lvLV = LocaleIdentifier.lvLV.locale!
    /// Locale for mg-MG
    static let mgMG = LocaleIdentifier.mgMG.locale!
    /// Locale for mi-NZ
    static let miNZ = LocaleIdentifier.miNZ.locale!
    /// Locale for mk-MK
    static let mkMK = LocaleIdentifier.mkMK.locale!
    /// Locale for ml-IN
    static let mlIN = LocaleIdentifier.mlIN.locale!
    /// Locale for mn-MN
    static let mnMN = LocaleIdentifier.mnMN.locale!
    /// Locale for mr-IN
    static let mrIN = LocaleIdentifier.mrIN.locale!
    /// Locale for ms-BN
    static let msBN = LocaleIdentifier.msBN.locale!
    /// Locale for ms-ID
    static let msID = LocaleIdentifier.msID.locale!
    /// Locale for ms-MY
    static let msMY = LocaleIdentifier.msMY.locale!
    /// Locale for ms-SG
    static let msSG = LocaleIdentifier.msSG.locale!
    /// Locale for mt-MT
    static let mtMT = LocaleIdentifier.mtMT.locale!
    /// Locale for my-MM
    static let myMM = LocaleIdentifier.myMM.locale!
    /// Locale for nb-NO
    static let nbNO = LocaleIdentifier.nbNO.locale!
    /// Locale for nb-SJ
    static let nbSJ = LocaleIdentifier.nbSJ.locale!
    /// Locale for nd-ZW
    static let ndZW = LocaleIdentifier.ndZW.locale!
    /// Locale for ne-IN
    static let neIN = LocaleIdentifier.neIN.locale!
    /// Locale for ne-NP
    static let neNP = LocaleIdentifier.neNP.locale!
    /// Locale for nl-AW
    static let nlAW = LocaleIdentifier.nlAW.locale!
    /// Locale for nl-BE
    static let nlBE = LocaleIdentifier.nlBE.locale!
    /// Locale for nl-BQ
    static let nlBQ = LocaleIdentifier.nlBQ.locale!
    /// Locale for nl-CW
    static let nlCW = LocaleIdentifier.nlCW.locale!
    /// Locale for nl-NL
    static let nlNL = LocaleIdentifier.nlNL.locale!
    /// Locale for nl-SR
    static let nlSR = LocaleIdentifier.nlSR.locale!
    /// Locale for nl-SX
    static let nlSX = LocaleIdentifier.nlSX.locale!
    /// Locale for nn-NO
    static let nnNO = LocaleIdentifier.nnNO.locale!
    /// Locale for nr-ZA
    static let nrZA = LocaleIdentifier.nrZA.locale!
    /// Locale for nv-US
    static let nvUS = LocaleIdentifier.nvUS.locale!
    /// Locale for ny-MW
    static let nyMW = LocaleIdentifier.nyMW.locale!
    /// Locale for oc-ES
    static let ocES = LocaleIdentifier.ocES.locale!
    /// Locale for oc-FR
    static let ocFR = LocaleIdentifier.ocFR.locale!
    /// Locale for om-ET
    static let omET = LocaleIdentifier.omET.locale!
    /// Locale for om-KE
    static let omKE = LocaleIdentifier.omKE.locale!
    /// Locale for or-IN
    static let orIN = LocaleIdentifier.orIN.locale!
    /// Locale for os-GE
    static let osGE = LocaleIdentifier.osGE.locale!
    /// Locale for os-RU
    static let osRU = LocaleIdentifier.osRU.locale!
    /// Locale for pl-PL
    static let plPL = LocaleIdentifier.plPL.locale!
    /// Locale for ps-AF
    static let psAF = LocaleIdentifier.psAF.locale!
    /// Locale for ps-PK
    static let psPK = LocaleIdentifier.psPK.locale!
    /// Locale for pt-AO
    static let ptAO = LocaleIdentifier.ptAO.locale!
    /// Locale for pt-BR
    static let ptBR = LocaleIdentifier.ptBR.locale!
    /// Locale for pt-CH
    static let ptCH = LocaleIdentifier.ptCH.locale!
    /// Locale for pt-CV
    static let ptCV = LocaleIdentifier.ptCV.locale!
    /// Locale for pt-GQ
    static let ptGQ = LocaleIdentifier.ptGQ.locale!
    /// Locale for pt-GW
    static let ptGW = LocaleIdentifier.ptGW.locale!
    /// Locale for pt-LU
    static let ptLU = LocaleIdentifier.ptLU.locale!
    /// Locale for pt-MO
    static let ptMO = LocaleIdentifier.ptMO.locale!
    /// Locale for pt-MZ
    static let ptMZ = LocaleIdentifier.ptMZ.locale!
    /// Locale for pt-PT
    static let ptPT = LocaleIdentifier.ptPT.locale!
    /// Locale for pt-ST
    static let ptST = LocaleIdentifier.ptST.locale!
    /// Locale for pt-TL
    static let ptTL = LocaleIdentifier.ptTL.locale!
    /// Locale for qu-BO
    static let quBO = LocaleIdentifier.quBO.locale!
    /// Locale for qu-EC
    static let quEC = LocaleIdentifier.quEC.locale!
    /// Locale for qu-PE
    static let quPE = LocaleIdentifier.quPE.locale!
    /// Locale for rm-CH
    static let rmCH = LocaleIdentifier.rmCH.locale!
    /// Locale for rn-BI
    static let rnBI = LocaleIdentifier.rnBI.locale!
    /// Locale for ro-MD
    static let roMD = LocaleIdentifier.roMD.locale!
    /// Locale for ro-RO
    static let roRO = LocaleIdentifier.roRO.locale!
    /// Locale for ru-BY
    static let ruBY = LocaleIdentifier.ruBY.locale!
    /// Locale for ru-KG
    static let ruKG = LocaleIdentifier.ruKG.locale!
    /// Locale for ru-KZ
    static let ruKZ = LocaleIdentifier.ruKZ.locale!
    /// Locale for ru-MD
    static let ruMD = LocaleIdentifier.ruMD.locale!
    /// Locale for ru-RU
    static let ruRU = LocaleIdentifier.ruRU.locale!
    /// Locale for ru-UA
    static let ruUA = LocaleIdentifier.ruUA.locale!
    /// Locale for rw-RW
    static let rwRW = LocaleIdentifier.rwRW.locale!
    /// Locale for sa-IN
    static let saIN = LocaleIdentifier.saIN.locale!
    /// Locale for sc-IT
    static let scIT = LocaleIdentifier.scIT.locale!
    /// Locale for se-FI
    static let seFI = LocaleIdentifier.seFI.locale!
    /// Locale for se-NO
    static let seNO = LocaleIdentifier.seNO.locale!
    /// Locale for se-SE
    static let seSE = LocaleIdentifier.seSE.locale!
    /// Locale for sg-CF
    static let sgCF = LocaleIdentifier.sgCF.locale!
    /// Locale for si-LK
    static let siLK = LocaleIdentifier.siLK.locale!
    /// Locale for sk-SK
    static let skSK = LocaleIdentifier.skSK.locale!
    /// Locale for sl-SI
    static let slSI = LocaleIdentifier.slSI.locale!
    /// Locale for sn-ZW
    static let snZW = LocaleIdentifier.snZW.locale!
    /// Locale for so-DJ
    static let soDJ = LocaleIdentifier.soDJ.locale!
    /// Locale for so-ET
    static let soET = LocaleIdentifier.soET.locale!
    /// Locale for so-KE
    static let soKE = LocaleIdentifier.soKE.locale!
    /// Locale for so-SO
    static let soSO = LocaleIdentifier.soSO.locale!
    /// Locale for sq-AL
    static let sqAL = LocaleIdentifier.sqAL.locale!
    /// Locale for sq-MK
    static let sqMK = LocaleIdentifier.sqMK.locale!
    /// Locale for sq-XK
    static let sqXK = LocaleIdentifier.sqXK.locale!
    /// Locale for ss-SZ
    static let ssSZ = LocaleIdentifier.ssSZ.locale!
    /// Locale for ss-ZA
    static let ssZA = LocaleIdentifier.ssZA.locale!
    /// Locale for st-LS
    static let stLS = LocaleIdentifier.stLS.locale!
    /// Locale for st-ZA
    static let stZA = LocaleIdentifier.stZA.locale!
    /// Locale for sv-AX
    static let svAX = LocaleIdentifier.svAX.locale!
    /// Locale for sv-FI
    static let svFI = LocaleIdentifier.svFI.locale!
    /// Locale for sv-SE
    static let svSE = LocaleIdentifier.svSE.locale!
    /// Locale for sw-CD
    static let swCD = LocaleIdentifier.swCD.locale!
    /// Locale for sw-KE
    static let swKE = LocaleIdentifier.swKE.locale!
    /// Locale for sw-TZ
    static let swTZ = LocaleIdentifier.swTZ.locale!
    /// Locale for sw-UG
    static let swUG = LocaleIdentifier.swUG.locale!
    /// Locale for ta-IN
    static let taIN = LocaleIdentifier.taIN.locale!
    /// Locale for ta-LK
    static let taLK = LocaleIdentifier.taLK.locale!
    /// Locale for ta-MY
    static let taMY = LocaleIdentifier.taMY.locale!
    /// Locale for ta-SG
    static let taSG = LocaleIdentifier.taSG.locale!
    /// Locale for te-IN
    static let teIN = LocaleIdentifier.teIN.locale!
    /// Locale for tg-TJ
    static let tgTJ = LocaleIdentifier.tgTJ.locale!
    /// Locale for th-TH
    static let thTH = LocaleIdentifier.thTH.locale!
    /// Locale for ti-ER
    static let tiER = LocaleIdentifier.tiER.locale!
    /// Locale for ti-ET
    static let tiET = LocaleIdentifier.tiET.locale!
    /// Locale for tk-TM
    static let tkTM = LocaleIdentifier.tkTM.locale!
    /// Locale for tn-BW
    static let tnBW = LocaleIdentifier.tnBW.locale!
    /// Locale for tn-ZA
    static let tnZA = LocaleIdentifier.tnZA.locale!
    /// Locale for to-TO
    static let toTO = LocaleIdentifier.toTO.locale!
    /// Locale for tr-CY
    static let trCY = LocaleIdentifier.trCY.locale!
    /// Locale for tr-TR
    static let trTR = LocaleIdentifier.trTR.locale!
    /// Locale for ts-ZA
    static let tsZA = LocaleIdentifier.tsZA.locale!
    /// Locale for tt-RU
    static let ttRU = LocaleIdentifier.ttRU.locale!
    /// Locale for ug-CN
    static let ugCN = LocaleIdentifier.ugCN.locale!
    /// Locale for uk-UA
    static let ukUA = LocaleIdentifier.ukUA.locale!
    /// Locale for ur-IN
    static let urIN = LocaleIdentifier.urIN.locale!
    /// Locale for ur-PK
    static let urPK = LocaleIdentifier.urPK.locale!
    /// Locale for ve-ZA
    static let veZA = LocaleIdentifier.veZA.locale!
    /// Locale for vi-VN
    static let viVN = LocaleIdentifier.viVN.locale!
    /// Locale for wa-BE
    static let waBE = LocaleIdentifier.waBE.locale!
    /// Locale for wo-SN
    static let woSN = LocaleIdentifier.woSN.locale!
    /// Locale for xh-ZA
    static let xhZA = LocaleIdentifier.xhZA.locale!
    /// Locale for yi-UA
    static let yiUA = LocaleIdentifier.yiUA.locale!
    /// Locale for yo-BJ
    static let yoBJ = LocaleIdentifier.yoBJ.locale!
    /// Locale for yo-NG
    static let yoNG = LocaleIdentifier.yoNG.locale!
    /// Locale for za-CN
    static let zaCN = LocaleIdentifier.zaCN.locale!
    /// Locale for zu-ZA
    static let zuZA = LocaleIdentifier.zuZA.locale!
    /// Locale for zh-CN
    static let zhCN = LocaleIdentifier.zhCN.locale!
    /// Locale for zh-TW
    static let zhTW = LocaleIdentifier.zhTW.locale!
    /// Locale for pa-IN
    static let paIN = LocaleIdentifier.paIN.locale!
    /// Locale for az-AZ
    static let azAZ = LocaleIdentifier.azAZ.locale!
    /// Locale for su-ID
    static let suID = LocaleIdentifier.suID.locale!
    /// Locale for ceb-PH
    static let cebPH = LocaleIdentifier.cebPH.locale!
    /// Locale for sr-RS
    static let srRS = LocaleIdentifier.srRS.locale!
    
    ///
    /// Returns an array containing all supported `Locale` instances.
    ///
    /// This property iterates over all cases in `LocaleIdentifier` and returns
    /// the corresponding `Locale` for each one. Useful for iterating through all locales
    /// available in the library, performing bulk formatting, validation, or presenting options to the user.
    ///
    /// - Example:
    /// ```swift
    /// for locale in Locale.locales {
    ///     print(locale.identifier)
    /// }
    /// ```
    ///
    static var locales: [Locale] {
        LocaleIdentifier.allCases.compactMap { $0.locale }
    }
}
