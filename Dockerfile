FROM python:3.8
#python:3.8이 실행 될수있는 환경이 세팅 되어있는 이미지를
#사용해서 도커 image를 만들겠다.

ADD requirements.txt .
#호스트 머신에 있는 파일을 docker image에 넣겠다.

RUN pip install -r requirements.txt
#docker 내부의 shell 에서 위의 커맨드를 사용 하여 환경을 만들겠다.

ADD templates ./templates/

ADD app.py .#현재 경로

CMD ["python", "app.py"]
#어떠한 명령어가 기본으로 실행 될 것인지 정의하는 CMD 문법
