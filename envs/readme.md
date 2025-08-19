maybe we will put package yaml files here?

### easySFS
```
conda env create -f easysfs.yml
```

this generated an error and created an empty environment... running the following:

```
conda install -c conda-forge numpy pandas scipy -y
git clone https://github.com/isaacovercast/easySFS.git
cd easySFS
chmod 777 easySFS.py
./easySFS.py
```
Next, creating a dadi-cli environment:
```
conda env create -f conda-cpu-env.yml
```
