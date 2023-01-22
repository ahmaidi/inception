
all:
	mkdir -p /home/ahmaidi/data/wordpress_data
	mkdir -p /home/ahmaidi/data/database
	docker-compose -f ./srcs/docker-compose.yml  up --build -d
down:
	docker-compose -f ./srcs/docker-compose.yml  down
clean:
	@docker-compose -f ./srcs/docker-compose.yml down
	@docker rmi -f `docker images -q`
	@docker volume rm `docker volume ls -q`
	@rm -rf /home/ahmaidi/data/wordpress_data
	@rm -rf /home/ahmaidi/data/database
fclean: clean

re : fclean all

.PHONY: all re fclean clean
