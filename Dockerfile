FROM golang:1.20-alpine

WORKDIR /app

COPY . .

# Baixar as dependências do Go
RUN go mod tidy
# Compila a aplicação
RUN go build -o app .

EXPOSE 8080

CMD [ "./app" ]