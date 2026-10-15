# Báo cáo Khắc phục Sự cố (Troubleshooting Report)

## 1. Lỗi Permission Denied (Gradle Wrapper)
- **Triệu chứng:** `bash: ./gradlew: Permission denied`
- **Nguyên nhân:** File `gradlew` không có quyền thực thi `+x` trên môi trường Linux của GitHub Actions Runner.
- **Khắc phục:** Thêm bước chạy lệnh `chmod +x gradlew` trước khi chạy `./gradlew test`.

## 2. Lỗi Authentication Failed (Docker Login)
- **Triệu chứng:** `Error: Unauthorized: authentication required`
- **Nguyên nhân:** Sử dụng sai tên biến secret (`${{ secrets.REGISTRY_TOKEN }}` thay vì `${{ secrets.DOCKER_PASSWORD }}` hoặc tương tự theo cấu hình kho lưu trữ).
- **Khắc phục:** Đính chính lại tên biến secret thành `${{ secrets.DOCKER_PASSWORD }}`.

## 3. Lỗi Build Context Error (Docker Build)
- **Triệu chứng:** `failed to solve: open /var/lib/docker/tmp/...: file does not exist`
- **Nguyên nhân:** Thiếu hoặc cấu hình sai tham số `context` và đường dẫn file `Dockerfile` trong `docker/build-push-action@v5`.
- **Khắc phục:** Cấu hình đúng `context: .` và `file: ./Dockerfile`.


## Ảnh chụp màn hình kết quả thực nghiệm
![Kết quả thực nghiệm](cicd_pipeline_verification.png)
