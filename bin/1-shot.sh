#
#dataset=20newsgroup
#data_path="../data/20news.json"
#n_train_class=8
#n_val_class=5
#n_test_class=7
#
#dataset=amazon
#data_path="../data/amazon.json"
#n_train_class=10
#n_val_class=5
#n_test_class=9
#
dataset=huffpost
data_path="../data/huffpost.json"
n_train_class=20
n_val_class=5
n_test_class=16
#
#
#dataset=reuters
#data_path="../data/reuters.json"
#n_train_class=15
#n_val_class=5
#n_test_class=11

#dataset=fewrel
#data_path="../data/fewrel.json"
#n_train_class=65
#n_val_class=5
#n_test_class=10
#
#dataset=rcv1
#data_path="../data/rcv1.json"
#n_train_class=37
#n_val_class=10
#n_test_class=24
python ../src/main_simaese_network.py \
    --cuda 0 \
    --way 5 \
    --shot 1 \
    --query 25 \
    --mode train \
    --embedding mlada \
    --classifier r2d2 \
    --dataset=$dataset \
    --data_path=$data_path \
    --n_train_class=$n_train_class \
    --n_val_class=$n_val_class \
    --n_test_class=$n_test_class \
    --train_episodes 3 \
    --train_epochs 3000 \
    --test_epochs 1000 \
    --val_epochs 200 \
    --train_iter 18 \
    --test_iter 20 \
    --meta_lr 3e-5 \
    --task_lr 7e-1 \
    --Comments "Amazon " \
    --patience 20 \
    --seed 3 \
    --notqdm \
    --weight_decay 1e-5 \
    --dropout 0.0 \
    --train_loss_weight 12.0 \
    --test_loss_weight 5.8 \
    --kernel_size 2 3 4 \
    
    
