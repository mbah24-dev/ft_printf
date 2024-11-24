# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    commit_files.sh                                    :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mbah <mbah@student.42.fr>                  +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/11/23 13:56:57 by mbah              #+#    #+#              #
#    Updated: 2024/11/23 13:57:09 by mbah             ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

# Boucle sur tous les fichiers .c dans le répertoire courant
for file in *.c; do
    # Vérifier si un fichier .c existe dans le répertoire
    if [ -e "$file" ]; then
        # Extraire le nom sans l'extension
        base_name=$(basename "$file" .c)

        # Ajouter le fichier à l'index
        git add "$file"

        # Faire un commit avec un message descriptif
        git commit -m "Implémentation de $base_name"
    else
        echo "Aucun fichier .c trouvé dans le répertoire."
        break
    fi
done
