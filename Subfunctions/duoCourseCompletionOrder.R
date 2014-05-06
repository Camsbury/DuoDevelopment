duoCourseCompletionOrder = function(duoList) {
      duoList[[5]]=duoList[[3]]
      for (i in 1:length(duoList[[5]])) {
            if (duoList[[5]][i]=="Release Imminent") {
                  duoList[[5]][i]=100;
            } else {
                  duoList[[5]][i] =
                        as.numeric(strsplit(duoList[[5]][i],split="%"))
            }
      }
      duoList[[5]]=as.numeric(duoList[[5]])
      count=1
      while (count>0) {
            count=0
            for (i in 1:(length(duoList[[5]])-1)) {
                  if (duoList[[5]][i] < duoList[[5]][i+1]) {
                        temp=duoList[[5]][i+1]
                        duoList[[5]][i+1]=duoList[[5]][i]
                        duoList[[5]][i]=temp
                        temp=duoList[[3]][i+1]
                        duoList[[3]][i+1]=duoList[[3]][i]
                        duoList[[3]][i]=temp
                        temp=duoList[[2]][[i+1]]
                        duoList[[2]][[i+1]]=duoList[[2]][[i]]
                        duoList[[2]][[i]]=temp
                        count=1
                  }
            }
      }
      duoList[1:4]
}