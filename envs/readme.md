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
Next, creating a dadi-cli environment: **pick up here next time!**
```
conda env create -f conda-cpu-env.yml
```


## What do we not understand about dadi?
- what bounds of paramters are reasonable? how do we choose when we don't know anything about our population?
- difference between dadi vs momi?
- 
