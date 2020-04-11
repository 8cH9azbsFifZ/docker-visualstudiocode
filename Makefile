build:
	docker build . -t visualstudiocode
	docker build . -t asdlfkj31h/visualstudiocode:0.1

push:
	docker push asdlfkj31h/visualstudiocode:0.1
