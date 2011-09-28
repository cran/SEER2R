\name{SEER2R-package}
\alias{SEER2R-package}
\alias{SEER2R}
\docType{package}
\title{
read from and write to SEER*STAT export files
}
\description{ The Surveillance, Epidemiology, and End Results (SEER) Program of the National Cancer
Institute (NCI) is an authoritative source of information on cancer incidence
and survival in the United States. The SEER*Stat software developed by NCI provides a convenient, intuitive
mechanism for the analysis of SEER and other cancer-related databases. 
SEER*STAT presents results in matrix session and users can export results into data file (either in plain text format or gz format)
and dictionary information into dic file.  read.SeerStat reads data and dictionary information 
from SEER*STAT export files. write.SeerStat writes data and dictionary information to files in the formats of SEER*STAT export files

}
\details{
\tabular{ll}{
Package: \tab SEER2R\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2011-09-28\cr
License: \tab \cr
LazyLoad: \tab yes\cr
}
}
\author{

Maintainer: Jun Luo <rpackages@gmail.com>
}
\references{
Jun Luo and Binbing Yu, 'SEER2R: An interface between SEER cancer registry data and R'
}
\keyword{ package }
\keyword{ SEER*STAT }
\keyword{ Cancer registry }% __ONLY ONE__ keyword per line
\keyword{ SEER2R }

\seealso{

\code{\link{read.SeerStat}}, \code{\link{write.SeerStat}}
}
\examples{

#load testing data: there are three data objects, i.e. SEER2RTestData1,SEER2RTestData2,SEER2RTestData3 
data("SEER2RTestdata");

#create one SEER*STAT export dic and the associated text data file for testing purpose
dicinfoused = write.SeerStat(SEER2RTestData2, DICfileName = "testrun1.dic",UseVarLabelsInTxtFile=FALSE);

#usage of read.SeerStat
mydata = read.SeerStat("testrun1.dic",UseVarLabelsInData=FALSE);
#get informatin inside the dic file
DICInfo = attr(mydata, "DICInfo");

#change names of columns whose names contains strings "site" or "sex"; 
#the order of strings does not matter
testdatanewnames = attr(mydata,"assignColNames")(mydata,c("sex","site"));

#extract columns whose names contains strings "site" or "sex";
testdata = attr(mydata,"getSubDataByVarName")(mydata,c("site","sex"));

#usage of write.SeerStat
dicinfoused = write.SeerStat(mydata, DICfileName = "testrun2.dic", UseVarLabelsInTxtFile = FALSE);

}
