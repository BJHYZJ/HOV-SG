python data/hm3dsem/gen_hm3dsem_walks_from_poses.py --dataset_dir data/hm3dsem --save_dir data/hm3dsem_walks/ --pose_dir hovsg/data/hm3dsem/metadata/poses

python application/create_graph.py main.dataset=hm3dsem main.dataset_path=hovsg/data/hm3dsem_walks/val/00824-Dd4bFSTQ8gi/ main.save_path=hovsg/data/scene_graphs

python application/visualize_graph.py graph_path=hovsg/data/scene_graphs/hm3dsem/00824-Dd4bFSTQ8gi/graph

python application/visualize_query_graph.py main.graph_path=data/scene_graphs/hm3dsem/00824-Dd4bFSTQ8gi/graph

python application/semantic_segmentation.py main.dataset=replica main.scene_id=office0 main.dataset=replica main.dataset_path=hovsg/data/Replica_RGBD/Replica/office0 main.save_path=hovsg/data/sem_seg/Replica/office0

python application/eval/evaluate_sem_seg.py main.dataset=replica main.scene_name=office_0 main.feature_map_path=hovsg/data/sem_seg/Replica/office0