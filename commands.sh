kubectl exec -n cftest netshoot-559f6b665-5hq2j -- curl -4 "http://eureka-server-client-svc.cftest.svc:8080/call?service=eureka-service-client"
kubectl exec -n cftest netshoot-559f6b665-5hq2j -- curl -4 "http://eureka-server-client-svc.cftest.svc:8080/call?service=eureka-service-feign-client"
kubectl exec -it eureka-server-client-svc-6f88c89d9f-bwjhr -n cftest -- curl -4 echo-web.cftest:80


kubectl exec -n cftest netshoot-559f6b665-5hq2j -- curl -4 "http://eureka-server-client.cftest:8080/call?service=eureka-server-client-svc"
kubectl exec -n cftest netshoot-559f6b665-5hq2j -- curl -4 "http://eureka-server-client.cftest:8080/call?service=eureka-service-feign-client"
kubectl exec -it eureka-server-client-5bcf9b8555-hxtx2 -n cftest -- curl -4 echo-web.cftest:80

kubectl exec -n cftest netshoot-559f6b665-5hq2j -- curl -4 "http://eureka-server-feign-client.cftest:8080/call?service=eureka-server-client-svc"
kubectl exec -n cftest netshoot-559f6b665-5hq2j -- curl -4 "http://eureka-server-feign-client.cftest:8080/call?service=eureka-server-client"
kubectl exec -it eureka-server-feign-client-555d99bddc-4gfjt -n cftest -- curl -4 echo-web.cftest:80
