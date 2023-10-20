# AG1321-Project
Classification Project for KTH Course AG1321 - Remote Sensing Technology

## Implementations on Unsupervised Classification Approach.
This repo was originally planned to explore ML algorithm methods using resources out of the Google Earth Engine (GEE).  An initial setup for 'geemap' to act as intermediate interfacing for image importations was done, and the Unsupervised Classification was implemented here, to be found in [`unsupervised.ipynb`](unsupervised.ipynb).

For the Supervised Classification, find the code implementation at GEE: https://code.earthengine.google.com/2f1418c7a9ed02aa9057f371505aa796 .

## Installations
Install Anaconda or Miniconda (preferable) via the link below:
https://docs.conda.io/projects/miniconda/en/latest/index.html#quick-command-line-install

Create a new conda environment `ag1321` with the required packages (geemap and more) via the following command in terminal:
```
conda create --name ag1321 -c conda-forge --file requirements.txt
```

## Useful Tutorials/Resources:
- geemap YouTube resources: https://geemap.org/tutorials/
- Remote Sensing Classification Tutorials: https://worldbank.github.io/OpenNightLights/tutorials/mod2_5_GEE_PythonAPI_and_geemap.html
- GEE Image Classification (js based, convertable): https://ecodata.nrel.colostate.edu/gdpe-gee-remote-sensing-lessons/module7.html
- Supervised Classification in GEE: https://geohackweek.github.io/GoogleEarthEngine/05-classify-imagery/
- GEE earthengine-api (keep for reference): https://developers.google.com/earth-engine/guides/python_install-conda
- GEE ML, Supervised & Unsupervised Learning Tutorials: https://developers.google.com/earth-engine/guides/machine-learning
- geemap - Convert js to py with one function: https://geemap.org/notebooks/15_convert_js_to_py/
- geemap - Accuracy Assessment via Confusion Matrix and export: https://geemap.org/notebooks/33_accuracy_assessment/#export-the-result