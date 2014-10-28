###

  This is an experimental algorithm.

  It began as a fun "in a bubble" challenge to develop a
  weighted scoring algorithm for every sequence set of
  tokenized lists and/or tree graphs.

###

_ = require "lodash"
logger = require "./../logger"
log = logger.create "experimental"

experimental = (src, cmp) ->
  hit = max = 0

  src.forEach (s, si) ->
    max += 1
    cmp.forEach (c, ci) ->
      hit += 1 if s is c

  sim = hit / max * 100; sim = 100 if sim > 100

  sim

module.exports =
  compare: experimental
