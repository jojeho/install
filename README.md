# install

mongodb install
여기서 할것  apt-get install monogdb 사용안함 

https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/



mongoDB에서 기본데이터디렉토리가 /var/lib/mongodb로 잡혀있기때문에 용량이 부족해질때가있다
먼저 데이터를 이전하는동안 쌓이지않도록 db를 중지시킨뒤 이전할디렉토리에 권한을 부여한다

root@mongodb:~# service mongodb stop

root@mongodb:~#  chown mongodb:mongodb /data/mongodb/

데이터를 복사하여 이전한다
root@mongodb:~#cp -arp /var/lib/mongodb/* /data/mongodb


몽고디비 설정파일 수정
root@mongodb:~# vim /etc/mongodb.conf 

dbpath=/data/mongodb              << db데이터폴더위치를 다음과같이 변경

root@mongodb:~# service mongodb start

