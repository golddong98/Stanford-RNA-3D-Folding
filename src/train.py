import pandas as pd

# 데이터 로드
train_labels_df = pd.read_csv("../data/raw/stanford-rna-3d-folding/train_labels.csv")
train_sequences_df = pd.read_csv("../data/raw/stanford-rna-3d-folding/train_sequences.csv")
validation_labels_df = pd.read_csv("../data/raw/stanford-rna-3d-folding/validation_labels.csv")
validation_sequences_df = pd.read_csv("../data/raw/stanford-rna-3d-folding/validation_sequences.csv")
test_sequences_df = pd.read_csv("../data/raw/stanford-rna-3d-folding/test_sequences.csv")

# 데이터 크기 확인
print(f"train_labels head(): {train_labels_df.head()}")
print(f"train_sequences head(): {train_sequences_df.head()}")
print(f"validation_labels head(): {validation_labels_df.head()}")
print(f"validation_sequences head(): {validation_sequences_df.head()}")
print(f"test_sequences head(): {test_sequences_df.head()}")

# print(train_labels_df.head())
# print(train_labels_df.head())
# print(train_labels_df.head())
# print(train_labels_df.head())
# print(train_labels_df.head())


# import seaborn as sns
# import matplotlib.pyplot as plt

# sns.histplot(train_labels_df["target"], bins=50, kde=True)
# plt.title("Target Variable Distribution")
# plt.show()


