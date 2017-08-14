#' @keywords internal
raw.data = function() {
data <- read.csv("../data/pgscdata.csv", quote = "'\"", na.strings=c("", "\"\""), stringsAsFactors=FALSE)
# LimeSurvey Field type: F
data[, 1] <- as.numeric(data[, 1])
attributes(data)$variable.labels[1] <- "id"
names(data)[1] <- "id"
# LimeSurvey Field type: DATETIME23.2
data[, 2] <- as.character(data[, 2])
attributes(data)$variable.labels[2] <- "submitdate"
names(data)[2] <- "submitdate"
# LimeSurvey Field type: 
data[, 3] <- as.character(data[, 3])
attributes(data)$variable.labels[3] <- "lastpage"
names(data)[3] <- "lastpage"
# LimeSurvey Field type: A
data[, 4] <- as.character(data[, 4])
attributes(data)$variable.labels[4] <- "startlanguage"
names(data)[4] <- "startlanguage"
# LimeSurvey Field type: DATETIME23.2
data[, 5] <- as.character(data[, 5])
attributes(data)$variable.labels[5] <- "startdate"
names(data)[5] <- "startdate"
# LimeSurvey Field type: DATETIME23.2
data[, 6] <- as.character(data[, 6])
attributes(data)$variable.labels[6] <- "datestamp"
names(data)[6] <- "datestamp"
# LimeSurvey Field type: F
data[, 7] <- as.numeric(data[, 7])
attributes(data)$variable.labels[7] <- "How long have you been working with your current research supervisor?"
data[, 7] <- factor(data[, 7], levels=c(1,2,3,4),labels=c("less than one  semester", "more than one and less than two semesters", "more than two semesters", "N/A"))
names(data)[7] <- "grouplife"
# LimeSurvey Field type: A
data[, 8] <- as.character(data[, 8])
attributes(data)$variable.labels[8] <- "[guidance regarding troubleshooting, time management, and decision-making] How satisfied are you with each of the following aspects of your professional relationship with your research supervisor?"
data[, 8] <- factor(data[, 8], levels=c("L001","L002","L003","L004","L005","L006"),labels=c("Dissatisfied", "Somewhat Dissatisfied", "Neither Satisfied nor Dissatisfied", "Somewhat Satisfied", "Satisfied", "N/A"))
names(data)[8] <- "professional_SQ1"
# LimeSurvey Field type: A
data[, 9] <- as.character(data[, 9])
attributes(data)$variable.labels[9] <- "[guidance regarding understanding your research topic] How satisfied are you with each of the following aspects of your professional relationship with your research supervisor?"
data[, 9] <- factor(data[, 9], levels=c("L001","L002","L003","L004","L005","L006"),labels=c("Dissatisfied", "Somewhat Dissatisfied", "Neither Satisfied nor Dissatisfied", "Somewhat Satisfied", "Satisfied", "N/A"))
names(data)[9] <- "professional_SQ2"
# LimeSurvey Field type: A
data[, 10] <- as.character(data[, 10])
attributes(data)$variable.labels[10] <- "[guidance regarding obtaining a broader perspective in your field] How satisfied are you with each of the following aspects of your professional relationship with your research supervisor?"
data[, 10] <- factor(data[, 10], levels=c("L001","L002","L003","L004","L005","L006"),labels=c("Dissatisfied", "Somewhat Dissatisfied", "Neither Satisfied nor Dissatisfied", "Somewhat Satisfied", "Satisfied", "N/A"))
names(data)[10] <- "professional_SQ3"
# LimeSurvey Field type: A
data[, 11] <- as.character(data[, 11])
attributes(data)$variable.labels[11] <- "[guidance regarding applying for funding] How satisfied are you with each of the following aspects of your professional relationship with your research supervisor?"
data[, 11] <- factor(data[, 11], levels=c("L001","L002","L003","L004","L005","L006"),labels=c("Dissatisfied", "Somewhat Dissatisfied", "Neither Satisfied nor Dissatisfied", "Somewhat Satisfied", "Satisfied", "N/A"))
names(data)[11] <- "professional_SQ4"
# LimeSurvey Field type: A
data[, 12] <- as.character(data[, 12])
attributes(data)$variable.labels[12] <- "[mentorship related to classes and qualifying exams] How satisfied are you with each of the following aspects of your professional relationship with your research supervisor?"
data[, 12] <- factor(data[, 12], levels=c("L001","L002","L003","L004","L005","L006"),labels=c("Dissatisfied", "Somewhat Dissatisfied", "Neither Satisfied nor Dissatisfied", "Somewhat Satisfied", "Satisfied", "N/A"))
names(data)[12] <- "professional_SQ5"
# LimeSurvey Field type: A
data[, 13] <- as.character(data[, 13])
attributes(data)$variable.labels[13] <- "[mentorship related to career planning] How satisfied are you with each of the following aspects of your professional relationship with your research supervisor?"
data[, 13] <- factor(data[, 13], levels=c("L001","L002","L003","L004","L005","L006"),labels=c("Dissatisfied", "Somewhat Dissatisfied", "Neither Satisfied nor Dissatisfied", "Somewhat Satisfied", "Satisfied", "N/A"))
names(data)[13] <- "professional_SQ6"
# LimeSurvey Field type: A
data[, 14] <- as.character(data[, 14])
attributes(data)$variable.labels[14] <- "[your research project] How satisfied are you with each of the following aspects of your professional relationship with your research supervisor?"
data[, 14] <- factor(data[, 14], levels=c("L001","L002","L003","L004","L005","L006"),labels=c("Dissatisfied", "Somewhat Dissatisfied", "Neither Satisfied nor Dissatisfied", "Somewhat Satisfied", "Satisfied", "N/A"))
names(data)[14] <- "professional_SQ7"
# LimeSurvey Field type: A
data[, 15] <- as.character(data[, 15])
attributes(data)$variable.labels[15] <- "[meeting times dedicated to research discussions] How satisfied are you with each of the following aspects of your professional relationship with your research supervisor?"
data[, 15] <- factor(data[, 15], levels=c("L001","L002","L003","L004","L005","L006"),labels=c("Dissatisfied", "Somewhat Dissatisfied", "Neither Satisfied nor Dissatisfied", "Somewhat Satisfied", "Satisfied", "N/A"))
names(data)[15] <- "professional_SQ8"
# LimeSurvey Field type: A
data[, 16] <- as.character(data[, 16])
attributes(data)$variable.labels[16] <- "[overall] How satisfied are you with each of the following aspects of your professional relationship with your research supervisor?"
data[, 16] <- factor(data[, 16], levels=c("L001","L002","L003","L004","L005","L006"),labels=c("Dissatisfied", "Somewhat Dissatisfied", "Neither Satisfied nor Dissatisfied", "Somewhat Satisfied", "Satisfied", "N/A"))
names(data)[16] <- "professional_SQ9"
# LimeSurvey Field type: A
data[, 17] <- as.character(data[, 17])
attributes(data)$variable.labels[17] <- "[time spent conversing on topics unrelated to research] How satisfied are you with each of the following aspects of your personal relationship with your research supervisor?"
data[, 17] <- factor(data[, 17], levels=c("L001","L002","L003","L004","L005","L006"),labels=c("Dissatisfied", "Somewhat Dissatisfied", "Neither Satisfied nor Dissatisfied", "Somewhat Satisfied", "Satisfied", "N/A"))
names(data)[17] <- "personalrelationship_SQ1"
# LimeSurvey Field type: A
data[, 18] <- as.character(data[, 18])
attributes(data)$variable.labels[18] <- "[interest in your personal well-being] How satisfied are you with each of the following aspects of your personal relationship with your research supervisor?"
data[, 18] <- factor(data[, 18], levels=c("L001","L002","L003","L004","L005","L006"),labels=c("Dissatisfied", "Somewhat Dissatisfied", "Neither Satisfied nor Dissatisfied", "Somewhat Satisfied", "Satisfied", "N/A"))
names(data)[18] <- "personalrelationship_SQ2"
# LimeSurvey Field type: A
data[, 19] <- as.character(data[, 19])
attributes(data)$variable.labels[19] <- "[overall] How satisfied are you with each of the following aspects of your personal relationship with your research supervisor?"
data[, 19] <- factor(data[, 19], levels=c("L001","L002","L003","L004","L005","L006"),labels=c("Dissatisfied", "Somewhat Dissatisfied", "Neither Satisfied nor Dissatisfied", "Somewhat Satisfied", "Satisfied", "N/A"))
names(data)[19] <- "personalrelationship_SQ3"
# LimeSurvey Field type: A
data[, 20] <- as.character(data[, 20])
attributes(data)$variable.labels[20] <- "[quality of scientific and professional discourse] How satisfied are you with each of the following aspects of your relationship with your research group?"
data[, 20] <- factor(data[, 20], levels=c("L001","L002","L003","L004","L005","L006"),labels=c("Dissatisfied", "Somewhat Dissatisfied", "Neither Satisfied nor Dissatisfied", "Somewhat Satisfied", "Satisfied", "N/A"))
names(data)[20] <- "researchgroup_profinterac"
# LimeSurvey Field type: A
data[, 21] <- as.character(data[, 21])
attributes(data)$variable.labels[21] <- "[quality of social interaction] How satisfied are you with each of the following aspects of your relationship with your research group?"
data[, 21] <- factor(data[, 21], levels=c("L001","L002","L003","L004","L005","L006"),labels=c("Dissatisfied", "Somewhat Dissatisfied", "Neither Satisfied nor Dissatisfied", "Somewhat Satisfied", "Satisfied", "N/A"))
names(data)[21] <- "researchgroup_socialinterac"
# LimeSurvey Field type: A
data[, 22] <- as.character(data[, 22])
attributes(data)$variable.labels[22] <- "[number of articles published in peer-reviewed journals] How satisfied are you with each of the following aspects of your experience in scientific communication?"
data[, 22] <- factor(data[, 22], levels=c("L001","L002","L003","L004","L005","L006"),labels=c("Dissatisfied", "Somewhat Dissatisfied", "Neither Satisfied nor Dissatisfied", "Somewhat Satisfied", "Satisfied", "N/A"))
names(data)[22] <- "communication_SQ1"
# LimeSurvey Field type: A
data[, 23] <- as.character(data[, 23])
attributes(data)$variable.labels[23] <- "[number of posters presented] How satisfied are you with each of the following aspects of your experience in scientific communication?"
data[, 23] <- factor(data[, 23], levels=c("L001","L002","L003","L004","L005","L006"),labels=c("Dissatisfied", "Somewhat Dissatisfied", "Neither Satisfied nor Dissatisfied", "Somewhat Satisfied", "Satisfied", "N/A"))
names(data)[23] <- "communication_SQ2"
# LimeSurvey Field type: A
data[, 24] <- as.character(data[, 24])
attributes(data)$variable.labels[24] <- "[number of oral presentations given (for MIT and non-MIT audiences alike)] How satisfied are you with each of the following aspects of your experience in scientific communication?"
data[, 24] <- factor(data[, 24], levels=c("L001","L002","L003","L004","L005","L006"),labels=c("Dissatisfied", "Somewhat Dissatisfied", "Neither Satisfied nor Dissatisfied", "Somewhat Satisfied", "Satisfied", "N/A"))
names(data)[24] <- "communication_SQ3"
# LimeSurvey Field type: A
data[, 25] <- as.character(data[, 25])
attributes(data)$variable.labels[25] <- "[ability to obtain a reference from a faculty member who is not your research supervisor] How satisfied are you with each of the following aspects of your position in the scientific community?"
data[, 25] <- factor(data[, 25], levels=c("L001","L002","L003","L004","L005","L006"),labels=c("Dissatisfied", "Somewhat Dissatisfied", "Neither Satisfied nor Dissatisfied", "Somewhat Satisfied", "Satisfied", "N/A"))
names(data)[25] <- "networking_SQ1"
# LimeSurvey Field type: A
data[, 26] <- as.character(data[, 26])
attributes(data)$variable.labels[26] <- "[ties with faculty and research scientists who are not in your research group] How satisfied are you with each of the following aspects of your position in the scientific community?"
data[, 26] <- factor(data[, 26], levels=c("L001","L002","L003","L004","L005","L006"),labels=c("Dissatisfied", "Somewhat Dissatisfied", "Neither Satisfied nor Dissatisfied", "Somewhat Satisfied", "Satisfied", "N/A"))
names(data)[26] <- "networking_SQ2"
# LimeSurvey Field type: A
data[, 27] <- as.character(data[, 27])
attributes(data)$variable.labels[27] <- "Please leave any comments you may have about research supervision, professional relationships and career development."
names(data)[27] <- "otheradvising"
# LimeSurvey Field type: A
data[, 28] <- as.character(data[, 28])
attributes(data)$variable.labels[28] <- "[number of classes offered] How satisfied are you with the each of the following aspects of your relationship with the Department?"
data[, 28] <- factor(data[, 28], levels=c("L001","L002","L003","L004","L005"),labels=c("Dissatisfied", "Somewhat Dissatisfied", "Neither Satisfied nor Dissatisfied", "Somewhat Satisfied", "Satisfied"))
names(data)[28] <- "academicsupport_SQ1"
# LimeSurvey Field type: A
data[, 29] <- as.character(data[, 29])
attributes(data)$variable.labels[29] <- "[quality of classes offered] How satisfied are you with the each of the following aspects of your relationship with the Department?"
data[, 29] <- factor(data[, 29], levels=c("L001","L002","L003","L004","L005"),labels=c("Dissatisfied", "Somewhat Dissatisfied", "Neither Satisfied nor Dissatisfied", "Somewhat Satisfied", "Satisfied"))
names(data)[29] <- "academicsupport_SQ2"
# LimeSurvey Field type: A
data[, 30] <- as.character(data[, 30])
attributes(data)$variable.labels[30] <- "[ability to change research group] How satisfied are you with the each of the following aspects of your relationship with the Department?"
data[, 30] <- factor(data[, 30], levels=c("L001","L002","L003","L004","L005"),labels=c("Dissatisfied", "Somewhat Dissatisfied", "Neither Satisfied nor Dissatisfied", "Somewhat Satisfied", "Satisfied"))
names(data)[30] <- "academicsupport_SQ3"
# LimeSurvey Field type: A
data[, 31] <- as.character(data[, 31])
attributes(data)$variable.labels[31] <- "[ability to change research division] How satisfied are you with the each of the following aspects of your relationship with the Department?"
data[, 31] <- factor(data[, 31], levels=c("L001","L002","L003","L004","L005"),labels=c("Dissatisfied", "Somewhat Dissatisfied", "Neither Satisfied nor Dissatisfied", "Somewhat Satisfied", "Satisfied"))
names(data)[31] <- "academicsupport_SQ4"
# LimeSurvey Field type: A
data[, 32] <- as.character(data[, 32])
attributes(data)$variable.labels[32] <- "[ability to obtain a teaching assistantship] How satisfied are you with the each of the following aspects of your relationship with the Department?"
data[, 32] <- factor(data[, 32], levels=c("L001","L002","L003","L004","L005"),labels=c("Dissatisfied", "Somewhat Dissatisfied", "Neither Satisfied nor Dissatisfied", "Somewhat Satisfied", "Satisfied"))
names(data)[32] <- "academicsupport_SQ5"
# LimeSurvey Field type: F
data[, 33] <- as.numeric(data[, 33])
attributes(data)$variable.labels[33] <- "Did you change your research supervisor?"
data[, 33] <- factor(data[, 33], levels=c(1,2,3,4),labels=c("No", "Yes, during/right after my first year", "Yes, during/right after my second year", "Yes, third year or later"))
names(data)[33] <- "changeyear"
# LimeSurvey Field type: F
data[, 34] <- as.numeric(data[, 34])
attributes(data)$variable.labels[34] <- "Why did you change your research supervisor?"
data[, 34] <- factor(data[, 34], levels=c(1,2,3),labels=c("Yes, because of diverging research interests", "Yes, because of a conflict with the research supervisor", "Yes, because of a conflict with the research group"))
names(data)[34] <- "changereason"
# LimeSurvey Field type: A
data[, 35] <- as.character(data[, 35])
attributes(data)$variable.labels[35] <- "[Other] Why did you change your research supervisor?"
names(data)[35] <- "changereason_other"
# LimeSurvey Field type: F
data[, 36] <- as.numeric(data[, 36])
attributes(data)$variable.labels[36] <- "Would you or your fellow graduate students benefit from a Department-administered system of group rotations?"
data[, 36] <- factor(data[, 36], levels=c(1,2,3),labels=c("Yes", "No", "Don't know"))
names(data)[36] <- "rotations"
# LimeSurvey Field type: F
data[, 37] <- as.numeric(data[, 37])
attributes(data)$variable.labels[37] <- "Would you or your fellow graduate students benefit from a Department-administered class in scientific writing?"
data[, 37] <- factor(data[, 37], levels=c(1,2,3),labels=c("Yes", "No", "Don't know"))
names(data)[37] <- "writing"
# LimeSurvey Field type: F
data[, 38] <- as.numeric(data[, 38])
attributes(data)$variable.labels[38] <- "Would you or your fellow graduate students benefit from an extension of the Physics Reading Room\'s hours of operation?"
data[, 38] <- factor(data[, 38], levels=c(1,2,3),labels=c("Yes", "No", "Don't know"))
names(data)[38] <- "library"
# LimeSurvey Field type: A
data[, 39] <- as.character(data[, 39])
attributes(data)$variable.labels[39] <- "[Research-related advice/support] With regards to each of the following topics, how satisfied are you with academic advising provided to you?"
data[, 39] <- factor(data[, 39], levels=c("L001","L002","L003","L004","L005","L006"),labels=c("Dissatisfied", "Somewhat Dissatisfied", "Neither Satisfied nor Dissatisfied", "Somewhat Satisfied", "Satisfied", "N/A"))
names(data)[39] <- "academicadvisor_SQ1"
# LimeSurvey Field type: A
data[, 40] <- as.character(data[, 40])
attributes(data)$variable.labels[40] <- "[Career-related advice/support ] With regards to each of the following topics, how satisfied are you with academic advising provided to you?"
data[, 40] <- factor(data[, 40], levels=c("L001","L002","L003","L004","L005","L006"),labels=c("Dissatisfied", "Somewhat Dissatisfied", "Neither Satisfied nor Dissatisfied", "Somewhat Satisfied", "Satisfied", "N/A"))
names(data)[40] <- "academicadvisor_SQ2"
# LimeSurvey Field type: A
data[, 41] <- as.character(data[, 41])
attributes(data)$variable.labels[41] <- "[Coursework and qualifying exams related advice/support ] With regards to each of the following topics, how satisfied are you with academic advising provided to you?"
data[, 41] <- factor(data[, 41], levels=c("L001","L002","L003","L004","L005","L006"),labels=c("Dissatisfied", "Somewhat Dissatisfied", "Neither Satisfied nor Dissatisfied", "Somewhat Satisfied", "Satisfied", "N/A"))
names(data)[41] <- "academicadvisor_SQ3"
# LimeSurvey Field type: A
data[, 42] <- as.character(data[, 42])
attributes(data)$variable.labels[42] <- "Please leave any comments you may have about resources within the Department."
names(data)[42] <- "othersupport"
# LimeSurvey Field type: A
data[, 43] <- as.character(data[, 43])
attributes(data)$variable.labels[43] <- "Part I	Please answer the following questions about Part I of the general exam. Information on Part I can be found in the Doctoral Guidelines. Please read the Doctoral Guidelines if you are unfamiliar with the purpose and structure of Part I."
names(data)[43] <- "part1explanation"
# LimeSurvey Field type: A
data[, 44] <- as.character(data[, 44])
attributes(data)$variable.labels[44] <- "[...solidify my knowledge of undergraduate-level physics.] Please indicate the extent to which you agree with the following statements:	Given that I could spend my time otherwise, I find it valuable to prepare for my first attempt of Part I as a way to ..."
data[, 44] <- factor(data[, 44], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[44] <- "part1value_SQ1"
# LimeSurvey Field type: A
data[, 45] <- as.character(data[, 45])
attributes(data)$variable.labels[45] <- "[...prepare for taking graduate-level courses.] Please indicate the extent to which you agree with the following statements:	Given that I could spend my time otherwise, I find it valuable to prepare for my first attempt of Part I as a way to ..."
data[, 45] <- factor(data[, 45], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[45] <- "part1value_SQ2"
# LimeSurvey Field type: A
data[, 46] <- as.character(data[, 46])
attributes(data)$variable.labels[46] <- "[...solidify my knowledge of undergraduate-level physics.] Please indicate the extent to which you agree with the following statements:	Preparing for my first attempt of Part I is an effective way to..."
data[, 46] <- factor(data[, 46], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[46] <- "part1effective_SQ1"
# LimeSurvey Field type: A
data[, 47] <- as.character(data[, 47])
attributes(data)$variable.labels[47] <- "[...prepare for taking graduate-level courses.] Please indicate the extent to which you agree with the following statements:	Preparing for my first attempt of Part I is an effective way to..."
data[, 47] <- factor(data[, 47], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[47] <- "part1effective_SQ2"
# LimeSurvey Field type: F
data[, 48] <- as.numeric(data[, 48])
attributes(data)$variable.labels[48] <- "Have you passed Part I?"
data[, 48] <- factor(data[, 48], levels=c(1,2),labels=c("Yes", "No"))
names(data)[48] <- "pass1"
# LimeSurvey Field type: F
data[, 49] <- as.numeric(data[, 49])
attributes(data)$variable.labels[49] <- "How many times have you attempted Part I? (including the optional if you attempted it.)"
data[, 49] <- factor(data[, 49], levels=c(1,2,3,4),labels=c("once", "twice", "three times", "three times, with a special oral exam"))
names(data)[49] <- "part1attempts"
# LimeSurvey Field type: A
data[, 50] <- as.character(data[, 50])
attributes(data)$variable.labels[50] <- "[...solidify my knowledge of undergraduate-level physics.] Please indicate the extent to which you agree with the following statements:	Given that I could spend my time otherwise, I found it valuable to prepare for my second attempt at Part I as a way to ..."
data[, 50] <- factor(data[, 50], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[50] <- "part1secondvalue_SQ1"
# LimeSurvey Field type: A
data[, 51] <- as.character(data[, 51])
attributes(data)$variable.labels[51] <- "[...prepare for taking graduate-level courses.] Please indicate the extent to which you agree with the following statements:	Given that I could spend my time otherwise, I found it valuable to prepare for my second attempt at Part I as a way to ..."
data[, 51] <- factor(data[, 51], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[51] <- "part1secondvalue_SQ2"
# LimeSurvey Field type: A
data[, 52] <- as.character(data[, 52])
attributes(data)$variable.labels[52] <- "[...solidify my knowledge of undergraduate-level physics.] Please indicate the extent to which you agree with the following statements:	Preparing for my second attempt of Part I is an effective way to..."
data[, 52] <- factor(data[, 52], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[52] <- "part1secondeffective_SQ1"
# LimeSurvey Field type: A
data[, 53] <- as.character(data[, 53])
attributes(data)$variable.labels[53] <- "[...prepare for taking graduate-level courses.] Please indicate the extent to which you agree with the following statements:	Preparing for my second attempt of Part I is an effective way to..."
data[, 53] <- factor(data[, 53], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[53] <- "part1secondeffective_SQ2"
# LimeSurvey Field type: A
data[, 54] <- as.character(data[, 54])
attributes(data)$variable.labels[54] <- "Did you review your Part I submission after passing it?"
data[, 54] <- factor(data[, 54], levels=c("A1","1","2"),labels=c("No I passed it, its over!", "Yes I did/I plan to go over my submission with a faculty member", "Yes I did/I plan to go over my submission by myself"))
names(data)[54] <- "part1goover"
# LimeSurvey Field type: F
data[, 55] <- as.numeric(data[, 55])
attributes(data)$variable.labels[55] <- "How many hours (cumatively over all attempts) did you spend preparing for Part I ?"
names(data)[55] <- "part1studytime"
# LimeSurvey Field type: F
data[, 56] <- as.numeric(data[, 56])
attributes(data)$variable.labels[56] <- "Do (or did) you want a study group for Part I?"
data[, 56] <- factor(data[, 56], levels=c(1,2),labels=c("Yes", "No"))
names(data)[56] <- "part1studywant"
# LimeSurvey Field type: F
data[, 57] <- as.numeric(data[, 57])
attributes(data)$variable.labels[57] <- "Do (or did) you have a study group for Part I?"
data[, 57] <- factor(data[, 57], levels=c(1,2),labels=c("Yes", "No"))
names(data)[57] <- "part1studyhave"
# LimeSurvey Field type: A
data[, 58] <- as.character(data[, 58])
attributes(data)$variable.labels[58] <- "Please share any other comments you may have on Part I."
names(data)[58] <- "part1comments"
# LimeSurvey Field type: A
data[, 59] <- as.character(data[, 59])
attributes(data)$variable.labels[59] <- "Part II	Please answer the following questions about Part II of the general exam. Information on Part II can be found in the Doctoral Guidelines. Please read the Doctoral Guidelines if you are unfamiliar with the purpose and structure of Part II."
names(data)[59] <- "part2explanation"
# LimeSurvey Field type: A
data[, 60] <- as.character(data[, 60])
attributes(data)$variable.labels[60] <- "[...learn graduate-level physics.] Please indicate the extent to which you agree with the following statements:	Given that I could spend my time otherwise, I find it valuable to prepare for my first attempt of Part II as a way to..."
data[, 60] <- factor(data[, 60], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[60] <- "part2value_SQ1"
# LimeSurvey Field type: A
data[, 61] <- as.character(data[, 61])
attributes(data)$variable.labels[61] <- "[...prepare for specialized physics courses.] Please indicate the extent to which you agree with the following statements:	Given that I could spend my time otherwise, I find it valuable to prepare for my first attempt of Part II as a way to..."
data[, 61] <- factor(data[, 61], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[61] <- "part2value_SQ2"
# LimeSurvey Field type: A
data[, 62] <- as.character(data[, 62])
attributes(data)$variable.labels[62] <- "[...strengthen foundational concepts for a better understanding of research problems.] Please indicate the extent to which you agree with the following statements:	Given that I could spend my time otherwise, I find it valuable to prepare for my first attempt of Part II as a way to..."
data[, 62] <- factor(data[, 62], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[62] <- "part2value_SQ3"
# LimeSurvey Field type: A
data[, 63] <- as.character(data[, 63])
attributes(data)$variable.labels[63] <- "[...learn graduate-level physics.] Please indicate the extent to which you agree with the following statements:	Preparing for my first attempt of Part II is an effective way to..."
data[, 63] <- factor(data[, 63], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[63] <- "part2effective_SQ1"
# LimeSurvey Field type: A
data[, 64] <- as.character(data[, 64])
attributes(data)$variable.labels[64] <- "[...prepare for specialized physics courses.] Please indicate the extent to which you agree with the following statements:	Preparing for my first attempt of Part II is an effective way to..."
data[, 64] <- factor(data[, 64], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[64] <- "part2effective_SQ2"
# LimeSurvey Field type: A
data[, 65] <- as.character(data[, 65])
attributes(data)$variable.labels[65] <- "[...strengthen foundational concepts for a better understanding of research problems.] Please indicate the extent to which you agree with the following statements:	Preparing for my first attempt of Part II is an effective way to..."
data[, 65] <- factor(data[, 65], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[65] <- "part2effective_SQ3"
# LimeSurvey Field type: F
data[, 66] <- as.numeric(data[, 66])
attributes(data)$variable.labels[66] <- "Have you passed Part II?"
data[, 66] <- factor(data[, 66], levels=c(1,2),labels=c("Yes", "No"))
names(data)[66] <- "pass2"
# LimeSurvey Field type: F
data[, 67] <- as.numeric(data[, 67])
attributes(data)$variable.labels[67] <- "How many times have you attempted Part II?"
data[, 67] <- factor(data[, 67], levels=c(0,1,2,3),labels=c("zero times", "once", "twice", "twice, with a special oral exam"))
names(data)[67] <- "part2attempts"
# LimeSurvey Field type: A
data[, 68] <- as.character(data[, 68])
attributes(data)$variable.labels[68] <- "[...learn graduate-level physics.] Please indicate the extent to which you agree with the following statements:	Given that I could spend my time otherwise, I find it valuable to prepare for my second attempt of Part II  as a way to..."
data[, 68] <- factor(data[, 68], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[68] <- "part2secondvalue_SQ1"
# LimeSurvey Field type: A
data[, 69] <- as.character(data[, 69])
attributes(data)$variable.labels[69] <- "[...prepare for specialized physics courses.] Please indicate the extent to which you agree with the following statements:	Given that I could spend my time otherwise, I find it valuable to prepare for my second attempt of Part II  as a way to..."
data[, 69] <- factor(data[, 69], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[69] <- "part2secondvalue_SQ2"
# LimeSurvey Field type: A
data[, 70] <- as.character(data[, 70])
attributes(data)$variable.labels[70] <- "[...strengthen foundational concepts for a better understanding of research problems.] Please indicate the extent to which you agree with the following statements:	Given that I could spend my time otherwise, I find it valuable to prepare for my second attempt of Part II  as a way to..."
data[, 70] <- factor(data[, 70], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[70] <- "part2secondvalue_SQ3"
# LimeSurvey Field type: A
data[, 71] <- as.character(data[, 71])
attributes(data)$variable.labels[71] <- "[...learn graduate-level physics.] Please indicate the extent to which you agree with the following statements:	Preparing for my second attempt of Part II is an effective way to..."
data[, 71] <- factor(data[, 71], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[71] <- "part2secondeffective_SQ1"
# LimeSurvey Field type: A
data[, 72] <- as.character(data[, 72])
attributes(data)$variable.labels[72] <- "[...prepare for specialized physics courses.] Please indicate the extent to which you agree with the following statements:	Preparing for my second attempt of Part II is an effective way to..."
data[, 72] <- factor(data[, 72], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[72] <- "part2secondeffective_SQ2"
# LimeSurvey Field type: A
data[, 73] <- as.character(data[, 73])
attributes(data)$variable.labels[73] <- "[...strengthen foundational concepts for a better understanding of research problems.] Please indicate the extent to which you agree with the following statements:	Preparing for my second attempt of Part II is an effective way to..."
data[, 73] <- factor(data[, 73], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[73] <- "part2secondeffective_SQ3"
# LimeSurvey Field type: F
data[, 74] <- as.numeric(data[, 74])
attributes(data)$variable.labels[74] <- "Did you review your Part II submission after passing it?"
data[, 74] <- factor(data[, 74], levels=c(1,2,3),labels=c("No, I passed it, its over!", "Yes, I did/I plan to go over the exam by myself", "Yes, I did/I plan to go over the exam with a faculty member"))
names(data)[74] <- "part2goover"
# LimeSurvey Field type: F
data[, 75] <- as.numeric(data[, 75])
attributes(data)$variable.labels[75] <- "How many hours (cumatively over all attempts) did you spend preparing for Part II ?"
names(data)[75] <- "part2studytime"
# LimeSurvey Field type: F
data[, 76] <- as.numeric(data[, 76])
attributes(data)$variable.labels[76] <- "Do (or did) you want a study group for Part II?"
data[, 76] <- factor(data[, 76], levels=c(1,2),labels=c("Yes", "No"))
names(data)[76] <- "part2studywant"
# LimeSurvey Field type: F
data[, 77] <- as.numeric(data[, 77])
attributes(data)$variable.labels[77] <- "Do (or did) you have a study group for Part II?"
data[, 77] <- factor(data[, 77], levels=c(1,2),labels=c("Yes", "No"))
names(data)[77] <- "part2studyhave"
# LimeSurvey Field type: A
data[, 78] <- as.character(data[, 78])
attributes(data)$variable.labels[78] <- "Please share any other comments you may have on Part II."
names(data)[78] <- "part2comments"
# LimeSurvey Field type: A
data[, 79] <- as.character(data[, 79])
attributes(data)$variable.labels[79] <- "The Oral Exam	Please answer the following questions about the oral portion of the general exam. Information on the oral exam can be found in the Doctoral Guidelines. Please read the Doctoral Guidelines if you are unfamiliar with the purpose and structure of the oral exam."
names(data)[79] <- "part3explanation"
# LimeSurvey Field type: A
data[, 80] <- as.character(data[, 80])
attributes(data)$variable.labels[80] <- "[...the scheduling of the oral exam.] Please indicate the extent to which you agree with the following statements.For my field, there is sufficient information available about..."
data[, 80] <- factor(data[, 80], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[80] <- "part3info_part3scheduling"
# LimeSurvey Field type: A
data[, 81] <- as.character(data[, 81])
attributes(data)$variable.labels[81] <- "[...the content of the oral exam.  ] Please indicate the extent to which you agree with the following statements.For my field, there is sufficient information available about..."
data[, 81] <- factor(data[, 81], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[81] <- "part3info_part3content"
# LimeSurvey Field type: A
data[, 82] <- as.character(data[, 82])
attributes(data)$variable.labels[82] <- "[...learn about my field as it is generally understood.] Please indicate the extent to which you agree with the following statements:	Given that I could spend my time otherwise, I find it valuable to prepare for the oral exam as a way to..."
data[, 82] <- factor(data[, 82], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[82] <- "part3value_SQ1"
# LimeSurvey Field type: A
data[, 83] <- as.character(data[, 83])
attributes(data)$variable.labels[83] <- "[...acquire specialized knowledge about my particular research topic.] Please indicate the extent to which you agree with the following statements:	Given that I could spend my time otherwise, I find it valuable to prepare for the oral exam as a way to..."
data[, 83] <- factor(data[, 83], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[83] <- "part3value_SQ2"
# LimeSurvey Field type: A
data[, 84] <- as.character(data[, 84])
attributes(data)$variable.labels[84] <- "[...learn about my field as it is generally understood.] Please indicate the extent to which you agree with the following statements:	Preparing for the oral exam is an effective way to..."
data[, 84] <- factor(data[, 84], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[84] <- "part3effective_SQ1"
# LimeSurvey Field type: A
data[, 85] <- as.character(data[, 85])
attributes(data)$variable.labels[85] <- "[...acquire specialized knowledge about my particular research topic.] Please indicate the extent to which you agree with the following statements:	Preparing for the oral exam is an effective way to..."
data[, 85] <- factor(data[, 85], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[85] <- "part3effective_SQ2"
# LimeSurvey Field type: F
data[, 86] <- as.numeric(data[, 86])
attributes(data)$variable.labels[86] <- "Have you passed the oral exam?"
data[, 86] <- factor(data[, 86], levels=c(1,2),labels=c("Yes", "No"))
names(data)[86] <- "passoral"
# LimeSurvey Field type: F
data[, 87] <- as.numeric(data[, 87])
attributes(data)$variable.labels[87] <- "How many times have you attempted the oral exam?"
data[, 87] <- factor(data[, 87], levels=c(1,2,3),labels=c("zero times", "once", "twice"))
names(data)[87] <- "attemptoral"
# LimeSurvey Field type: A
data[, 88] <- as.character(data[, 88])
attributes(data)$variable.labels[88] <- "Please share any other comments you may have on the oral exam."
names(data)[88] <- "part3comments"
# LimeSurvey Field type: F
data[, 89] <- as.numeric(data[, 89])
attributes(data)$variable.labels[89] <- "Did you (or will you) prepare for the oral exam with other students?"
data[, 89] <- factor(data[, 89], levels=c(1,2),labels=c("Yes", "No"))
names(data)[89] <- "part3prepare"
# LimeSurvey Field type: F
data[, 90] <- as.numeric(data[, 90])
attributes(data)$variable.labels[90] <- "Was preparing with other students helpful?"
data[, 90] <- factor(data[, 90], levels=c(1,2),labels=c("Yes", "No"))
names(data)[90] <- "part3preparehelpful"
# LimeSurvey Field type: F
data[, 91] <- as.numeric(data[, 91])
attributes(data)$variable.labels[91] <- "Did you discuss the oral exam formally with a committee member prior to taking it?"
data[, 91] <- factor(data[, 91], levels=c(1,2),labels=c("Yes", "No"))
names(data)[91] <- "part3committeetalk"
# LimeSurvey Field type: F
data[, 92] <- as.numeric(data[, 92])
attributes(data)$variable.labels[92] <- "Excluding coursework, about how many hours did you spend preparing for the oral exam?"
names(data)[92] <- "part3studytime"
# LimeSurvey Field type: A
data[, 93] <- as.character(data[, 93])
attributes(data)$variable.labels[93] <- "Please share any other comments you may have concerning the general examination system as a whole."
names(data)[93] <- "generalexamcomments"
# LimeSurvey Field type: A
data[, 94] <- as.character(data[, 94])
attributes(data)$variable.labels[94] <- "[Part I should be attempted exactly once, and those who fail it must instead pass a remedial class.] Please indicate the extent to which you agree with each of the following suggested changes concerning Part I of the general examination."
data[, 94] <- factor(data[, 94], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[94] <- "part1proposals_SQ1"
# LimeSurvey Field type: A
data[, 95] <- as.character(data[, 95])
attributes(data)$variable.labels[95] <- "[Part I should be administered in the afternoon, not the morning.] Please indicate the extent to which you agree with each of the following suggested changes concerning Part I of the general examination."
data[, 95] <- factor(data[, 95], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[95] <- "part1proposals_SQ2"
# LimeSurvey Field type: A
data[, 96] <- as.character(data[, 96])
attributes(data)$variable.labels[96] <- "[There should be more application-centered questions on Part I.] Please indicate the extent to which you agree with each of the following suggested changes concerning Part I of the general examination."
data[, 96] <- factor(data[, 96], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[96] <- "part1proposals_SQ3"
# LimeSurvey Field type: F
data[, 97] <- as.numeric(data[, 97])
attributes(data)$variable.labels[97] <- "The deadline for passing Part I should be..."
data[, 97] <- factor(data[, 97], levels=c(3,4,5),labels=c("...moved later.", "...moved earlier.", "...kept as it is."))
names(data)[97] <- "part1timeproposal"
# LimeSurvey Field type: A
data[, 98] <- as.character(data[, 98])
attributes(data)$variable.labels[98] <- "[For each failed section in Part II, the associated class should be able to fulfill the corresponding general exam requirement.] Please indicate the extent to which you agree with each of the following suggested changes concerning Part 2 of the general examination."
data[, 98] <- factor(data[, 98], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[98] <- "part2proposals_SQ1"
# LimeSurvey Field type: A
data[, 99] <- as.character(data[, 99])
attributes(data)$variable.labels[99] <- "[In lieu of taking Part II, passing the four associated core classes should be able to fulfill the requirement completely.] Please indicate the extent to which you agree with each of the following suggested changes concerning Part 2 of the general examination."
data[, 99] <- factor(data[, 99], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[99] <- "part2proposals_SQ2"
# LimeSurvey Field type: A
data[, 100] <- as.character(data[, 100])
attributes(data)$variable.labels[100] <- "[Part II should be administered in the afternoon, not the morning.] Please indicate the extent to which you agree with each of the following suggested changes concerning Part 2 of the general examination."
data[, 100] <- factor(data[, 100], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[100] <- "part2proposals_SQ3"
# LimeSurvey Field type: A
data[, 101] <- as.character(data[, 101])
attributes(data)$variable.labels[101] <- "[Like Part I, Part II passing criteria should instead be based on the total score alone.] Please indicate the extent to which you agree with each of the following suggested changes concerning Part 2 of the general examination."
data[, 101] <- factor(data[, 101], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[101] <- "part2proposals_SQ4"
# LimeSurvey Field type: A
data[, 102] <- as.character(data[, 102])
attributes(data)$variable.labels[102] <- "[Part II should be administered over more than one day.] Please indicate the extent to which you agree with each of the following suggested changes concerning Part 2 of the general examination."
data[, 102] <- factor(data[, 102], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[102] <- "part2proposals_SQ5"
# LimeSurvey Field type: A
data[, 103] <- as.character(data[, 103])
attributes(data)$variable.labels[103] <- "[There should be more questions to choose from in each section of Part II.] Please indicate the extent to which you agree with each of the following suggested changes concerning Part 2 of the general examination."
data[, 103] <- factor(data[, 103], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[103] <- "part2proposals_SQ6"
# LimeSurvey Field type: A
data[, 104] <- as.character(data[, 104])
attributes(data)$variable.labels[104] <- "[There should be more application-centered questions on Part II.] Please indicate the extent to which you agree with each of the following suggested changes concerning Part 2 of the general examination."
data[, 104] <- factor(data[, 104], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[104] <- "part2proposals_SQ7"
# LimeSurvey Field type: A
data[, 105] <- as.character(data[, 105])
attributes(data)$variable.labels[105] <- "[Part II should have a dedicated preparatory class akin to the one that exists for Part I.] Please indicate the extent to which you agree with each of the following suggested changes concerning Part 2 of the general examination."
data[, 105] <- factor(data[, 105], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[105] <- "part2proposals_SQ8"
# LimeSurvey Field type: F
data[, 106] <- as.numeric(data[, 106])
attributes(data)$variable.labels[106] <- "The deadline for passing Part II should be..."
data[, 106] <- factor(data[, 106], levels=c(3,4,5),labels=c("...moved later.", "...moved earlier.", "...kept as it is."))
names(data)[106] <- "part2timeproposal"
# LimeSurvey Field type: A
data[, 107] <- as.character(data[, 107])
attributes(data)$variable.labels[107] <- "[Students should be allowed to attempt the oral exam an arbitrary number of times.] Please indicate the extent to which you agree with each of the following suggested change concerning the oral portion of the general examination."
data[, 107] <- factor(data[, 107], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[107] <- "part3proposals_SQ5"
# LimeSurvey Field type: F
data[, 108] <- as.numeric(data[, 108])
attributes(data)$variable.labels[108] <- "The deadline for passing the oral exam should be..."
data[, 108] <- relevel(relevel(factor(data[, 108], levels=c(1,2,3),labels=c("...moved later", "...moved earlier", "...kept as it is.")), "...kept as it is."), "...moved earlier")
names(data)[108] <- "part3timealtproposal"
# LimeSurvey Field type: A
data[, 109] <- as.character(data[, 109])
attributes(data)$variable.labels[109] <- "[Given that the general examination has the power to eject a student from the program as late as their fourth year, the exam\'s overall timetable should be accelerated.] Please indicate the extent to which you agree with each of the following statements concerning the general examination."
data[, 109] <- factor(data[, 109], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[109] <- "generalproposals_SQ2"
# LimeSurvey Field type: A
data[, 110] <- as.character(data[, 110])
attributes(data)$variable.labels[110] <- "[The general exam system as a whole ought to be changed.] Please indicate the extent to which you agree with each of the following statements concerning the general examination."
data[, 110] <- factor(data[, 110], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[110] <- "generalproposals_SQ3"
# LimeSurvey Field type: A
data[, 111] <- as.character(data[, 111])
attributes(data)$variable.labels[111] <- "[The structure of the general exam played a positive role in my decision to attend MIT.] Please indicate the extent to which you agree with each of the following statements concerning the general examination."
data[, 111] <- factor(data[, 111], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[111] <- "generalproposals_SQ4"
# LimeSurvey Field type: A
data[, 112] <- as.character(data[, 112])
attributes(data)$variable.labels[112] <- "[The structure of the general exam played a positive role in the graduate school decisions of people I know.] Please indicate the extent to which you agree with each of the following statements concerning the general examination."
data[, 112] <- factor(data[, 112], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[112] <- "generalproposals_SQ5"
# LimeSurvey Field type: A
data[, 113] <- as.character(data[, 113])
attributes(data)$variable.labels[113] <- "How should the general exam be changed?"
names(data)[113] <- "altproposals"
# LimeSurvey Field type: A
data[, 114] <- as.character(data[, 114])
attributes(data)$variable.labels[114] <- "Please share any other comments you may have with regards to improving the general examination system."
names(data)[114] <- "generalcomments"
# LimeSurvey Field type: A
data[, 115] <- as.character(data[, 115])
attributes(data)$variable.labels[115] <- "[If I need to prepare for a class or presentation, I can find students to form a study group or audience.] Indicate the extent to which you agree with the following statements concerning your personal development within the Department of Physics."
data[, 115] <- factor(data[, 115], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[115] <- "personal_SQ1"
# LimeSurvey Field type: A
data[, 116] <- as.character(data[, 116])
attributes(data)$variable.labels[116] <- "[I have good friends both inside and outside the department.] Indicate the extent to which you agree with the following statements concerning your personal development within the Department of Physics."
data[, 116] <- factor(data[, 116], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[116] <- "personal_SQ2"
# LimeSurvey Field type: A
data[, 117] <- as.character(data[, 117])
attributes(data)$variable.labels[117] <- "[I am aware of the range of resources offered by PhysREFS and MIT Medical\'s Mental Health and Counseling.] Indicate the extent to which you agree with the following statements concerning your personal development within the Department of Physics."
data[, 117] <- factor(data[, 117], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[117] <- "personal_S10"
# LimeSurvey Field type: A
data[, 118] <- as.character(data[, 118])
attributes(data)$variable.labels[118] <- "[If I am struggling with a personal or professional issue, such as tension with colleagues, my relationship with my advisor, or stress about general exams, I can go to PhysREFS for help.] Indicate the extent to which you agree with the following statements concerning your personal development within the Department of Physics."
data[, 118] <- factor(data[, 118], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[118] <- "personal_SQ3"
# LimeSurvey Field type: A
data[, 119] <- as.character(data[, 119])
attributes(data)$variable.labels[119] <- "[Likewise, if I am struggling with an issue, I can go to MIT Medical\'s Mental Health and Counseling for help.] Indicate the extent to which you agree with the following statements concerning your personal development within the Department of Physics."
data[, 119] <- factor(data[, 119], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[119] <- "personal_SQ4"
# LimeSurvey Field type: A
data[, 120] <- as.character(data[, 120])
attributes(data)$variable.labels[120] <- "[Likewise, if I am struggling with an issue, I can go to MIT\'s Graduate Women in Physics for help.] Indicate the extent to which you agree with the following statements concerning your personal development within the Department of Physics."
data[, 120] <- factor(data[, 120], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[120] <- "personal_SQ5"
# LimeSurvey Field type: A
data[, 121] <- as.character(data[, 121])
attributes(data)$variable.labels[121] <- "[The department supplies graduate students with a satisfactory quantity of free food.] Indicate the extent to which you agree with the following statements concerning your personal development within the Department of Physics."
data[, 121] <- factor(data[, 121], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[121] <- "personal_SQ6"
# LimeSurvey Field type: A
data[, 122] <- as.character(data[, 122])
attributes(data)$variable.labels[122] <- "[Within the department, there are many opportunities to interact with students in other groups and divisions.] Indicate the extent to which you agree with the following statements concerning your personal development within the Department of Physics."
data[, 122] <- factor(data[, 122], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[122] <- "personal_SQ7"
# LimeSurvey Field type: A
data[, 123] <- as.character(data[, 123])
attributes(data)$variable.labels[123] <- "[Within the department, there are many opportunities to interact with postdocs and faculty members in other groups and divisions.] Indicate the extent to which you agree with the following statements concerning your personal development within the Department of Physics."
data[, 123] <- factor(data[, 123], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[123] <- "personal_SQ8"
# LimeSurvey Field type: A
data[, 124] <- as.character(data[, 124])
attributes(data)$variable.labels[124] <- "[The department exhibits a friendly social atmosphere.] Indicate the extent to which you agree with the following statements concerning your personal development within the Department of Physics."
data[, 124] <- factor(data[, 124], levels=c("L001","L002","L003","L004","L005"),labels=c("Disagree", "Somewhat Disagree", "Neither Agree nor Disagree", "Somewhat Agree", "Agree"))
names(data)[124] <- "personal_SQ9"
# LimeSurvey Field type: F
data[, 125] <- as.numeric(data[, 125])
attributes(data)$variable.labels[125] <- "[I am...] How happy are you as a graduate student?"
data[, 125] <- factor(data[, 125], levels=c(1,2,3,4,5,6,7),labels=c("Very Unhappy", "Unhappy", "Somewhat Unhappy", "Neither Happy nor Unhappy", "Somewhat Happy", "Happy", "Very Happy"))
names(data)[125] <- "happiness_SQ001"
# LimeSurvey Field type: F
data[, 126] <- as.numeric(data[, 126])
attributes(data)$variable.labels[126] <- "To what degree would you recommend the MIT Physics program to someone who is considering it?	 "
data[, 126] <- factor(data[, 126], levels=c(1,2,3),labels=c("Not at all", "Somewhat", "Completely"))
names(data)[126] <- "recommend"
# LimeSurvey Field type: F
data[, 127] <- as.numeric(data[, 127])
attributes(data)$variable.labels[127] <- "[...cookie socials?] How often do you attend..."
data[, 127] <- factor(data[, 127], levels=c(1,2,3,4,5),labels=c("Never", "Seldom", "Sometimes", "Often", "Always"))
names(data)[127] <- "attendance_SQ1"
# LimeSurvey Field type: F
data[, 128] <- as.numeric(data[, 128])
attributes(data)$variable.labels[128] <- "[...ice cream socials?] How often do you attend..."
data[, 128] <- factor(data[, 128], levels=c(1,2,3,4,5),labels=c("Never", "Seldom", "Sometimes", "Often", "Always"))
names(data)[128] <- "attendance_SQ2"
# LimeSurvey Field type: F
data[, 129] <- as.numeric(data[, 129])
attributes(data)$variable.labels[129] <- "[...department-wide socials?] How often do you attend..."
data[, 129] <- factor(data[, 129], levels=c(1,2,3,4,5),labels=c("Never", "Seldom", "Sometimes", "Often", "Always"))
names(data)[129] <- "attendance_SQ3"
# LimeSurvey Field type: F
data[, 130] <- as.numeric(data[, 130])
attributes(data)$variable.labels[130] <- "[...Friday/pub socials?] How often do you attend..."
data[, 130] <- factor(data[, 130], levels=c(1,2,3,4,5),labels=c("Never", "Seldom", "Sometimes", "Often", "Always"))
names(data)[130] <- "attendance_SQ4"
# LimeSurvey Field type: F
data[, 131] <- as.numeric(data[, 131])
attributes(data)$variable.labels[131] <- "[...Kaleidoscope talks?] How often do you attend..."
data[, 131] <- factor(data[, 131], levels=c(1,2,3,4,5),labels=c("Never", "Seldom", "Sometimes", "Often", "Always"))
names(data)[131] <- "attendance_SQ5"
# LimeSurvey Field type: F
data[, 132] <- as.numeric(data[, 132])
attributes(data)$variable.labels[132] <- "[...student lunch research talks?] How often do you attend..."
data[, 132] <- factor(data[, 132], levels=c(1,2,3,4,5),labels=c("Never", "Seldom", "Sometimes", "Often", "Always"))
names(data)[132] <- "attendance_SQ6"
# LimeSurvey Field type: F
data[, 133] <- as.numeric(data[, 133])
attributes(data)$variable.labels[133] <- "[...your division\'s regular events (e.g., seminars and holiday events)?] How often do you attend..."
data[, 133] <- factor(data[, 133], levels=c(1,2,3,4,5),labels=c("Never", "Seldom", "Sometimes", "Often", "Always"))
names(data)[133] <- "attendance_SQ7"
# LimeSurvey Field type: F
data[, 134] <- as.numeric(data[, 134])
attributes(data)$variable.labels[134] <- "Why do you not attend cookie socials?"
data[, 134] <- factor(data[, 134], levels=c(1,2,3,4,5),labels=c("I'm too busy.", "I have a scheduling conflict.", "I forget to attend.", "It's too far away.", "I have no interest in going."))
names(data)[134] <- "nocookie"
# LimeSurvey Field type: A
data[, 135] <- as.character(data[, 135])
attributes(data)$variable.labels[135] <- "[Other] Why do you not attend cookie socials?"
names(data)[135] <- "nocookie_other"
# LimeSurvey Field type: F
data[, 136] <- as.numeric(data[, 136])
attributes(data)$variable.labels[136] <- "Why do you not attend ice cream socials?"
data[, 136] <- factor(data[, 136], levels=c(1,2,3,4,5),labels=c("I'm too busy.", "I have a scheduling conflict.", "I forget to attend.", "It's too far away.", "I have no interest in going."))
names(data)[136] <- "noicecream"
# LimeSurvey Field type: A
data[, 137] <- as.character(data[, 137])
attributes(data)$variable.labels[137] <- "[Other] Why do you not attend ice cream socials?"
names(data)[137] <- "noicecream_other"
# LimeSurvey Field type: F
data[, 138] <- as.numeric(data[, 138])
attributes(data)$variable.labels[138] <- "Why do you not attend department socials?"
data[, 138] <- factor(data[, 138], levels=c(1,2,3,4,5,6),labels=c("I'm too busy.", "I have a scheduling conflict.", "I forget to attend.", "It's too far away.", "I have no interest in going.", "I've never heard of them."))
names(data)[138] <- "nodepartment"
# LimeSurvey Field type: A
data[, 139] <- as.character(data[, 139])
attributes(data)$variable.labels[139] <- "[Other] Why do you not attend department socials?"
names(data)[139] <- "nodepartment_other"
# LimeSurvey Field type: A
data[, 140] <- as.character(data[, 140])
attributes(data)$variable.labels[140] <- "Department socials are events that (unlike cookie socials) are open to the entire Department of Physics, including postdocs, faculty, staff and undergraduates. They were started in the Fall of 2013."
names(data)[140] <- "whatdepartment"
# LimeSurvey Field type: F
data[, 141] <- as.numeric(data[, 141])
attributes(data)$variable.labels[141] <- "Why do you not attend Friday/pub socials?"
data[, 141] <- factor(data[, 141], levels=c(1,2,3,4,5),labels=c("I'm too busy.", "I have a scheduling conflict.", "I forget to attend.", "It's too far away.", "I have no interest in going."))
names(data)[141] <- "nofriday"
# LimeSurvey Field type: A
data[, 142] <- as.character(data[, 142])
attributes(data)$variable.labels[142] <- "[Other] Why do you not attend Friday/pub socials?"
names(data)[142] <- "nofriday_other"
# LimeSurvey Field type: F
data[, 143] <- as.numeric(data[, 143])
attributes(data)$variable.labels[143] <- "Why do you not attend Kaleidoscope talks?"
data[, 143] <- factor(data[, 143], levels=c(1,2,3,4,5,6),labels=c("I'm too busy.", "I have a scheduling conflict.", "I forget to attend.", "It's too far away.", "I have no interest in going.", "I've never heard of them."))
names(data)[143] <- "nokaleidoscope"
# LimeSurvey Field type: A
data[, 144] <- as.character(data[, 144])
attributes(data)$variable.labels[144] <- "[Other] Why do you not attend Kaleidoscope talks?"
names(data)[144] <- "nokaleidoscope_other"
# LimeSurvey Field type: A
data[, 145] <- as.character(data[, 145])
attributes(data)$variable.labels[145] <- "Kaliedoscope talks are more relaxed talks given by graduate students on whatever subject they choose (not necessarily physics). They are accompanied by light snacks, and were started in the Fall of 2013."
names(data)[145] <- "whatkaleidoscope"
# LimeSurvey Field type: F
data[, 146] <- as.numeric(data[, 146])
attributes(data)$variable.labels[146] <- "Why do you not attend student lunch talks?"
data[, 146] <- factor(data[, 146], levels=c(1,2,3,4,5,6),labels=c("I'm too busy.", "I have a scheduling conflict.", "I forget to attend.", "It's too far away.", "I have no interest in going.", "I've never heard of them."))
names(data)[146] <- "nolunch"
# LimeSurvey Field type: A
data[, 147] <- as.character(data[, 147])
attributes(data)$variable.labels[147] <- "[Other] Why do you not attend student lunch talks?"
names(data)[147] <- "nolunch_other"
# LimeSurvey Field type: A
data[, 148] <- as.character(data[, 148])
attributes(data)$variable.labels[148] <- "The student lunch talks are individual research presentations held in the Student Center and provided with catered lunch."
names(data)[148] <- "whatlunch"
# LimeSurvey Field type: F
data[, 149] <- as.numeric(data[, 149])
attributes(data)$variable.labels[149] <- "Why do you not attend division events?"
data[, 149] <- factor(data[, 149], levels=c(1,2,3,4,5),labels=c("I'm too busy.", "I have a scheduling conflict.", "I forget to attend.", "It's too far away.", "I have no interest in going."))
names(data)[149] <- "nodivision"
# LimeSurvey Field type: A
data[, 150] <- as.character(data[, 150])
attributes(data)$variable.labels[150] <- "[Other] Why do you not attend division events?"
names(data)[150] <- "nodivision_other"
# LimeSurvey Field type: A
data[, 151] <- as.character(data[, 151])
attributes(data)$variable.labels[151] <- "Please describe any other ideas you may have concerning department events."
names(data)[151] <- "eventcomments"
# LimeSurvey Field type: F
data[, 152] <- as.numeric(data[, 152])
attributes(data)$variable.labels[152] <- "[...thinking and studying.] The graduate student lounge is a place for..."
data[, 152] <- factor(data[, 152], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[152] <- "currentlounge_SQ001"
# LimeSurvey Field type: F
data[, 153] <- as.numeric(data[, 153])
attributes(data)$variable.labels[153] <- "[...talking and socializing.] The graduate student lounge is a place for..."
data[, 153] <- factor(data[, 153], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[153] <- "currentlounge_SQ002"
# LimeSurvey Field type: F
data[, 154] <- as.numeric(data[, 154])
attributes(data)$variable.labels[154] <- "[...thinking and studying.] I want the graduate student lounge to be a place for..."
data[, 154] <- factor(data[, 154], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[154] <- "wantlounge_SQ001"
# LimeSurvey Field type: F
data[, 155] <- as.numeric(data[, 155])
attributes(data)$variable.labels[155] <- "[...talking and socializing.] I want the graduate student lounge to be a place for..."
data[, 155] <- factor(data[, 155], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[155] <- "wantlounge_SQ002"
# LimeSurvey Field type: A
data[, 156] <- as.character(data[, 156])
attributes(data)$variable.labels[156] <- "Please describe any improvements to the graduate student lounge\'s infrastructure that you would like to see."
names(data)[156] <- "loungecomments"
# LimeSurvey Field type: F
data[, 157] <- as.numeric(data[, 157])
attributes(data)$variable.labels[157] <- "What year are you?"
data[, 157] <- factor(data[, 157], levels=c(1,2,3,4,5,6,7),labels=c("1", "2", "3", "4", "5", "6", "7+"))
names(data)[157] <- "year"
# LimeSurvey Field type: F
data[, 158] <- as.numeric(data[, 158])
attributes(data)$variable.labels[158] <- "[theoretical] Would you identify your research as theoretical or experimental?"
data[, 158] <- factor(data[, 158], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[158] <- "theoryexp_SQ1"
# LimeSurvey Field type: F
data[, 159] <- as.numeric(data[, 159])
attributes(data)$variable.labels[159] <- "[experimental] Would you identify your research as theoretical or experimental?"
data[, 159] <- factor(data[, 159], levels=c(1,0),labels=c("Yes", "Not selected"))
names(data)[159] <- "theoryexp_SQ2"
# LimeSurvey Field type: F
data[, 160] <- as.numeric(data[, 160])
attributes(data)$variable.labels[160] <- "Out of the following, which area of physics does your research fall in?"
data[, 160] <- factor(data[, 160], levels=c(1,2,3,4,7,8,9),labels=c("Astrophysics", "Atomic and Optical Physics", "Biophysics", "Condensed Matter Physics", "Nuclear and Particle Physics", "Quantum Information", "Plasma Physics"))
names(data)[160] <- "subject"
# LimeSurvey Field type: A
data[, 161] <- as.character(data[, 161])
attributes(data)$variable.labels[161] <- "Are you a native English speaker?"
data[, 161] <- factor(data[, 161], levels=c("Yes","Sorto","No"),labels=c("Yes.", "No, but I'm comfortable communicating in English.", "No."))
names(data)[161] <- "english"
# LimeSurvey Field type: F
data[, 162] <- as.numeric(data[, 162])
attributes(data)$variable.labels[162] <- "What is your gender?"
data[, 162] <- factor(data[, 162], levels=c(1,3),labels=c("Female", "Male"))
names(data)[162] <- "gender"
# LimeSurvey Field type: F
data[, 163] <- as.numeric(data[, 163])
attributes(data)$variable.labels[163] <- "[Other] What is your gender?"
names(data)[163] <- "gender_other"
# LimeSurvey Field type: A
data[, 164] <- as.character(data[, 164])
attributes(data)$variable.labels[164] <- "Thank you for reaching the end of this survey. We would love to hear any comments you have about this survey."
names(data)[164] <- "surveycomments"
# LimeSurvey Field type: 
data[, 165] <- as.character(data[, 165])
attributes(data)$variable.labels[165] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 166] <- as.character(data[, 166])
attributes(data)$variable.labels[166] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 167] <- as.character(data[, 167])
attributes(data)$variable.labels[167] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 168] <- as.character(data[, 168])
attributes(data)$variable.labels[168] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 169] <- as.character(data[, 169])
attributes(data)$variable.labels[169] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 170] <- as.character(data[, 170])
attributes(data)$variable.labels[170] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 171] <- as.character(data[, 171])
attributes(data)$variable.labels[171] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 172] <- as.character(data[, 172])
attributes(data)$variable.labels[172] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 173] <- as.character(data[, 173])
attributes(data)$variable.labels[173] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 174] <- as.character(data[, 174])
attributes(data)$variable.labels[174] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 175] <- as.character(data[, 175])
attributes(data)$variable.labels[175] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 176] <- as.character(data[, 176])
attributes(data)$variable.labels[176] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 177] <- as.character(data[, 177])
attributes(data)$variable.labels[177] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 178] <- as.character(data[, 178])
attributes(data)$variable.labels[178] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 179] <- as.character(data[, 179])
attributes(data)$variable.labels[179] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 180] <- as.character(data[, 180])
attributes(data)$variable.labels[180] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 181] <- as.character(data[, 181])
attributes(data)$variable.labels[181] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 182] <- as.character(data[, 182])
attributes(data)$variable.labels[182] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 183] <- as.character(data[, 183])
attributes(data)$variable.labels[183] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 184] <- as.character(data[, 184])
attributes(data)$variable.labels[184] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 185] <- as.character(data[, 185])
attributes(data)$variable.labels[185] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 186] <- as.character(data[, 186])
attributes(data)$variable.labels[186] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 187] <- as.character(data[, 187])
attributes(data)$variable.labels[187] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 188] <- as.character(data[, 188])
attributes(data)$variable.labels[188] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 189] <- as.character(data[, 189])
attributes(data)$variable.labels[189] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 190] <- as.character(data[, 190])
attributes(data)$variable.labels[190] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 191] <- as.character(data[, 191])
attributes(data)$variable.labels[191] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 192] <- as.character(data[, 192])
attributes(data)$variable.labels[192] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 193] <- as.character(data[, 193])
attributes(data)$variable.labels[193] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 194] <- as.character(data[, 194])
attributes(data)$variable.labels[194] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 195] <- as.character(data[, 195])
attributes(data)$variable.labels[195] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 196] <- as.character(data[, 196])
attributes(data)$variable.labels[196] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 197] <- as.character(data[, 197])
attributes(data)$variable.labels[197] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 198] <- as.character(data[, 198])
attributes(data)$variable.labels[198] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 199] <- as.character(data[, 199])
attributes(data)$variable.labels[199] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 200] <- as.character(data[, 200])
attributes(data)$variable.labels[200] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 201] <- as.character(data[, 201])
attributes(data)$variable.labels[201] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 202] <- as.character(data[, 202])
attributes(data)$variable.labels[202] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 203] <- as.character(data[, 203])
attributes(data)$variable.labels[203] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 204] <- as.character(data[, 204])
attributes(data)$variable.labels[204] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 205] <- as.character(data[, 205])
attributes(data)$variable.labels[205] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 206] <- as.character(data[, 206])
attributes(data)$variable.labels[206] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 207] <- as.character(data[, 207])
attributes(data)$variable.labels[207] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 208] <- as.character(data[, 208])
attributes(data)$variable.labels[208] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 209] <- as.character(data[, 209])
attributes(data)$variable.labels[209] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 210] <- as.character(data[, 210])
attributes(data)$variable.labels[210] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 211] <- as.character(data[, 211])
attributes(data)$variable.labels[211] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 212] <- as.character(data[, 212])
attributes(data)$variable.labels[212] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 213] <- as.character(data[, 213])
attributes(data)$variable.labels[213] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 214] <- as.character(data[, 214])
attributes(data)$variable.labels[214] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 215] <- as.character(data[, 215])
attributes(data)$variable.labels[215] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 216] <- as.character(data[, 216])
attributes(data)$variable.labels[216] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 217] <- as.character(data[, 217])
attributes(data)$variable.labels[217] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 218] <- as.character(data[, 218])
attributes(data)$variable.labels[218] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 219] <- as.character(data[, 219])
attributes(data)$variable.labels[219] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 220] <- as.character(data[, 220])
attributes(data)$variable.labels[220] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 221] <- as.character(data[, 221])
attributes(data)$variable.labels[221] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 222] <- as.character(data[, 222])
attributes(data)$variable.labels[222] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 223] <- as.character(data[, 223])
attributes(data)$variable.labels[223] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 224] <- as.character(data[, 224])
attributes(data)$variable.labels[224] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 225] <- as.character(data[, 225])
attributes(data)$variable.labels[225] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 226] <- as.character(data[, 226])
attributes(data)$variable.labels[226] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 227] <- as.character(data[, 227])
attributes(data)$variable.labels[227] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 228] <- as.character(data[, 228])
attributes(data)$variable.labels[228] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 229] <- as.character(data[, 229])
attributes(data)$variable.labels[229] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 230] <- as.character(data[, 230])
attributes(data)$variable.labels[230] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 231] <- as.character(data[, 231])
attributes(data)$variable.labels[231] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 232] <- as.character(data[, 232])
attributes(data)$variable.labels[232] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 233] <- as.character(data[, 233])
attributes(data)$variable.labels[233] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 234] <- as.character(data[, 234])
attributes(data)$variable.labels[234] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 235] <- as.character(data[, 235])
attributes(data)$variable.labels[235] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 236] <- as.character(data[, 236])
attributes(data)$variable.labels[236] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 237] <- as.character(data[, 237])
attributes(data)$variable.labels[237] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 238] <- as.character(data[, 238])
attributes(data)$variable.labels[238] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 239] <- as.character(data[, 239])
attributes(data)$variable.labels[239] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 240] <- as.character(data[, 240])
attributes(data)$variable.labels[240] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 241] <- as.character(data[, 241])
attributes(data)$variable.labels[241] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 242] <- as.character(data[, 242])
attributes(data)$variable.labels[242] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 243] <- as.character(data[, 243])
attributes(data)$variable.labels[243] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 244] <- as.character(data[, 244])
attributes(data)$variable.labels[244] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 245] <- as.character(data[, 245])
attributes(data)$variable.labels[245] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 246] <- as.character(data[, 246])
attributes(data)$variable.labels[246] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 247] <- as.character(data[, 247])
attributes(data)$variable.labels[247] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 248] <- as.character(data[, 248])
attributes(data)$variable.labels[248] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 249] <- as.character(data[, 249])
attributes(data)$variable.labels[249] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 250] <- as.character(data[, 250])
attributes(data)$variable.labels[250] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 251] <- as.character(data[, 251])
attributes(data)$variable.labels[251] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 252] <- as.character(data[, 252])
attributes(data)$variable.labels[252] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 253] <- as.character(data[, 253])
attributes(data)$variable.labels[253] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 254] <- as.character(data[, 254])
attributes(data)$variable.labels[254] <- ""
#sql_name not set
# LimeSurvey Field type: 
data[, 255] <- as.character(data[, 255])
attributes(data)$variable.labels[255] <- ""
#sql_name not set
return(data)
}
