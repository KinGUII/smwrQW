#'Estimate Statistics
#'
#'Support function for computing statistics for left-censored data using the 
#'"fill-in" probability plotting procedure method (Helsel and Cohn, 1988), 
#'now known as regression on order statistics.
#'
#' @param x the data to estimate, Missing values permitted and ignored.
#'Must be an object of class "lcens," a numeric vector, or the output from censpp.
#' @param method the method to use, either "ROS" or "log ROS."
#' @param alpha the offset for plotting postion.
#' @return A list containing the mean and standard deviation, filled in
#'values for the censored values, and the censored levels. If \code{method}
#'is "log ROS," then the list also contains the mean and standard deviation of the 
#'natural log-transformed values computed by regression on order statistics.
#' @references Helsel, D.R. and Cohn, T.A., 1988, Estimation of descriptive statistics 
#'for multiply censored water quality data: Water Resources Research v. 24, n.
#'12, pp.1997-2004
#' @keywords misc
#' @export
mdlROS <- function(x, method="ROS", alpha=0.4) {
  ## Coding history:
  ##    2012Mar09 DLLorenz original coding
  ##    2013Jan05 DLLorenz Roxygenized
  ##    2013Jan05          This version
  ##
  method <- match.arg(method, c("ROS", "log ROS"))
  if(class(x) == "list")
    step1 <- x
  else
    step1 <- censpp(x, a=alpha)
  if(method == "ROS") {
    step2 <- with(step1, lm(x ~ qnorm(pp)))
    step3 <- predict(step2, newdata=data.frame(pp=step1$ppcen))
    step4 <- as.vector(c(step3, step1$x))
    coefs <- as.vector(coef(step2))
    retval <- list(mean=coefs[1], sd=coefs[2], fitted=step4)
  }
  else {
    step2 <- with(step1, lm(log(x) ~ qnorm(pp)))
    step3 <- predict(step2, newdata=data.frame(pp=step1$ppcen))
    step4 <- as.vector(c(exp(step3), step1$x))
    coefs <- as.vector(coef(step2))
    retval <- list(meanlog=coefs[1], sdlog=coefs[2], fitted=step4)
  }
  if(length(step1$xcen) > 0)
    retval$censorlevels <- step1$xcen
  else
    retval$censorlevels  <- -Inf
  return(retval)
}
