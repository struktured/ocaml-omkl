module type S =
sig
  val gamma : float -> float
end

module Gsl_gamma : S =
struct
 let gamma = Gsl.Sf.gamma
end

include Gsl_gamma
