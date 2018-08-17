
# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    bulk_test.sh                                       :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: zbatik <marvin@42.fr>                      +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/07/23 17:37:41 by zbatik            #+#    #+#              #
#    Updated: 2018/07/30 11:11:06 by zbatik           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

play_filler () {
	echo PLAYING\ AS\ P$1\ AGAINSTS\ $3\ ON\ MAP\ $4 >> result.log
	for count in {1..5}
	do
		./filler_vm -p$1 ./$5 -p$2 ./players/$3.filler -q -f ./maps/map0$4
		cat filler.trace | sed -n '2p' >> result.log
	done
}

rm result.log
touch result.log

players='champely abanlin hcao grati carli superjeannot'

for player in $players
do
	for	map in {0..2}
	do
		play_filler 1 2 $player $map $1
		play_filler 2 1 $player $map $1
	done
done
