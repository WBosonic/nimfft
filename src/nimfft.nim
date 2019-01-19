{.compile: "private/pocketfft/pocketfft.c" .}

type
  cfft_plan_i* = object
  cfft_plan* = ptr cfft_plan_i

type
  rfft_plan_i* = object
  rfft_plan* = ptr rfft_plan_i
  

proc make_cfft_plan*(length: csize): cfft_plan {.importc.}
proc destroy_cfft_plan*(plan: cfft_plan) {.importc.}
proc cfft_backward*(plan: cfft_plan; c: ptr cdouble; fct: cdouble): cint {.importc.}
proc cfft_forward*(plan: cfft_plan; c: ptr cdouble; fct: cdouble): cint {.importc.}
proc cfft_length*(plan: cfft_plan): csize {.importc.}

proc make_rfft_plan*(length: csize): rfft_plan {.importc.}
proc destroy_rfft_plan*(plan: rfft_plan) {.importc.}
proc rfft_backward*(plan: rfft_plan; c: ptr cdouble; fct: cdouble): cint {.importc.}
proc rfft_forward*(plan: rfft_plan; c: ptr cdouble; fct: cdouble): cint {.importc.}
proc rfft_length*(plan: rfft_plan): csize {.importc.}