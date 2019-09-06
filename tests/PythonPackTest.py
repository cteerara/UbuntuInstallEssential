import numpy as np
import matplotlib.pyplot as plt
import pandas as pd
import os
cwd = os.getcwd()
data = pd.read_csv(cwd+"/exponent.csv")
print("pandas works!")
x = np.linspace(0,1,100)
print("numpy works!")
y = x**2
plt.plot(x,y)
print("matplotlib works!")
print('Python3 interpreter works!')
