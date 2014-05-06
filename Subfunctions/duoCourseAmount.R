duoCourseAmount = function(dataDuo) {
      dataSize=xmlSize(dataDuo)
      for (i in 1:dataSize){
            if (class(dataDuo[[i]])[1] == "XMLNode" && class(xmlSApply(dataDuo[[i]],xmlValue)) == "character") {
                  if (class(dataDuo[[i]][[1]])[1] == "XMLTextNode") {
                        if (regexpr("Phase 2",dataDuo[[i]][[1]]$value)[1]==1) {
                              courseNumberMax=i-1
                        }
                  }
            }
      }
      courseNumberMax
}