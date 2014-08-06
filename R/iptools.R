#
# non-vectorized version of validateIP
#
.validateIP <- function(ip) {

  res <- regexpr('^(((2(5[0-5]|[0-4][0-9])|[01]?[0-9][0-9]?)\\.){3}(2(5[0-5]|[0-4][0-9])|[01]?[0-9][0-9]?))$', ip)
  return(min(res) > 0)

}

#' @title Validate IPv4 addresses in dotted-decimal notation
#' @description Input addresses are considered valid if they consist of 1-4 octets separated by periods
#' @param ip vector of IPv4 address (character - dotted-decimal)
#' @return named logical vector
#' @export
#' @examples
#' validateIP("127.0.0.1")
#' validateIP("127.0")
#' validateIP(c("127.0.0.1", "255.255.255.255", "500.1.1.1", "30.2.2"))
#'
validateIP <- Vectorize(.validateIP)

#
# non-vectorized version of validateCIDR
#
.validateCIDR <- function(cidr) {

  res <- regexpr('^(((2(5[0-5]|[0-4][0-9])|[01]?[0-9][0-9]?)\\.){3}(2(5[0-5]|[0-4][0-9])|[01]?[0-9][0-9]?)(/(3[012]|[12]?[0-9])))$', cidr, perl=TRUE)
  return(min(res) > 0)

}

#' @title Validate IPv4 CIDRs in dotted-decimal slash notation
#' @description Input CIDRs are considered valid if they consist of a valid IPv4 address in dotted-quad format followed by a forward slash (/) and a bit mask length (1-32)
#' @param cidr vector of IPv4 CIDRs (character - dotted-decimal slash notation)
#' @return named logical vector
#' @export
#' @examples
#' validateIP("127.0.0.1/32")
#' validateIP("127.0/8")
#' validateIP(c("127.0.0.256/32", "127.0.0.0", "127.0.0.1/33", "127.0.0.1/32"))
#'
validateCIDR <- Vectorize(.validateCIDR)

#
# non-vectorized version of validateIP
#
.validateIP <- function(ip) {

  res <- regexpr('^(((2(5[0-5]|[0-4][0-9])|[01]?[0-9][0-9]?)\\.){3}(2(5[0-5]|[0-4][0-9])|[01]?[0-9][0-9]?))$', ip)
  return(min(res) > 0)

}
