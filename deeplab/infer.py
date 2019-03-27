import tensorflow as tf
import numpy as np
import matplotlib.pyplot as plt
from keras.preprocessing.image import load_img, img_to_array
 
#img = load_img(img_path)  # 输入预测图片的url

img = load_img('datasets/testset/JPEGImages/2018_010001.jpg')
img = img_to_array(img)  
img = np.expand_dims(img, axis=0).astype(np.uint8)  # uint8是之前导出模型时定义的
 
# 加载模型
sess = tf.Session()
with open("output_model/frozen_inference_graph_473.pb", "rb") as f:
    graph_def = tf.GraphDef()
    graph_def.ParseFromString(f.read())
    '''
    output = tf.import_graph_def(graph_def, input_map={"ImageTensor:0": img},
                                     return_elements=["SemanticPredictions:0"])
    # input_map 就是指明 输入是什么；
    # return_elements 就是指明输出是什么；两者在前面已介绍
    '''

    output = tf.import_graph_def(graph_def, input_map={"ImageTensor:0": img},
                                     return_elements=["SemanticPredictions:0"])



result = sess.run(output)
print(type(result))
#result.save('aaa.png')
plt.imshow(result[0])
print(result[0].shape)  # (1, height, width)
