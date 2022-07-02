```bash
bash build.sh
```

```bash
bash start.sh
```

```bash
bash into.sh
```

cd /home/ivb/Repos/CMRNet/
/opt/miniconda3/bin/conda init
/opt/miniconda3/bin/conda config --set auto_activate_base false
conda activate cmrnet
pip install -r requirements.txt
cd models/CMRNet/correlation_package/
python setup.py develop --user
cd ../../../
python setup.py develop --user

sudo apt update && sudo apt install mesa-utils