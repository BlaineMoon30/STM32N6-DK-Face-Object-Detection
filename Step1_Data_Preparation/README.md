# Data_Preparation

</BR>The FACE dataset can be practiced using the WIDER FACE dataset. 
</BR>This example is designed for use in Google Colab, 
</BR>and you can create and test the dataset using the directory structure shown below. 
</BR>To use more data, you need to manually download the WIDER FACE dataset and organize the files according to the YOLOv8 training format.

[WIDER FACE]
</BR><http://shuoyang1213.me/WIDERFACE/>

</BR>WIDER_FACE/
</BR>├── images/
</BR>│   ├── train/
</BR>│   │   ├── image1.jpg
</BR>│   │   ├── image2.jpg
</BR>│   ├── val/
</BR>│       ├── image1.jpg
</BR>│       ├── image2.jpg
</BR>├── labels/
</BR>│   ├── train/
</BR>│   │   ├── image1.txt
</BR>│   │   ├── image2.txt
</BR>│   ├── val/
</BR>│       ├── image1.txt
</BR>│       ├── image2.txt
</BR>├── test_image/
</BR>│   ├── image1.jpg
</BR>│   ├── image2.jpg
</BR>└── wider_face.yaml

</BR>Since the file size is large in Colab, 
</BR>this example stores the dataset in Google Drive and loads it from there for training in Colab.


</BR>For the label files, they should be written in the following format. 
</BR>For example, if an image contains four face labels, you should first specify the class number 0, 
</BR>followed by the bounding box coordinates as shown below.

</BR>0 0.1572265625 0.21407624633431085 0.041015625 0.0747800586510264
</BR>0 0.2744140625 0.18328445747800587 0.0400390625 0.08064516129032258
</BR>0 0.314453125 0.22287390029325513 0.0439453125 0.07624633431085044
</BR>0 0.4140625 0.20674486803519063 0.05078125 0.08797653958944282
