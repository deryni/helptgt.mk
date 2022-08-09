-include silent_rules.mk

DEVTGTS :=
OTHERTGTS :=
BUILDTGTS :=

define define_target
    $1$(eval \
    .PHONY: $1
    $(or $(3),DEV)TGTS += "$1$(and $2,: -) $2"
    )
endef

$(call define_target,help,Print this help for available make targets,OTHER):
	$(SR_V_AT)printf 'Development targets:\n'
	$(SR_V_AT)printf '    %s\n' $(DEVTGTS) | column -t -s :
	$(SR_V_AT)echo
	$(SR_V_AT)printf 'Build targets:\n'
	$(SR_V_AT)printf '    %s\n' $(BUILDTGTS) | column -t -s :
	$(SR_V_AT)echo
	$(SR_V_AT)printf 'Other targets:\n'
	$(SR_V_AT)printf '    %s\n' $(OTHERTGTS) | column -t -s :

# MIT License
#
# Copyright (c) 2016 Etan Reisner
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
