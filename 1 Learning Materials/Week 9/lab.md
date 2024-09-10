# Lab Sheet: Deep Learning Foundations - Building a simple MNIST Neural Network

_Disclaimer: This labsheet contains generated content which has been lecturer-reviewed. It may contain errors or misguiding code—part of the exercise will be to identify and correct for these issues_



```
This lab contains example code in Tensorflow and Pytorch for comparison purposes only

Students are recommended to use Pytorch as it requires users to understand more about what is happening 'underneath the hood' so to speak.
```

---

Today we will be working on solving the MNIST Challenge using a simple Feed Forward Network in Pytorch.

### Resources:

**Kaggle Competition**: https://www.kaggle.com/competitions/digit-recognizer

**Worked Examples**:

https://www.kaggle.com/code/abdulbasitniazi/pytorch-feedforwad-network-explained-for-beginners

https://www.kaggle.com/code/geekysaint/solving-mnist-using-pytorch

https://www.kaggle.com/code/abhinand05/mnist-introduction-to-computervision-with-pytorch


### Learning Objectives:
By the end of this lab, students will:
- Understand the basic concepts of neural networks.
- Implement and train a simple neural network using a deep learning framework (e.g., TensorFlow/Keras or PyTorch).
- Evaluate the performance of the trained neural network.
- Investigate the training process and evaluate results.

### Prerequisites:
- Basic understanding of Python programming.
- Familiarity with deep learning concepts and libraries (TensorFlow/Keras or PyTorch).
- A working Python environment with necessary libraries installed.

### Steps:

1. **Set Up the Environment:**
   - If using Google Colab:
     - Open a new notebook at [Google Colab](https://colab.research.google.com/).
     - Ensure you select a GPU runtime for faster training: `Runtime` > `Change runtime type` > `Hardware accelerator` > `GPU`.
   - If using a local setup:
     - Ensure `tensorflow` or `torch` is installed.
     - If not, install using pip:
       ```bash
       pip install tensorflow
       pip install torch torchvision
       ```

2. **Load and Explore the Dataset:**
   - Choose a dataset (e.g., MNIST for image classification).
     ```python
     from tensorflow.keras.datasets import mnist
     (X_train, y_train), (X_test, y_test) = mnist.load_data()
     
     # Or use PyTorch
     from torchvision import datasets, transforms
     
     transform = transforms.Compose([transforms.ToTensor()])
     train_set = datasets.MNIST(root='./data', train=True, download=True, transform=transform)
     test_set = datasets.MNIST(root='./data', train=False, download=True, transform=transform)
     ```
   - Explore the dataset:
     ```python
     import matplotlib.pyplot as plt
     plt.imshow(X_train[0], cmap='gray')
     plt.title(f'Label: {y_train[0]}')
     plt.show()
     ```

3. **Preprocess the Data:**
   - Normalize the data:
     ```python
     X_train = X_train / 255.0
     X_test = X_test / 255.0
     
     # Or PyTorch approach
     train_loader = torch.utils.data.DataLoader(train_set, batch_size=64, shuffle=True)
     test_loader = torch.utils.data.DataLoader(test_set, batch_size=64, shuffle=False)
     ```

4. **Define the Neural Network Model:**
   - Using TensorFlow/Keras:
     ```python
     from tensorflow.keras.models import Sequential
     from tensorflow.keras.layers import Dense, Flatten

     model = Sequential([
         Flatten(input_shape=(28, 28)),
         Dense(128, activation='relu'),
         Dense(10, activation='softmax')
     ])

     model.compile(optimizer='adam', loss='sparse_categorical_crossentropy', metrics=['accuracy'])
     ```
   - Using PyTorch:
     ```python
     import torch.nn as nn
     
     class SimpleNN(nn.Module):
         def __init__(self):
             super(SimpleNN, self).__init__()
             self.flatten = nn.Flatten()
             self.fc1 = nn.Linear(28*28, 128)
             self.fc2 = nn.Linear(128, 10)
         
         def forward(self, x):
             x = self.flatten(x)
             x = nn.functional.relu(self.fc1(x))
             x = nn.functional.softmax(self.fc2(x), dim=1)
             return x
     
     model = SimpleNN()
     criterion = nn.CrossEntropyLoss()
     optimizer = torch.optim.Adam(model.parameters(), lr=0.001)
     ```

5. **Train the Model:**
   - TensorFlow/Keras:
     ```python
     history = model.fit(X_train, y_train, epochs=10, validation_split=0.1)
     ```
   - PyTorch:
     ```python
     def train(model, criterion, optimizer, train_loader, epochs=10):
         model.train()
         for epoch in range(epochs):
             for images, labels in train_loader:
                 optimizer.zero_grad()
                 output = model(images)
                 loss = criterion(output, labels)
                 loss.backward()
                 optimizer.step()
             print(f'Epoch {epoch+1}/{epochs}, Loss: {loss.item()}')

     train(model, criterion, optimizer, train_loader)
     ```

6. **Evaluate the Model:**
   - TensorFlow/Keras:
     ```python
     test_loss, test_acc = model.evaluate(X_test, y_test, verbose=2)
     print(f'Test accuracy: {test_acc}')
     ```
   - PyTorch:
     ```python
     def evaluate(model, test_loader):
         model.eval()
         total, correct = 0, 0
         with torch.no_grad():
             for images, labels in test_loader:
                 output = model(images)
                 _, predicted = torch.max(output.data, 1)
                 total += labels.size(0)
                 correct += (predicted == labels).sum().item()
         accuracy = correct / total
         print(f'Test accuracy: {accuracy}')

     evaluate(model, test_loader)
     ```

7. **Visualize Training Results:**
   - TensorFlow/Keras:
     ```python
     plt.plot(history.history['accuracy'], label='accuracy')
     plt.plot(history.history['val_accuracy'], label = 'val_accuracy')
     plt.xlabel('Epoch')
     plt.ylabel('Accuracy')
     plt.ylim([0, 1])
     plt.legend(loc='lower right')
     plt.show()
     ```
   - PyTorch:
     - Additional visualization libraries like `matplotlib` or `seaborn` can be used to plot training accuracy/loss if tracked separately.

8. **Summary and Discussion:**
   - Summarize the key steps taken during the lab.
   - Discuss the model's performance, any challenges faced, and how they were addressed.

### Deliverables:
- A complete Jupyter notebook (or lab sheet) with all code implementations and visualizations.
- Short write-up (in markdown cells within the notebook) summarizing findings, challenges, and learnings.