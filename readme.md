# React Docker

## Base image
- node:6.9.5-alpine

### Docker Compose
- Nginx
- React

### Process controller
- [Supervisor](http://supervisord.org/)

## React Build
- Place your all project files in src directory and run
- ``` docker-compose exec nginx-react [npm or yarn] install [--no-bin-links if use npm]```
- All builded files must place in www

## Run
- ``` docker-compose up -d```

## Stop
- ``` docker-compose down```

use Supervisor to control process

## use npm or yarn in container
- ```docker-compose exec nginx-react [npm, yarn] [command] [package] [--no-bin-links if use npm]```

