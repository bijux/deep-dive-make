# mk/contract.mk — feature gates, version checks (Module 05 discipline)

# GNU Make ≥ 4.0 required (core contract for this course-book).
# MAKE_VERSION is provided by GNU Make. If missing, this Make is unsupported.
ifeq ($(origin MAKE_VERSION),undefined)
  $(error This repository requires GNU Make (MAKE_VERSION not defined).)
endif

GNU_GE_4_0 := $(filter 4.% 5.%,$(MAKE_VERSION))
ifeq ($(GNU_GE_4_0),)
  $(error GNU Make ≥ 4.0 required (found $(MAKE_VERSION)).)
endif

# Feature probes (used for optional demos; do not change core correctness).
HAVE_GROUPED_TARGETS := $(filter 4.3% 4.4% 5.%,$(MAKE_VERSION))
HAVE_WAIT            := $(filter 4.4% 5.%,$(MAKE_VERSION))
