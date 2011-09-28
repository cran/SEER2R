\name{read.SeerStat}
\alias{read.SeerStat}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
read from SEER*STAT export files
}
\description{
SEER*STAT presents results in matrix session and users can export results into data file (either in plain text format or gz format)
and dictionary information into dic file.  read.SeerStat reads data and dictionary information 
from SEER*STAT export files.
}
\usage{
read.SeerStat(DICfileName, TXTfileName = NULL, UseVarLabelsInData = FALSE,ReadHeaderOnly=FALSE,...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{DICfileName}{:
filename of the dic file. The default extention is 'dic'. 
If 'DICfileName' does not contain at the end a string '.dic' (letter case does not matter), then '.dic' will be added.
}
  \item{TXTfileName}{:
filename of the associated data file. If TXTfileName = NULL, then a string of 
DICfileName with extention substituted by 'txt' (for uncompressed data file) or 'gz' (for gzip compressed data file)
will be used (whether 'txt' or 'gz' depends on information in the dic file).
}
  \item{UseVarLabelsInData}{: 
a logic value. If true, then variable labels read from the dic file will replace associated 
numeric values in the data.frame object, which stores data from the associated data file and is returned by this 
function read.SeerStat. If false, then data read from the associated data file won't be changed.
}

  \item{ReadHeaderOnly}{:
a logic value. If true, then only the list storing the information read from the dic file will be returned.
Otherwise, A data frame object containing a representation of the data in the associated data file will be returned.
}

  \item{...}{:
Arguments to be passed to \code{\link{read.table}} for reading from the associated data file.
}

}
\details{
%%  ~~ If necessary, more details than the description above ~~
``read.SeerStat'' reads data from a SEER*Stat data file into an object of data.frame in R and 
stores information from the associated dictionary file in an attribute variable (named ``DICInfo'') 
of the data.frame object. The variables of the SEER*Stat data file are stored in columns of 
the data.frame object. The column names of the data.frame object are based on the variable names 
in the associated SEER*Stat dic file, with special characters
``,:()<>=\{\}!@#$%^&*+-'' removed and every group of consecutive spaces changed 
to a single `_'. For example, the column name will be
``Example_Variable_1'' if the variable name in the SEER*Stat dic file 
is ``Example* (Variable 1)''.

}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...

A data frame (data.frame) containing a representation of the data in the associated data file and having three attributes 
('DICInfo': a list storing
dictionary information read from the dic file; 'assignColNames': a function that assigns new names 
(they are substrings of names of those columns that will be replaced) to asscociated columns of a data.frame object; 
'getSubDataByVarName': a function that extracts columns of a data.frame object 
given substrings of names of columns that will be extracted
). 

or 

a list storing
dictionary information read from the dic file if ReadHeaderOnly is true


}
\references{
Jun Luo and Binbing Yu, 'SEER2R: An interface between SEER cancer registry data and R'
}
\author{
Jun Luo

Maintainer: Jun Luo <rpackages@gmail.com>

}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
\code{\link{write.SeerStat}}, \code{\link{SEER2R}}
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
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ SEER*STAT }
\keyword{ Cancer registry }% __ONLY ONE__ keyword per line
\keyword{ SEER2R }
