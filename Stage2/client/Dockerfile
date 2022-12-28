FROM google/dart as build

RUN mkdir /src

WORKDIR /src
RUN git clone https://github.com/JavaDerek/PlainToServiceMeshDemos.git
COPY replacement.txt /src/PlainToServiceMeshDemos/Stage1/client/lib/main.dart
WORKDIR /src/PlainToServiceMeshDemos/Stage1/client

RUN dart pub get
#RUN dart compile exe lib/main.dart -o /main


# Build minimal  image from AOT-compiled `/main`
#FROM build
#COPY --from=build /main /main
#WORKDIR /
#RUN /main install

# Run a base line and schedule scans.
ENTRYPOINT ["dart", "run", "lib/main.dart"]

# remove the ENTRYPOINT and uncomment this line to enable interactive debugging.
# CMD ["bash"]