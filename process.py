import pandas as pd
import numpy as np
# import cv2

# diagrams_df = pd.read_csv('data.tsv', sep='\t')

# Save image in set directory
# Read RGB image
# img = cv2.imread('regular_triangle.png', cv2.IMREAD_GRAYSCALE)
# print(img)
# print(img.shape)

# for index, row in diagrams_df.head(10).iterrows():
#   img = cv2.imread(f'{row[1]}.png', cv2.IMREAD_GRAYSCALE)
#   processed_img = np.ones((600, 600)) - img/255
#   np.savetxt(f'img{index}.txt', processed_img, fmt='%1.0f', delimiter=' ')


# p = np.arange(10)
# print(p.shape)

# q = np.eye(3)
# print(q.shape)

arr = np.array([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12])
print(arr)
print(arr.shape)
newarr = arr.reshape(4, 3, 1)
print(newarr)
print(newarr.shape)