#'Variance-Covariance Matrix 
#'
#'Computes the variance-covariance matrix of the main parameters of a 
#'fitted censored-regression model object.
#'
#' @param object an object of class "censReg"---output from \code{censReg}.
#' @param \dots not used, further arguments passed to or from other methods.
#' @return A matrix of the estimated covariances between the parameter 
#'estimates for each main parameter of the model. The matrix has row and 
#'column names corresponding to the parameter names.
#' @seealso \code{\link{censReg}}
#' @keywords regression
#' @importFrom stats vcov
#' @export
#' @method vcov censReg
vcov.censReg <- function(object, ...) {
  ## Coding history:
  ##    2013Dec20 DLLorenz Initial Coding
  ##
  Names <- colnames(object$XLCAL)
  N <- object$NPAR
	mat <- object$CV[-(N+1), -(N+1)] # Drop the variance for MSE
  mat <- mat * object$PARAML[N+1]
  dimnames(mat) <- list(Names, Names)
  return(mat)
}
