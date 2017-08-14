# analysis1.R is a proto-test suite for checking whether individual summarizers
# and analyzers worked.

survey.data <- cleaned.data()
# lambda'd for brevity
cdata.test = function () {
  summarize.cdata(survey.data, types.cdata[1])
}

categorical.test.summary =
  summarize.categorical(survey.data,
                        types.categorical[1])
categorical.test.analysis.categorical =
  analyze.categorical(survey.data,
                                  demographics.language,
                                  types.categorical[1])
categorical.test.analysis.ordinal = 
  analyze.categorical(survey.data,
                              demographics.year,
                              types.categorical[1])
ordinal.test.summary = 
  summarize.ordinal(survey.data,
                    types.ordinalNAX[1])

dump.test.summary = function () {
  sink("departmentsummary.Rout")
  summarizeAll(survey.data, sections.department)
  sink()
}
