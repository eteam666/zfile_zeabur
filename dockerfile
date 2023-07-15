FROM cloudreve/cloudreve:latest





EXPOSE 5212

ENTRYPOINT ["./cloudreve","-c","conf.ini"]
