duoCourseNameExtract = function(courseNumber) {
      
      if (xmlSApply(dataDuo[[courseNumber]][[1]],xmlValue)=="New") {
            nameCourse1=dataDuo[[courseNumber]][[2]][[1]][[1]]
            nameCourse2=dataDuo[[courseNumber]][[2]][[1]][[2]]
      } else {
            nameCourse1=dataDuo[[courseNumber]][[1]][[1]][[1]]
            nameCourse2=dataDuo[[courseNumber]][[1]][[1]][[2]]
      }
      paste(xmlSApply(nameCourse1,xmlValue),
            xmlSApply(nameCourse2,xmlValue),sep=" ")
}