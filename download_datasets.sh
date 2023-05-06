#!/bin/bash


# Download the SciERC dataset
wget http://nlp.cs.washington.edu/sciIE/data/sciERC_processed.tar.gz
mkdir scierc_data; tar -xf sciERC_processed.tar.gz -C scierc_data; rm -f sciERC_processed.tar.gz
#scierc_dataset=scierc_data/processed_data/json/

# Download the pre-trained models (single-sentence)
mkdir scierc_models; cd scierc_models

# Download the pre-trained entity model
wget https://nlp.cs.princeton.edu/projects/pure/scierc_models/ent-scib-ctx0.zip
unzip ent-scib-ctx0.zip; rm -f ent-scib-ctx0.zip
#scierc_ent_model=scierc_models/ent-scib-ctx0/

# Download the pre-trained full relation model
wget https://nlp.cs.princeton.edu/projects/pure/scierc_models/rel-scib-ctx0.zip
unzip rel-scib-ctx0.zip; rm -f rel-scib-ctx0.zip
#scierc_rel_model=scierc_models/rel-scib-ctx0/

# Download the pre-trained approximation relation model
wget https://nlp.cs.princeton.edu/projects/pure/scierc_models/rel_approx-scib-ctx0.zip
unzip rel_approx-scib-ctx0.zip; rm -f rel_approx-scib-ctx0.zip
#scierc_rel_model_approx=scierc_models/rel_approx-scib-ctx0/