#' @include op.R hlo.R
NULL

Tanh <- new_Op("Tanh", "tanh")

# binary ops
infer_types_tanh <- function(operand) {
  stopifnot(inherits(operand@type, TensorType))
  ValueTypes(list(operand))
}

hlo_tanh_impl <- hlo_fn(Tanh, infer_types_tanh)

#' @title Tangens hyperbolicus
#' @param operand ([`FuncVariable`])
#' @return [`FuncVariable`]
#' @export
hlo_tanh <- function(operand) {
  hlo_tanh_impl(values = list(operand = operand))
}
