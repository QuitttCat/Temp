# Helpers

Utility scripts for bioinformatics and phylogenetics.

---

## robinson_foulds.py

Calculates the **Robinson-Foulds (RF) distance** between phylogenetic trees in Newick format using the [DendroPy](https://dendropy.org/) library.

The RF distance is normalized to `[0, 1]`:
- `0.0` — identical tree topologies
- `1.0` — maximally different topologies

### Setup

```bash
python3 -m venv .venv
source .venv/bin/activate
pip install dendropy
```

### Usage

**Compare two trees:**
```bash
python robinson_foulds.py tree1.txt tree2.txt
python robinson_foulds.py tree1.txt tree2.txt --verbose
```

**Compare all pairs across multiple files:**
```bash
python robinson_foulds.py --compare-all *.tre *.txt
python robinson_foulds.py --compare-all --verbose true_tree_48.txt out_w.tre out_u.tre
```

### Example Output

```
Robinson-Foulds distance: 0.2500
Tree similarity: 75.0%
Comparison: true_tree_48.txt vs out_w.tre
```

### Requirements

- Python 3.x
- `dendropy >= 5.0` (`pip install dendropy`)
# Temp
