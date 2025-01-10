# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ydumaine <ydumaine@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2025/01/10 09:49:18 by ydumaine          #+#    #+#              #
#    Updated: 2025/01/10 09:50:09 by ydumaine         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #



all : 
	@make -C ./asm
	@make -C ./C

clean :
	@make clean -C ./asm
	@make clean -C ./C

fclean :
	@make fclean -C ./asm
	@make fclean -C ./C

re : fclean all

.PHONY : all clean fclean re