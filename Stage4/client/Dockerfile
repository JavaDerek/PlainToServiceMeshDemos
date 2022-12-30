FROM google/dart as build

RUN mkdir /src

WORKDIR /src
RUN git clone https://github.com/JavaDerek/PlainToServiceMeshDemos.git
WORKDIR /src/PlainToServiceMeshDemos/Stage4/client

RUN dart pub get
ENTRYPOINT ["dart", "run", "lib/main.dart"]