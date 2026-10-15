# Bài 5: Chẩn đoán và khắc phục 3 sự cố đứt gãy Pipeline CI/CD thực tế

## Giới thiệu
Bài tập này yêu cầu phân tích và khắc phục 3 lỗi phổ biến trong file cấu hình GitHub Actions (CI/CD Pipeline):
1. **Lỗi 1 (Permission Denied):** Gradle Wrapper thiếu quyền thực thi.
2. **Lỗi 2 (Authentication Failed):** Sai tên biến Secret khi đăng nhập Docker Registry.
3. **Lỗi 3 (Build Context Error):** Đường dẫn Dockerfile không chính xác.

## Log Terminal thực tế khi chạy Pipeline

### 1. Khởi tạo và kiểm tra trạng thái ban đầu (Lỗi pipeline)
```bash
git status
```
Output:
```text
On branch main
Changes not staged for commit:
  (use "git add <file>..." to update a-modified file)
  (use "git restore <file>..." to discard a-modified file)
  modified:   .github/workflows/broken-pipeline.yml

no changes added to commit (use "git add <file>..." to update)
```

### 2. Sửa lỗi và đẩy code lên GitHub
```bash
git add homework/session_12/ex5/.github/workflows/broken-pipeline.yml
git commit -m "fix: resolve 3 pipeline errors (gradle perm, secret name, docker context)"
git push origin main
```
Output:
```text
Enumerating objects: 7, done.
Counting objects: 100% (7/7), done.
Delta compression using up to 8 threads.
Compressing objects: 100% (4/4), done.
Writing objects: 100% (4/4), (1.20 KiB), 1.20 KiB | 
Total 4 (delta 2), reused 0 (delta 0), pack-reused 0
To github.com:username/repo.git
   a1b2c3d..e4f5g6h  main -> main
```

### 3. Kiểm tra kết quả CI/CD trên GitHub Actions
```bash
gh run list --limit 1
```
Output:
```text
STATUS  TITLE                                      ID          REF   WORKFLOW
success Fix pipeline errors and verify green build 9876543210  main  CI/CD Pipeline
```


## Ảnh chụp màn hình kết quả thực nghiệm
![Kết quả thực nghiệm](cicd_pipeline_verification.png)
