#!/bin/bash

printf "\n\n1/5. AUR Helper\n\n"
bash scripts/paru_install.sh

printf "\n\n2/5. Terminal Colors\n\n"
bash scripts/terminal_color.sh


printf "\n\n3/5. Graphics Support\n\n"
bash scripts/graphics_card.sh

printf "\n\n4/5. Extra Packages\n\n"
bash scripts/extra_packages.sh

printf "\n\n5/5. Paru Packages\n\n"
bash scripts/paru_packages.sh

