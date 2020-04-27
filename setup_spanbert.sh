#!/bin/bash

download_spanbert(){
  model=$1
  wget -P $data_dir https://dl.fbaipublicfiles.com/fairseq/models/$model.tar.gz
  mkdir $data_dir/$model
  tar xvfz $data_dir/$model.tar.gz -C $data_dir/$model
  rm $data_dir/$model.tar.gz
}


download_spanbert spanbert_hf_base

