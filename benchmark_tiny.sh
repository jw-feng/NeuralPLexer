#!/bin/bash

mkdir results

neuralplexer-inference --task structure_prediction_benchmarking --input-receptor neuralplexermodels_downstream_datasets_predictions/downstream_test_datasets/complex_structure_prediction/pocketminer/ --input-ligand neuralplexermodels_downstream_datasets_predictions/downstream_test_datasets/complex_structure_prediction/pocketminer/ --out-path results/tiny_run_complexpred_benchmark_post2019targets  --input-template neuralplexermodels_downstream_datasets_predictions/downstream_test_datasets/complex_structure_prediction/af2templates_colabfold_predictions_Feb2023/pocketminer+post2019targets/set_512_1234_pred032223 --model-checkpoint neuralplexermodels_downstream_datasets_predictions/models/complex_structure_prediction.ckpt --n-samples 2 --chunk-size 2 --start-time 1.0 --num-steps=40 --cuda-device-index 0 --sampler=langevin_simulated_annealing --csv-path neuralplexermodels_downstream_datasets_predictions/downstream_test_datasets/complex_structure_prediction/pocketminer/test_index.csv --template-id=3 --use-template

neuralplexer-inference --task structure_prediction_benchmarking --input-receptor neuralplexermodels_downstream_datasets_predictions/downstream_test_datasets/complex_structure_prediction/post2019targets/ --input-ligand neuralplexermodels_downstream_datasets_predictions/downstream_test_datasets/complex_structure_prediction/post2019targets/ --out-path results/tiny_run_complexpred_benchmark_post2019targets  --input-template neuralplexermodels_downstream_datasets_predictions/downstream_test_datasets/complex_structure_prediction/af2templates_colabfold_predictions_Feb2023/post2019targets+post2019targets/set_512_1234_pred032223 --model-checkpoint neuralplexermodels_downstream_datasets_predictions/models/complex_structure_prediction.ckpt --n-samples 2 --chunk-size 2 --start-time 1.0 --num-steps=40 --cuda-device-index 0 --sampler=langevin_simulated_annealing --csv-path neuralplexermodels_downstream_datasets_predictions/downstream_test_datasets/complex_structure_prediction/post2019targets/test_index.csv --template-id=3 --use-template

neuralplexer-inference --task pdbbind_benchmarking --input-receptor neuralplexermodels_downstream_datasets_predictions/downstream_test_datasets/pdbbind_tasks/rigid_receptor_docking --input-ligand neuralplexermodels_downstream_datasets_predictions/downstream_test_datasets/pdbbind_tasks/rigid_receptor_docking --out-path results/tiny_run_pdbbind_post2019_benchmark --model-checkpoint neuralplexermodels_downstream_datasets_predictions/models/pdbbind_finetuned/rigid_docking_base.ckpt --n-samples 1 --chunk-size 1 --start-time 1.0 --num-steps=20 --cuda-device-index 0 --sampler=langevin_simulated_annealing --csv-path datasets/pdbbind-equibind/timesplit_no_lig_overlap.csv

neuralplexer-inference --task binding_site_recovery_benchmarking --input-receptor neuralplexermodels_downstream_datasets_predictions/downstream_test_datasets/pdbbind_tasks/binding_site_recovery --input-ligand neuralplexermodels_downstream_datasets_predictions/downstream_test_datasets/pdbbind_tasks/binding_site_recovery --out-path results/tiny_run_binding_site_recovery_benchmark --input-template neuralplexermodels_downstream_datasets_predictions/downstream_test_datasets/pdbbind_tasks/binding_site_recovery --model-checkpoint neuralplexermodels_downstream_datasets_predictions/models/pdbbind_finetuned/structure_recovery_inpainting.ckpt --n-samples 1 --chunk-size 1 --start-time 1.0 --num-steps=40 --cuda-device-index 0 --sampler=langevin_simulated_annealing --csv-path neuralplexermodels_downstream_datasets_predictions/downstream_test_datasets/pdbbind_tasks/binding_site_recovery/test_index.csv
