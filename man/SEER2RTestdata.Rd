\name{SEER2RTestdata}
\alias{SEER2RTestdata}
\alias{SEER2RTestData1}
\alias{SEER2RTestData2}
\alias{SEER2RTestData3}
\docType{data}
\title{
Testing data for the package SEER2R
}
\description{
There are three data objects, i.e. SEER2RTestData1,SEER2RTestData2,SEER2RTestData3, contained in SEER2RTestData.rda.

}
\format{
  SEER2RTestData1: A data frame with 495 observations on the following 7 variables.
  \describe{
    \item{\code{Statecounty_Test}}{a factor with levels \code{CA: Alameda County (06001)} \code{CA: Contra Costa County (06013)} \code{CA: Marin County (06041)} \code{CA: San Francisco County (06075)} \code{CA: San Mateo County (06081)}}
    \item{\code{Sex}}{a factor with levels \code{Female} \code{Male} \code{Male and female}}
    \item{\code{19982008}}{a numeric vector}
    \item{\code{Site_Test_}}{a factor with levels \code{Hodgkin - Extranodal} \code{NHL - Extranodal} \code{NHL - Nodal}}
    \item{\code{AgeAdjusted_Rate}}{a numeric vector}
    \item{\code{Count}}{a numeric vector}
    \item{\code{Population}}{a numeric vector}
  }

  SEER2RTestData2: A data frame with 628 observations on the following 20 variables.
  \describe{
    \item{\code{Page_type}}{a numeric vector}
    \item{\code{Sites_LB}}{a numeric vector}
    \item{\code{Year_of_diagnosis_7507_individual}}{a numeric vector}
    \item{\code{Histologic_Type_ICDO3_LungSCNSCOth}}{a numeric vector}
    \item{\code{Sex}}{a numeric vector}
    \item{\code{Age_7584}}{a numeric vector}
    \item{\code{Interval}}{a numeric vector}
    \item{\code{Alive_at_Start}}{a numeric vector}
    \item{\code{Died}}{a numeric vector}
    \item{\code{Lost_to_Followup}}{a numeric vector}
    \item{\code{Observed_Survival_Interval}}{a numeric vector}
    \item{\code{Observed_Survival_Cum}}{a numeric vector}
    \item{\code{Expected_Survival_Interval}}{a numeric vector}
    \item{\code{Expected_Survival_Cum}}{a numeric vector}
    \item{\code{Relative_Survival_Interval}}{a numeric vector}
    \item{\code{Relative_Survival_Cum}}{a numeric vector}
    \item{\code{Observed_SE_Interval}}{a numeric vector}
    \item{\code{Observed_SE_Cum}}{a numeric vector}
    \item{\code{Relative_SE_Interval}}{a numeric vector}
    \item{\code{Relative_SE_Cum}}{a numeric vector}
  }
  
  SEER2RTestData3: A data frame with 628 observations on the following 20 variables.
  \describe{
    \item{\code{Page_type}}{a character vector}
    \item{\code{Sites_LB}}{a character vector}
    \item{\code{Year_of_diagnosis_7507_individual}}{a character vector}
    \item{\code{Histologic_Type_ICDO3_LungSCNSCOth}}{a character vector}
    \item{\code{Sex}}{a character vector}
    \item{\code{Age_7584}}{a character vector}
    \item{\code{Interval}}{a character vector}
    \item{\code{Alive_at_Start}}{a numeric vector}
    \item{\code{Died}}{a numeric vector}
    \item{\code{Lost_to_Followup}}{a numeric vector}
    \item{\code{Observed_Survival_Interval}}{a numeric vector}
    \item{\code{Observed_Survival_Cum}}{a numeric vector}
    \item{\code{Expected_Survival_Interval}}{a numeric vector}
    \item{\code{Expected_Survival_Cum}}{a numeric vector}
    \item{\code{Relative_Survival_Interval}}{a numeric vector}
    \item{\code{Relative_Survival_Cum}}{a numeric vector}
    \item{\code{Observed_SE_Interval}}{a numeric vector}
    \item{\code{Observed_SE_Cum}}{a numeric vector}
    \item{\code{Relative_SE_Interval}}{a numeric vector}
    \item{\code{Relative_SE_Cum}}{a numeric vector}
  }
}
\details{
These data are extracted from SEER*STAT, which is available for general public.
}
\source{
}
\references{
Jun Luo and Binbing Yu, 'SEER2R: An interface between SEER cancer registry data and R'
}
\examples{
data(SEER2RTestdata)
}
\keyword{datasets}
