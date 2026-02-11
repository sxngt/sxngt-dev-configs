# Yeirin Commit Command

예이린 프로젝트의 브랜치 전략에 맞게 커밋하고 푸쉬하는 명령어입니다.

## 브랜치 전략

| 디렉토리 | 커밋 브랜치 | 전이 브랜치 | CI/CD |
|----------|-------------|-------------|-------|
| `backend/*` | `develop` | `deploy/dev` | deploy/dev 푸쉬 시 트리거 |
| `frontend/*` | `main` | - | main 푸쉬 시 트리거 |

## 서비스 목록

### Backend (develop 브랜치)
- `yeirin` - NestJS 메인 백엔드
- `soul-e` - FastAPI AI 챗봇
- `yeirin-ai` - FastAPI 추천 서비스

### Frontend (main 브랜치)
- `yeirin-guardian` - 보호자/교사 앱
- `yeirin-admin` - 관리자 대시보드
- `yeirin-landing` - 랜딩 페이지
- `soul-e` - AI 챗봇 프론트엔드

## 커밋 컨벤션 (Conventional Commits + Gitmoji)

```
<emoji> <type>(<scope>): <subject>

<body>

<footer>
```

### 타입별 이모지

| Emoji | Type | 설명 |
|-------|------|------|
| ✨ | feat | 새로운 기능 |
| 🐛 | fix | 버그 수정 |
| ♻️ | refactor | 리팩토링 |
| 💄 | style | 코드 스타일 |
| 📝 | docs | 문서 수정 |
| ✅ | test | 테스트 추가/수정 |
| ⚡️ | perf | 성능 개선 |
| 🔧 | chore | 빌드, 설정 변경 |
| 🚀 | deploy | 배포 관련 |
| 🔥 | remove | 코드/파일 삭제 |
| 🚑 | hotfix | 긴급 수정 |

## 실행 절차

1. **현재 작업 위치 확인**
   - 현재 디렉토리에서 가장 가까운 `.git` 폴더를 찾아 서비스 루트 확인
   - 경로에서 `backend/` 또는 `frontend/` 포함 여부로 브랜치 결정

2. **브랜치 결정 로직**
   ```
   경로에 'backend/' 포함 → develop 브랜치
   경로에 'frontend/' 포함 → main 브랜치
   ```

3. **Git 작업 수행**
   - `git status`로 변경사항 확인
   - `git diff`로 변경 내용 분석
   - `git log --oneline -5`로 최근 커밋 스타일 확인
   - 대상 브랜치 확인 및 체크아웃 (필요시)
   - 변경사항 스테이징
   - 컨벤션에 맞는 커밋 메시지 작성
   - 원격 저장소로 푸쉬

4. **Backend 전이 작업** (backend/* 경로인 경우만)
   - `deploy/dev` 브랜치로 체크아웃
   - `develop` 브랜치를 `deploy/dev`로 머지
   - 머지 커밋 메시지: `🚀 deploy: develop 브랜치 변경사항 머지 (<요약>)`
   - `deploy/dev` 브랜치 푸쉬 → CI/CD 트리거

5. **커밋 메시지 규칙**
   - 한글로 작성
   - "왜" 변경했는지에 집중
   - HEREDOC 형식 사용:
   ```bash
   git commit -m "$(cat <<'EOF'
   ✨ feat(scope): 제목

   - 변경 내용 1
   - 변경 내용 2
   EOF
   )"
   ```

## 주의사항

- 각 서비스는 **독립 Git Repository**
- 커밋 전 lint/typecheck/test 통과 확인
- `.env` 파일이나 시크릿 포함 금지
- `--no-verify` 플래그 사용 금지
- 푸쉬 전 원격 브랜치와 동기화 확인

## 인자

- `$ARGUMENTS`: 추가 커밋 메시지 힌트 (선택사항)
