\docType{class}
\name{LinearOutputSig-class}
\alias{LinearOutputSig-class}
\alias{getR2,LinearOutputSig-method}
\alias{getSig,LinearOutputSig-method}
\alias{getcoef,RegRunSig-method}
\alias{initialize,LinearOutputSig-method}
\title{Subclass of regression output object and coefficients of sorted significance}
\description{
Objects of class \code{LinearOutputSig} are created by the
\code{RegRunSig} function
}
\details{
An object of the class LinearOutputSig' has the following
slots: \itemize{ \item \code{coef} A matrix of coefficient
estimates generated by the regressions of all possible
variable combinations \item \code{R2} A vector of R-squared
values generated by the regressions of all possible
variable combinations \item \code{Sig} A vector of
character elements representing the sorted significance of
coefficient estimates }
}
\author{
Dino Hadzic \email{dino.hadzic@wustl.edu}
}

