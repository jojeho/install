# install

mongodb change dbpath

/var/lib/mongodb 에서 파일 복사 

/etc/mongodb.conf 설정파일에서
dbpath 변경

권한 설정
chown -R mongodb:mongodb /변경된 dbpath

mongod --dbpath /변경된 dbpath &

생성되면 죽인다.


커넥션 테스트
mongo 
