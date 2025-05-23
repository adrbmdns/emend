% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/address.R
\name{emend_clean_address}
\alias{emend_clean_address}
\title{Standardise address format}
\usage{
emend_clean_address(address_vector, chat = get_default_chat())
}
\arguments{
\item{address_vector}{A character vector that is assumed to be addresses.}

\item{chat}{A chat object defined by ellmer.}
}
\value{
A character vector with converted addresses.
}
\description{
This function standardise inconsistent address formats to a standard format.
}
\examples{
\donttest{
# Convert a vector of inconsistent formatted address to a standard format
options(ellmer_timeout_s = 3600) 
x <- c("154 university avenue, acton act 2601",
       "76/2 Cape Street, Dickson ACT 2602",
       "Shop 4/96 Bunda St, Canberra ACT 2601",
       "11 E Row, Canberra ACT 2601",
       "173/46 Macquarie St, Barton ACT 2600",
       "Unit 189/260 City walk, Canberra ACT 2601",
       "the kebab place",
       "i don't know the address")
chat <- ellmer::chat_ollama(model = "llama3.1:8b", seed = 0, echo = "none")
emend_clean_address(x, chat = chat)
} 

}
