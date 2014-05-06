duoDataExtract = function(dataDuo) {
      
      ## Load R Functions
      source("~/Development/R/DuoDevelopment/Subfunctions/duoCourseNameExtract.R")
      source("~/Development/R/DuoDevelopment/Subfunctions/duoLastUpdateExtract.R")
      source("~/Development/R/DuoDevelopment/Subfunctions/duoPercentageExtract.R")
      source("~/Development/R/DuoDevelopment/Subfunctions/duoCourseAmount.R")
      
      duoCourseNumbers=3:duoCourseAmount(dataDuo)
      duoLastUpdate=duoLastUpdateExtract(dataDuo)
      duoCourseName=lapply(duoCourseNumbers,duoCourseNameExtract)
      duoPercentage=vector(mode="integer", length=length(duoCourseNumbers))
      for (i in duoCourseNumbers) {
            checker=dataDuo[[i]][[2]][[1]][[1]]
            if (class(xmlSApply(checker,xmlValue))=="character") {
                  duoPercentage[[i-2]]=duoPercentageExtract(i)
            } else {
                  duoPercentage[[i-2]]="Release Imminent"
            }
      }
      list(duoLastUpdate,duoCourseName,duoPercentage,
           courseNumber=length(duoCourseNumbers))
}