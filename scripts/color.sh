#!/bin/bash

green='\033[32m'

red='\033[31m'

yellow='\033[33m'

blue='\033[34m'

cyan='\033[36m'

# stops color ${red}this will be red. ${cstop} This will be default log color
cstop='\033[0m'

# String literals for examples
doc_red=\$"{red}"
doc_blue=\$"{blue}"
doc_cstop=\$"{cstop}"
doc_echo='echo -e "'
doc_echo_end='"'

function print_color_usage() {
  echo -e "
    *************************************
     color ${green}color ${red}color ${yellow}color ${blue}color ${cyan}color ${cstop}
    *************************************

      Usage:

        green   sets ${green}green text ${cstop}
        red     sets ${red}red text ${cstop}
        yellow  sets ${yellow}yellow ${cstop}
        blue    sets ${blue}blue ${cstop}
        cyan    sets ${cyan}cyan ${cstop}

        cstop   sets ${blue}the point you want a color${cstop} to stop

      Examples:

          ${doc_echo}default color ${doc_red}${red}change to red ${cstop}${doc_cstop} back to default color${doc_echo_end}

          ${doc_echo}${doc_red}${red}start with red ${cstop} ${doc_blue}${blue}change to blue ${cstop}${doc_cstop} back to default color${doc_echo_end}

  "
}