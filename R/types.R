# types.R contains a whole bunch of magic numbers used to organize the data into
# its constituent types and parts.

# hardcodes the datatype and section for each field as a function of its index.
allfields = 1:164
metadata = 1:6

types = c("metadata", "boilerplate", "cdata", "categorical", "ordinal5", "ordinal7", "ordinalNA3", "ordinalNA5", "numeric")
types.metadata = metadata
types.boilerplate = c(43,59,79,140,145,148)
types.cdata = c(27,35,42,58,78,88,93,113,114,135,137,139,142,144,147,150,151,156,163,164)
types.categorical = c(33,34,36,37,38,48,49,54,56,57,66,67,74,76,77,86,87,89,90,91,97,106,108,126,134,136,138,141,143,146,149,152,153,154,155,158,159,160,161,162)
types.ordinal5 = c(28:32,44:47,50:53,60:65,68:73,80:85,94:96,98:105,107,109:112,115:124,127:133)
types.ordinal7 = c(125,157)
types.ordinalNA3 = c(7)
types.ordinalNA5 = c(8:26,39:41)
types.numeric = c(55,75,92)

types.ordinalX = union(types.ordinal5, types.ordinal7)
types.ordinalNAX = union(types.ordinalNA3, types.ordinal5)
types.ordinal = union(types.ordinalX, types.ordinalNAX)

ordinal.types = c("ordinal5", "ordinal7", "ordinalNA3", "ordinalNA5")
# assigns fields their type by index
get.type = function(n) {
  # yes, this is really the easiest way to do it -_-
  ifelse(n %in% types.metadata, 
         "metadata",
  ifelse(n %in% types.boilerplate, 
         "boilerplate",
  ifelse(n %in% types.cdata, 
         "cdata",
  ifelse(n %in% types.categorical, 
         "categorical",
  ifelse(n %in% types.ordinal5, 
         "ordinal5",
  ifelse(n %in% types.ordinal7, 
         "ordinal7",
  ifelse(n %in% types.ordinalNA3, 
         "ordinalNA3",
  ifelse(n %in% types.ordinalNA5, 
         "ordinalNA5",
  ifelse(n %in% types.numeric, 
         "numeric",
         NA)))))))))}
types.vector = get.type(allfields)

sections = c("metadata", "department", "exams", "examproposals", "life", "demographics")
sections.metadata = metadata
sections.department = 7:42
sections.exams = 43:93
sections.examproposals = 94:114
sections.life = 115:156
sections.demographics = 157:164

sections.payload = c(7:156,164)

demographics.year = 157
demographics.theorist = 158
demographics.experimentalist = 159
demographics.subject = 160
demographics.language = 161
demographics.gender = 162

# assigns fields their section by index
get.section = Vectorize (function(n) {
  ifelse(n %in% sections.metadata, "metadata",
  ifelse(n %in% sections.department, "department",
  ifelse(n %in% sections.exams, "exams",
  ifelse(n %in% sections.examproposals, "examproposals",
  ifelse(n %in% sections.life, "life",
  ifelse(n %in% sections.demographics, "demographics",
  NA))))))})
sections.vector = get.section(allfields)
