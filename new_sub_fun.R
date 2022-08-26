new_sub_fun <- function(from_path = "/Volumes/beck/pp", input = "template", subject, wave, to_path = "~/Downloads"){
  
  ## read in and modify html
  # rawHTML <- paste(readLines(sprintf("%s/%s.html", path, input)), collapse="\n")
  rawHTML <- paste(readLines(sprintf("%s/%s.html", from_path, input)), collapse="\n")
  rawHTML <- stringr::str_replace(rawHTML, "SID_name = \"template\";", sprintf("SID_name = \"%s\";", subject))
  rawHTML <- stringr::str_replace_all(rawHTML, "template.csv", sprintf("%s.csv", subject))
  for(i in 1:nrow(uni_items)){
    rawHTML <- stringr::str_replace(rawhtml, paste0("INSERTTEXT", i), uni_items$text[i])
    rawHTML <- stringr::str_replace(rawhtml, paste0("INSERTTRAIT", i), uni_items$text[i])
    rawHTML <- stringr::str_replace(rawhtml, paste0("INSERTFACET", i), uni_items$text[i])
  }
  # writeLines(rawHTML, paste(path, sprintf("%s_%s.html", subject, wave), sep = "/"))
  writeLines(rawHTML, paste(to_path, sprintf("%s_%s.html", subject, wave), sep = "/"))
  
  ## read in and modify csv
  # if(wave == 1){
    # RATcsv <- read.csv(sprintf("%s/rat/%s.csv", path, input), header = T, stringsAsFactors = F)
  # RATcsv <- read.csv(sprintf("%s/rat/%s.csv", from_path, input), header = T, stringsAsFactors = F)
  #   RATcsv$used <- ""
  #   # write.csv(RATcsv, file = sprintf("%s/rat/%s.csv", path, subject), row.names = F)
  #   write.csv(RATcsv, file = sprintf("%s/%s.csv", to_path, subject), row.names = F)
  # # }
}

# path to server on a mac: "/Volumes/beck/IPCS/rat"
# template file should be called: "template.csv" or "template.html"

many_new_subs <- function(from_path = "/Volumes/beck/IPCS/", input = "template", subs, wave, to_path = "~/Downloads"){
  # lapply(subs, function(x){new_sub_fun(path, input, x, wave)})
  lapply(subs, function(x){new_sub_fun(from_path, input, x, wave, to_path)})
}

# covid subs
csubs <- c("031501", "032202", "032203", "040502", "040501", "040503", "041204", "041203", "041205", "041902", "041905", "042602", 
"091101", "091302", "091701", "091904", "092002", "092004", "092006", "092701", "092703", "092704", "092706", "092705", 
"092707", "092708", "100402", "100403", "100404", "100405", "100406", "10181902", "10181901", "10181903", "10181906", 
"11021901", "11021902", "11031904", "11031905", "11081901", "11081904", "11081903", "11111903", "11141903", "11151907", 
"11151908", "11151904", "11201901", "11201902", "11201903", "11221902", "11221904", "12041909", "12041912")

c("11031904", "11031905", "11081902", "11081901", "11081904", "11081903", "11081906", "11081905", "11111901", 
  "11111902", "11111903", "11111904", "11141901", "11141902", "11141903", "11151907", "11151908", "11151909", 
  "11151901", "11151904", "11151903")

c("10281901", "10281902", "10301901", "11021901", "11021903", "11021902", "11031901", "11031903", "11031902")

c("10181902", "10181901", "10181903", "10181904", "10181905", "10181906")

c("100402", "100401", "100403", "100404", "100405", "100406")

c("092701", "092702", "092703", "092704", "092706", "092705", "092705", "092707", "092708", "092710")

c(090901,091101,091102,091301,091302)

c(10171, 10172, 101808, 102208, 102305, 102402, 102601, 102901, 102905, 102907, 103002, 110101, 110201, 110704, 110706, 110803, 110901, 110902, 110904)

c(112801, 112802, 112803, 112804, 112805, 112806, 112901, 112902, 112903, 112904, 112905)


c(112001,
112002)

c(111401,
111402,
111403,
111405,
111404)

c(110501,
110502,
110506,
110503,
110507,
110505,
466264,
110601,
110602,
110603,
110604,
110605,
110701,
110702,
110703,
110704,
110705,
110706,
110801,
110803,
110802,
110805,
110804,
110806,
110807,
110808,
443968,
110810,
110811,
110902,
110901,
110903,
110904)

c(110506, 11507)

c(102905,
102906,
102907)

c(102201,
102901,
102902,
102903,
102901,
102902,
102904,
102903,
103001,
103002,
110101,
110102,
110103,
110104,
110201,
110202,
110203)

c(102201,
102202,
102203,
102204,
102205,
102206,
102208,
102301,
102302,
102303,
102304,
102305,
102401,
102402,
102404,
102403,
102601)

c("040501", "040502", "040503", "040504", "040505") 


c("102401", "102906", "101904", "110603", "111401", "102204", "102204", "112801", "112804", "443968", "112905", "102302", "111402")

c("041202", "041201", "041204", "041203", "041205", "041208", "041207", "041209", "041210")

c("041901","041902","041903","041904","041905","041906","041907")