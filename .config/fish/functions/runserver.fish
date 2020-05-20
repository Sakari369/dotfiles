function runserver
	cd $omg/server
	env OMG_ENV="DEV_LOCAL" nodemon ./app.js
end
