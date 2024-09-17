**Attribution:**
```
This lab is based on the excellent work of the Kaggle user Abhinand and uses data from the Kaggle competition Aerial Cactus Identification.
```

Worked Example: [Original Notebook by Abhinand](https://www.kaggle.com/code/abhinand05/in-depth-guide-to-convolutional-neural-networks)

Kaggle competition: [Aerial Cactus Identification](https://www.kaggle.com/competitions/aerial-cactus-identification)

### Lab Sheet: Building a CNN Model in PyTorch

Welcome to this lab where you will build a Convolutional Neural Network (CNN) to classify images using PyTorch. We will use the Aerial Cactus Dataset from a Kaggle competition. Follow the steps below to complete the lab.

---

### Lab Objectives:
By the end of this lab, you will:
1. Understand how to preprocess image data for CNNs.
2. Define and train a CNN model in PyTorch.
3. Evaluate the performance of the CNN model on validation data.
4. Make predictions on a test dataset.

### Steps:

#### 1. Set Up the Environment
Install necessary libraries: PyTorch, torchvision, OpenCV, etc.

```bash
!pip install torch torchvision opencv-python
```

#### 2. Import Libraries
```python
import numpy as np
import pandas as pd
import os
import matplotlib.pyplot as plt
import cv2
import torchvision.transforms as transforms
from torch.utils.data.sampler import SubsetRandomSampler
import torch
import torch.nn as nn
import torch.nn.functional as F
from torch.utils.data import Dataset, DataLoader
import torch.optim as optim
```

#### 3. Load and Explore the Dataset
```python
train_df = pd.read_csv("path/to/train.csv")
print(f"Train Size: {len(os.listdir('path/to/train/train'))}")
print(f"Test Size: {len(os.listdir('path/to/test/test'))}")
```

#### 4. Define Custom Dataset Class
```python
class CreateDataset(Dataset):
    def __init__(self, df_data, data_dir = './', transform=None):
        super().__init__()
        self.df = df_data.values
        self.data_dir = data_dir
        self.transform = transform

    def __len__(self):
        return len(self.df)
    
    def __getitem__(self, index):
        img_name, label = self.df[index]
        img_path = os.path.join(self.data_dir, img_name)
        image = cv2.imread(img_path)
        if self.transform is not None:
            image = self.transform(image)
        return image, label
```

**Data Paths**
```python
train_path = 'path/to/train/train'
test_path = 'path/to/test/test'
```

#### 5. Define Data Augmentations and Create Dataset
```python
transforms_train = transforms.Compose([
    transforms.ToPILImage(),
    transforms.RandomHorizontalFlip(),
    transforms.RandomRotation(10),
    transforms.ToTensor(),
    transforms.Normalize((0.5, 0.5, 0.5), (0.5, 0.5, 0.5))
])

transforms_test = transforms.Compose([
    transforms.ToPILImage(),
    transforms.ToTensor(),
    transforms.Normalize((0.5, 0.5, 0.5), (0.5, 0.5, 0.5))
])

train_data = CreateDataset(df_data=train_df, data_dir=train_path, transform=transforms_train)
test_data = CreateDataset(df_data=pd.read_csv("path/to/sample_submission.csv"), data_dir=test_path, transform=transforms_test)
```

#### 6. Prepare Data Loaders
```python
batch_size = 64
valid_size = 0.2

num_train = len(train_data)
indices = list(range(num_train))
np.random.shuffle(indices)
split = int(np.floor(valid_size * num_train))
train_idx, valid_idx = indices[split:], indices[:split]

train_sampler = SubsetRandomSampler(train_idx)
valid_sampler = SubsetRandomSampler(valid_idx)

train_loader = DataLoader(train_data, batch_size=batch_size, sampler=train_sampler)
valid_loader = DataLoader(train_data, batch_size=batch_size, sampler=valid_sampler)
test_loader = DataLoader(test_data, batch_size=batch_size, shuffle=False)
```

#### 7. Visualize Sample Images
```python
classes = ['No Cactus','Cactus']

def imshow(img):
    img = img / 2 + 0.5
    plt.imshow(np.transpose(img, (1, 2, 0)))

dataiter = iter(train_loader)
images, labels = dataiter.next()
images = images.numpy()

fig = plt.figure(figsize=(25, 4))
for idx in np.arange(20):
    ax = fig.add_subplot(2, 20//2, idx+1, xticks=[], yticks=[])
    imshow(images[idx])
    ax.set_title(classes[labels[idx]])
```

#### 8. Define CNN Model Architecture
```python
class CNN(nn.Module):
    def __init__(self):
        super(CNN, self).__init__()
        self.conv1 = nn.Conv2d(in_channels=3, out_channels=16, kernel_size=3, padding=1)
        self.conv2 = nn.Conv2d(16, 32, 3, padding=1)
        self.conv3 = nn.Conv2d(32, 64, 3, padding=1)
        self.conv4 = nn.Conv2d(64, 128, 3, padding=1)
        self.pool = nn.MaxPool2d(2, 2)
        self.fc1 = nn.Linear(128*2*2, 512)
        self.fc2 = nn.Linear(512, 2)
        self.dropout = nn.Dropout(0.2)
        
    def forward(self, x):
        x = self.pool(F.relu(self.conv1(x)))
        x = self.pool(F.relu(self.conv2(x)))
        x = self.pool(F.relu(self.conv3(x)))
        x = self.pool(F.relu(self.conv4(x)))
        x = x.view(-1, 128 * 2 * 2)
        x = self.dropout(x)
        x = F.relu(self.fc1(x))
        x = self.dropout(x)
        x = self.fc2(x)
        return x

device = torch.cuda.is_available()
model = CNN().cuda() if device else CNN()
```

#### 9. Set Up Training and Validation Loop
```python
criterion = nn.CrossEntropyLoss()
optimizer = optim.Adamax(model.parameters(), lr=0.001)

n_epochs = 30

valid_loss_min = np.Inf 

train_losses = []
valid_losses = []

for epoch in range(1, n_epochs+1):

    train_loss = 0.0
    valid_loss = 0.0
    
    model.train()
    for data, target in train_loader:
        if device:
            data, target = data.cuda(), target.cuda()
        optimizer.zero_grad()
        output = model(data)
        loss = criterion(output, target)
        loss.backward()
        optimizer.step()
        train_loss += loss.item()*data.size(0)
        
    model.eval()
    for data, target in valid_loader:
        if device:
            data, target = data.cuda(), target.cuda()
        output = model(data)
        loss = criterion(output, target)
        valid_loss += loss.item()*data.size(0)
    
    train_loss = train_loss/len(train_loader.sampler)
    valid_loss = valid_loss/len(valid_loader.sampler)
    train_losses.append(train_loss)
    valid_losses.append(valid_loss)
        
    print('Epoch: {} \tTraining Loss: {:.6f} \tValidation Loss: {:.6f}'.format(
        epoch, train_loss, valid_loss))
    
    if valid_loss <= valid_loss_min:
        print('Validation loss decreased ({:.6f} --> {:.6f}).  Saving model ...'.format(
        valid_loss_min, valid_loss))
        torch.save(model.state_dict(), 'best_model.pt')
        valid_loss_min = valid_loss
```

#### 10. Evaluate Performance with a Graph
```python
plt.plot(train_losses, label='Training loss')
plt.plot(valid_losses, label='Validation loss')
plt.xlabel("Epochs")
plt.ylabel("Loss")
plt.legend(frameon=False)
```

#### 11. Load Best Model Parameters
```python
model.load_state_dict(torch.load('best_model.pt'))
```

#### 12. Make Predictions on Test Set
```python
model.eval()

preds = []
for data, target in test_loader:
    if device:
        data, target = data.cuda(), target.cuda()
    output = model(data)
    pr = output[:,1].detach().cpu().numpy()
    preds.extend(pr)

sample_sub = pd.read_csv("path/to/sample_submission.csv")
sample_sub['has_cactus'] = preds
sample_sub.to_csv('submission.csv', index=False)
```

### Deliverables:
- A complete Jupyter notebook with all code implementations and visualizations.
- Short write-up summarizing findings, challenges, and learnings at the end of your notebook.
