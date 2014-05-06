duoPercentageExtract = function(courseNumber) {
      if (xmlSApply(dataDuo[[courseNumber]][[1]],xmlValue)=="New") {
            duoPercentList = dataDuo[[courseNumber]][[3]][[1]][[1]]
      } else {
            duoPercentList = dataDuo[[courseNumber]][[2]][[1]][[1]]
      }
      xmlSApply(duoPercentList[[length(duoPercentList)]],xmlValue)[[1]]
}