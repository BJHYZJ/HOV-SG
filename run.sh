  python data/habitat/gen_hm3dsem_from_poses.py --dataset_dir data/hm3dsem --save_dir data/hm3dsem_walks/ --pose_dir hovsg/data/hm3dsem/metadata/poses


  python application/create_graph.py main.dataset=hm3dsem main.dataset_path=hovsg/data/hm3dsem_walks/val/00824-Dd4bFSTQ8gi/ main.save_path=hovsg/data/scene_graphs/00824-Dd4bFSTQ8gi/