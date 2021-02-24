library(tm)

sampleCorpus = Corpus(VectorSource(sampletext)) 
inspect(sampleCorpus)

funcs <- list(tolower, removePunctuation, removeNumbers, stripWhitespace, skipWords)
wordmap <- tm_map(corpus, FUN = tm_reduce, tmFuns = funcs)
documentTermMatrix <- TermDocumentMatrix(wordmap, control = list(wordLengths = c(3,10))) 
findFreqTerms(documentTermMatrix, 10)
