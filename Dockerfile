# 1. 가볍고 널리 쓰이는 Nginx 웹 서버 Alpine 버전을 베이스 이미지로 사용
FROM nginx:alpine

# 2. 메타데이터 기록 (작성자, 설명 등 - 선택사항)
LABEL org.opencontainers.image.title="custom-nginx-server"
LABEL org.opencontainers.image.description="미션 제출용 커스텀 Nginx 이미지"

# 3. 환경 변수 주입 (컨테이너 내에서 확인 가능)
ENV APP_ENV=development

# 4. 호스트 PC의 index.html 파일을 컨테이너 내부의 Nginx 서빙 폴더로 복사
# 주의: 이 Dockerfile이 있는 폴더에 미리 index.html 파일을 만들어두어야 빌드가 성공합니다.
COPY index.html /usr/share/nginx/html/index.html
