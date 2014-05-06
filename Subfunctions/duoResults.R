duoResults = function(dataDuo) {
      
      ## Load R Functions
      source("~/Development/R/DuoDevelopment/Subfunctions/duoCourseCompletionOrder.R")
      source("~/Development/R/DuoDevelopment/Subfunctions/duoDataExtract.R")
      
      duoList = duoDataExtract(dataDuo)
      duoList = duoCourseCompletionOrder(duoList)
      cat("Duolingo Development of the",duoList[[4]],"Phase 1 Beta Courses:")
      cat("\n")
      cat("(",duoList[[1]][[1]],".)",sep="")
      cat("\n")
      for (i in 1:duoList[[4]]) {
            cat("\n")
            cat("\n")
            if (duoList[[3]][i] != "Release Imminent") {
                  cat(duoList[[2]][[i]],": ",duoList[[3]][i]," complete.",sep="")
            } else {
                  cat(duoList[[2]][[i]],": ",duoList[[3]][i],".",sep="")
            }
      }
}