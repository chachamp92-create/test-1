# Smart Police - ระบบประกาศปิดปรับปรุง

ระบบแสดงหน้าเว็บประกาศปิดปรับปรุงสำหรับ Smart Police System พร้อมรูปภาพประกาศ

## ไฟล์ที่รวมอยู่

- `index.html` - หน้าเว็บประกาศปิดระบบ (ภาษาไทย)
- `ann.png` - รูปภาพประกาศ
- `nginx.conf` - การตั้งค่า nginx
- `Dockerfile` - ไฟล์สำหรับสร้าง Docker image
- `docker-compose.yml` - ไฟล์สำหรับรันด้วย Docker Compose

## วิธีการใช้งาน

### 1. รันด้วย Docker Compose

```bash
# รันระบบ
docker-compose up -d

# ดูสถานะ
docker-compose ps

# หยุดระบบ
docker-compose down
```

### 2. เข้าถึงเว็บไซต์

เปิดเบราว์เซอร์ไปที่: http://localhost:8041

### 3. การอัปเดตเนื้อหา

หากต้องการเปลี่ยนเนื้อหาหรือรูปภาพ:

1. แก้ไขไฟล์ `index.html` หรือ `ann.png`
2. รีสตาร์ทคอนเทนเนอร์:
   ```bash
   docker-compose restart
   ```

## คุณสมบัติ

- ✅ หน้าเว็บตอบสนอง (Responsive Design)
- ✅ ออกแบบสวยงามด้วย CSS
- ✅ รองรับภาษาไทย
- ✅ แสดงรูปภาพประกาศ
- ✅ ใช้ nginx สำหรับประสิทธิภาพสูง
- ✅ มี Health Check
- ✅ Security Headers
- ✅ Gzip Compression
- ✅ Cache Optimization

## การปรับแต่ง

### เปลี่ยนพอร์ต

แก้ไขใน `docker-compose.yml`:
```yaml
ports:
  - "8041:80"  # เปลี่ยนจาก 80 เป็น 8041
```

### เปลี่ยนโดเมน

แก้ไขใน `docker-compose.yml`:
```yaml
labels:
  - "traefik.http.routers.smart-police-ann.rule=Host(`yourdomain.com`)"
```

## การแก้ไขปัญหา

### ตรวจสอบล็อก
```bash
docker-compose logs -f
```

### เข้าไปในคอนเทนเนอร์
```bash
docker-compose exec smart-police-ann sh
```

### ตรวจสอบสถานะ Health Check
```bash
curl http://localhost:8041/health
```
