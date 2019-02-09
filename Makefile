init:
	@git config --local user.name hkloudou
	@git config --local user.email hkloudou@gmail.com
	@git config --local user.signingkey 575A0CADC23D0A96
	@git config --local commit.gpgsign true
docker:
	@npm run build
	@docker build -t hkloudou/document.webfont.io .
run:
	docker run --rm -it -p 80:80 hkloudou/document.webfont.io:latest
g:
	docker run --rm -v ${GOPATH}/src/github.com/webfont-io/xx/:/local/ swaggerapi/swagger-codegen-cli:unstable generate -i http://zito-dyb-htmlcode.oss-cn-hangzhou.aliyuncs.com/t/openapi.json -l go -o /local/