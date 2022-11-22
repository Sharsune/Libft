# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sharsune <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/10/24 17:08:44 by sharsune          #+#    #+#              #
#    Updated: 2022/11/18 17:49:58 by sharsune         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a

SRC = ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_strlen.c\
	  ft_toupper.c ft_tolower.c ft_memset.c ft_strchr.c ft_strrchr.c ft_bzero.c\
	  ft_memchr.c ft_memcpy.c ft_strncmp.c ft_memcmp.c ft_strnstr.c ft_strlcpy.c\
	  ft_strlcat.c ft_strdup.c ft_atoi.c ft_substr.c ft_strjoin.c ft_strtrim.c\
	  ft_split.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_strmapi.c\
	  ft_striteri.c ft_putnbr_fd.c ft_calloc.c ft_memmove.c ft_itoa.c

OSRC = ${SRC:.c=.o}

WFLAGS = -Wall -Wextra -Werror

all: $(NAME)

$(NAME):
	cc -c $(WFLAGS) $(SRC)
	ar rcs $(NAME) $(OSRC)

clean:
	rm -f $(OSRC)

fclean: clean
	rm -f $(NAME)

re : fclean all

test : 
	gcc -Wall -Wextra -Werror testmain.c libft.a

.PHONY : all clean fclean re test
