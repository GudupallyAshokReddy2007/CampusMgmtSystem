FROM openjdk:17-jdk-slim
WORKDIR /app
COPY target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","app.jar"]
docker --version	Check Docker
2	docker ps	Check containers
3	curl.exe -LO https://storage.googleapis.com/minikube/releases/latest/minikube-installer.exe	Download Minikube
4	.\minikube-installer.exe	Install Minikube
5	minikube version	Check Minikube
6	minikube kubectl -- version	Check kubectl
7	minikube start --driver=docker	Start cluster
8	minikube status	Check cluster
9	minikube kubectl -- get pods -A	List all Pods
10	minikube dashboard	Open dashboard
11	minikube kubectl -- create deployment mynginx --image=nginx	Create deployment
12	minikube kubectl -- set image deployment/mynginx nginx=nginx:latest	Update image
13	minikube kubectl -- get deployments	List deployments
14	minikube kubectl -- get pods	List Pods
15	minikube kubectl -- describe pods	Pod details
16	minikube kubectl -- expose deployment mynginx --type=NodePort --port=80 --target-port=80	Expose service
17	minikube kubectl -- scale deployment mynginx --replicas=4	Scale to 4 Pods
18	minikube kubectl -- get pods	Verify 4 Pods
19	minikube kubectl -- get services	List services
20	minikube kubectl -- port-forward svc/mynginx 8082:80	Access Nginx
21	minikube tunnel	Start tunnel
22	minikube service mynginx --url	Get service URL
23	minikube dashboard	Open dashboard
24	minikube kubectl -- delete deployment mynginx	Delete deployment
25	minikube kubectl -- delete service mynginx	Delete service
26	minikube stop	Stop cluster
27	minikube delete	Delete cluster
28	docker --version	Check Docker
29	docker ps	List containers
30	docker pull jasonrivers/nagios:latest	Download Nagios
31	docker images	List images
32	docker run -d --name nagiosdemo -p 8888:80 jasonrivers/nagios:latest	Run Nagios
33	docker ps	Check Nagios
34	docker logs nagiosdemo	View logs
35	docker logs -f nagiosdemo	Live logs
36	docker stop nagiosdemo	Stop Nagios
37	docker rm nagiosdemo	Remove container
38	docker images	Check images
39	docker rmi jasonrivers/nagios:latest	Remove image
40	minikube logs	Cluster logs
41	minikube update-check	Check updates
42	minikube update	Update Minikube
