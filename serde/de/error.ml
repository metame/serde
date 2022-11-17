type 'err de_error =
  [> `Message of string
  | `Unimplemented of string
  | `Invalid_variant_index of int
  | `Unknown_variant of string
  | `Duplicate_field of string
  | `Missing_field of string ]
  as
  'err

let unimplemented str = Error (`Unimplemented str)
let invalid_variant_index ~idx = Error (`Invalid_variant_index idx)
let unknown_variant str = Error (`Unknown_variant str)
let message str = Error (`Message str)