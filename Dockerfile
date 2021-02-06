FROM erlang:alpine

MAINTAINER Cristian Alvarez 

ADD holadrnick.erl /


RUN ["erlc","holadrnick.erl" ]

CMD ["sh","-c","erl -noshell -s holadrnick start -s init stop"]
