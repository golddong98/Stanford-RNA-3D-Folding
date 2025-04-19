import pandas as pd

# 데이터 로드
train_labels_df = pd.read_csv("data/raw/stanford-rna-3d-folding/train_labels.csv")
train_sequences_df = pd.read_csv("data/raw/stanford-rna-3d-folding/train_sequences.csv")
validation_labels_df = pd.read_csv("data/raw/stanford-rna-3d-folding/validation_labels.csv")
validation_sequences_df = pd.read_csv("data/raw/stanford-rna-3d-folding/validation_sequences.csv")
test_sequences_df = pd.read_csv("data/raw/stanford-rna-3d-folding/test_sequences.csv")

# 데이터 크기 확인
print(f"train_labels shape: {train_labels_df.shape}")
print(f"train_sequences shape: {train_sequences_df.shape}")
print(f"validation_labels shape: {validation_labels_df.shape}")
print(f"validation_sequences shape: {validation_sequences_df.shape}")
print(f"test_sequences shape: {test_sequences_df.shape}")