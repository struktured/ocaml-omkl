
(* Interface for bessel functions *)
module type S =
sig
  (** Modified bessel function of the second kind *)
  val bessel_k : nu:float -> float -> float
end

module Gsl_bessel : S =
struct
 let bessel_k ~nu = Gsl.Sf.bessel_Knu nu
end

(** Uses ocaml-gsl as backend for now *)
include Gsl_bessel
