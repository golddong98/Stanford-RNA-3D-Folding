# 클라우드 서버 환경 만들기

```
# 할당 받은 서버 확인
curl -O https://raw.githubusercontent.com/golddong98/Stanford-RNA-3D-Folding/main/infra-scripts/check_env.sh
chmod +x check_env.sh
./check_env.sh

```

# 🏆 Competition Project

## 시작하는법

1. kaggle api 설치

```
pip install kaggle
```

2. kaggle api key 다운로드

- kaggle 로그인 -> 우측상단 프로필 아이콘클릭 -> api -> create new api token 클릭 -> kaggle.json 파일 다운 -> C:\Users\YOUR_USERNAME\.kaggle\kaggle.json 에 저장(windows의 경우)

3. data/raw 에 kaggle competitions download -c stanford-rna-3d-folding

## 📂 프로젝트 구조

```plaintext
project-root/
│── 📂 data/               # 원본 데이터 및 전처리된 데이터 저장
│   │── raw/               # 원본 데이터 (직접 다운로드 하기 ) 명령어: kaggle competitions download -c stanford-rna-3d-folding

│   │── processed/         # 전처리된 데이터
│── 📂 notebooks/          # 실험 및 분석용 Jupyter 노트북
│── 📂 src/                # 주요 코드 (모델 학습, 평가, 예측)
│   │── data_loader.py     # 데이터 로딩 및 전처리 코드
│   │── train.py           # 모델 학습 코드
│   │── inference.py       # 모델 추론 코드
│   │── utils.py           # 공통 유틸 함수
│── 📂 models/             # 저장된 모델 파일
│── 📂 submissions/        # 제출 파일 저장
│── 📂 configs/            # 설정 파일 (ex: yaml, json 등)
│── 📂 logs/               # 로그 파일 (실험 기록 등)
│── 📂 reports/            # 분석 결과, 시각화 자료
│── .gitignore             # 불필요한 파일 무시 설정
│── README.md              # 프로젝트 설명 및 실행 방법
│── requirements.txt       # 필요한 패키지 목록
```
