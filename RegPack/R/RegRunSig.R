#' Runs regressions on all possible combinations of covariates
#' 
#' Generates the coefficients and R-squared values on all possible combinations of covariates
#' 
#' @param M A matrix of cases for the covariates
#' @param Y A numeric vector that whose length is equal to the number of rows as \code{M}
#' 
#' @return An object of class LinearOuputSig
#'  \item{coef}{A matrix of coefficient estimates generated by the regressions of all possible variable combinations}
#'  \item{R2}{A vector of R-squared values generated by the regressions of all possible variable combinations}
#'  \item{Sig}{A coefficients character vector sorted by significance/importance in decreasing order, p-value}
#'  @author Dino Hadzic \email{dino.hadzic@@wustl.edu}
#'  @examples
#'  
#'  exM <- matrix(rnorm(30), ncol=3)
#'  exY <- c(rnorm(10))
#'  RegRunSig(exM, exY)
#'  @seealso \code{\link{RegRun}}
#'  @rdname RegRunSig
#'  @aliases RegRunSig,ANY-method
#'  @export
setGeneric(name="RegRunSig",
           def=function(M, Y, ...)
           {standardGeneric("RegRunSig")}
)

#' @export
setMethod(f="RegRunSig",
          definition=function(M, Y, ...){
            lm2 <- lm(Y ~ M)
            pvals <- summary(lm2)[["coefficients"]][,4]
            sortpvals <- sort(pvals, decreasing=TRUE)
            coeffsig <- names(sortpvals)
            outputSig <- paste("Coeff",substr(names(sortpvals),start=2,stop=2),sep="")
            outputSig <- gsub("I", "0", outputSig)
            return(new("LinearOutputSig", coef=RegRun(M,Y)@coef, R2=RegRun(M,Y)@R2, Sig=outputSig))
          }
)
