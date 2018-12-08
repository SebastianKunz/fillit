# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: skunz <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/11/28 22:31:10 by skunz             #+#    #+#              #
#    Updated: 2018/11/30 13:40:23 by skunz            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = fillit
SRC = main.c algo.c print.c map.c tetri.c
OBJ = $(SRC:.c=.o)
FLAGS = -Wall -Wextra -Werror

HEADER = -I libft/
LIB = -L libft/ -lft

all: $(NAME)

$(NAME): lib
	gcc $(FLAGS)  $(HEADER) -c $(SRC)
	gcc $(OBJ) $(HEADER) $(LIB) -o $(NAME)

lib:
	make -C libft/ all

libfclean:
	make -C libft/ fclean

libclean:
	make -C libft/ clean

clean: libclean
	/bin/rm -f $(OBJ)

fclean: clean libfclean
	/bin/rm -f $(NAME)

re: fclean all
