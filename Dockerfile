FROM python:3.8.3-slim
RUN yum update && \
    yum -y install git && \
    git clone https://github.com/Tahjib75/python-test-app.git && \
    pip install flask
EXPOSE 5000
WORKDIR /DockerTutorial
ENTRYPOINT ["python"]
CMD ["app.py"]
