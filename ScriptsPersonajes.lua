PACK DE CODIGOS PARA EL PERSONAJE [MODIFICACIONES CON EFECTO SOBRE EL PERSONAJE]

ANTENA CABEZA
EDITABLE = "EDITABLE"
function A()
  if EDITABLE == "EDITABLE" then
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("5.9762459e-7;1::5", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("5.9762459e-7;250.1", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.searchNumber("7.5538861e-7;1::5", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("7.5538861e-7;250.1", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("EDITABLE")
    EDITABLE = "EDITABLE"
  elseif EDITABLE == "EDITABLE" then
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("250.1", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("1", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("EDITABLE")
    EDITABLE = "EDITABLE"
  end
end

ANTENA MANO
EDITABLE = "EDITABLE"
function B()
  if EDITABLE == "EDITABLE" then
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("1;3.2404066e-7::5", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("250.1;3.2404066e-7", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.searchNumber("-0.39830258489;1;0.5870424509::9", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("-0.39830258489;250.1;0.5870424509", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("EDITABLE")
    EDITABLE = "EDITABLE"
  elseif EDITABLE == "EDITABLE" then
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("250.1", gg.TYPE_FLOAT)
    gg.getResults(1000)
    gg.editAll("1", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("EDITABLE")
    EDITABLE = "EDITABLE"
  end
end

CORRER X5
function C()
  gg.clearResults()
  gg.loadList(gg.EXT_STORAGE .. "/CodigosAntibanFoxCrackff/FoxYT.log", gg.LOAD_APPEND)
  gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
  name("libil2cpp.so")
  myoffset = 10755024
  original("7F 45 4C 46 01 01 01 00")
  replaced("84 0F 43 E3 1E FF 2F E1")
  gg.toast("EDITABLE")
end

CORRER X10
EDITABLE = "EDITABLE"
function D()
  if EDITABLE == "EDITABLE" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 11082420
    original("7F 45 4C 46 01 01 01 00")
    replaced("96 0F 43 E3 1E FF 2F E1")
    gg.clearResults()
    gg.toast("EDITABLE")
    EDITABLE = "EDITABLE"
  elseif EDITABLE == "EDITABLE" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 11082420
    original("7F 45 4C 46 01 01 01 00")
    replaced("18 00 90 E5 1E FF 2F E1")
    gg.clearResults()
    gg.toast("EDITABLE")
    EDITABLE = "EDITABLE"
  end
end

CUERPOS BLANCOS
EDITABLE = "EDITABLE"
function E()
  if EDITABLE == "EDITABLE" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 10616188
    original("7F 45 4C 46 01 01 01 00")
    replaced("01 00 A0 E3 1E FF 2F E1")
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 25534280
    original("7F 45 4C 46 01 01 01 00")
    replaced("00 00 BB E3 1E FF 2F E1")
    gg.clearResults()
    gg.toast("EDITABLE")
    EDITABLE = "EDITABLE"
  elseif EDITABLE == "EDITABLE" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 10616188
    original("7F 45 4C 46 01 01 01 00")
    replaced("F0 4F 2D E9 1C B0 8D E2")
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 25534280
    original("7F 45 4C 46 01 01 01 00")
    replaced("F0 4F 2D E9 1C B0 8D E2")
    gg.clearResults()
    gg.toast("EDITABLE")
    EDITABLE = "EDITABLE"
  end
end

AUMENTAR SENSIBILIDAD
EDITABLE = "EDITABLE"
function F()
  if EDITABLE == "EDITABLE" then
    gg.setRanges(gg.REGION_C_DATA)
    gg.searchNumber("\000300", 16)
    gg.getResults(1)
    gg.editAll("200", 16)
    gg.clearResults()
    gg.toast("EDITABLE")
    EDITABLE = "EDITABLE"
  elseif EDITABLE == "EDITABLE" then
    gg.setRanges(gg.REGION_C_DATA)
    gg.searchNumber("200", 16)
    gg.getResults(1)
    gg.editAll("\000300", 16)
    gg.clearResults()
    gg.toast("EDITABLE")
    EDITABLE = "EDITABLE"
  end
end

BOTIQUIN 2.9 SEGUNDOS
EDITABLE = "EDITABLE"
function G()
  if EDITABLE == "EDITABLE" then
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("75D;5F;4F::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("4", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(3)
    gg.editAll("3", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("EDITABLE")
    EDITABLE = "EDITABLE"
  elseif EDITABLE == "EDITABLE" then
    gg.setRanges(gg.REGION_ANONYMOUS)
    gg.searchNumber("75D;5F;3F::30", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.refineNumber("3", gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)
    gg.getResults(3)
    gg.editAll("4", gg.TYPE_FLOAT)
    gg.clearResults()
    gg.toast("EDITABLE")
    EDITABLE = "EDITABLE"
  end
end

BOTIQUIN CORRIENDO
EDITABLE = "EDITABLE"
function H()
  if EDITABLE == "EDITABLE" then
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 34999200
    original("7F 45 4C 46 01 01 01 00")
    replaced("00 00 A0  E3 1E FF 2F E1")
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 10734700
    original("7F 45 4C 46 01 01 01 00")
    replaced("00 00 A0  E3 1E FF 2F E1")
    gg.clearResults()
    gg.toast("EDITABLE")
    EDITABLE = "EDITABLE"
  elseif EDITABLE == "EDITABLE" then
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 34999200
    original("7F 45 4C 46 01 01 01 00")
    replaced("F0 4B 2D E9 18 B0 8D E2")
    gg.clearResults()
    gg.setRanges(gg.REGION_CODE_APP | gg.REGION_C_DATA)
    name("libil2cpp.so")
    myoffset = 10734700
    original("7F 45 4C 46 01 01 01 00")
    replaced("70 4C 2D E9 10 B0 8D E2")
    gg.clearResults()
    gg.toast("EDITABLE")
    EDITABLE = "EDITABLE"
  end
end
