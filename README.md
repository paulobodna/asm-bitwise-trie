# Bitwise Trie in MIPS Assembly

Implementation of a **Binary Digital Search Tree (Bitwise Trie)** using **MIPS Assembly**, developed for the course *Organização de Computadores Digitais I*.

The project allows insertion, search, removal, and visualization of binary keys using a trie structure.

---

## 📑 Table of Contents

1. **[Features](#features)**
2. **[How it works](#how-it-works)**
3. **[Running the project](#running-the-project)**
4. **[Usage](#usage)**
5. **[Examples](#examples)**
6. **[Technical Details](#technical-details)**
7. **[Authors](#authors)**
8. **[References](#references)**

---

## Features

- Insert binary keys (`0` and `1`)
- Prevent duplicate insertions
- Search for keys with path visualization
- Remove keys safely
- Print the tree structure (level-order visualization)
- Input validation (only binary values allowed)

---

## How it works

Each node represents a bit (`0` or `1`) and contains:

- Left child → bit `0`
- Right child → bit `1`
- Terminator flag (marks end of a valid key)
- Node level (used for visualization)

The root is a special node.

---

## Running the project

### Option 1: Using Docker (recommended)

#### 1. Build the image
````bash
docker build -t bitwise-trie .
````

#### 2. Run interactively
````bash
docker run -it bitwise-trie
````
⚠️ The -it flag is required for user input.

### Option 2: Using MARS manually
#### 1. Download MARS
https://dpetersanderson.github.io/download.html

or:
````bash
curl -L -o mars.jar https://dpetersanderson.github.io/Mars4_5.jar
````

#### 2. Install Java
````bash
sudo apt-get install default-jre -y
````

#### 3. Run MARS
````bash
java -jar mars.jar
````
Then open bitwise-trie.asm and run it.

---

## Usage

When running, you will see:
````
1 - Inserir
2 - Remover
3 - Buscar
4 - Visualizar
5 - Sair`
````

### Operations
- **Insert:** Add a binary string (e.g. 10101)
- **Remove:** Delete a key from the trie
- **Search:** Find a key and display traversal path
- **Visualize:** Print the tree structure
- **Exit:** Terminate program

### Notes
Only binary inputs (0 and 1) are accepted
Typing -1 returns to the menu
Duplicate keys are not allowed

---

## Examples
````
Insert: 101
Insert: 100
Search: 101

Output:
Chave encontrada na arvore: 101
Caminho percorrido: raiz, dir, esq, dir
````
---

## Technical Details
- Language: MIPS Assembly
- Simulator: MARS
- Memory:
- Nodes allocated dynamically via syscall (heap)
- Tree traversal:
- Bit-by-bit navigation
- Visualization:
- Level-order traversal using stack as queue

---

## Authors
- Eduardo Zaboto Mirolli
- Paulo Henrique Bodnarchuki da Cruz
- Gabriel Romualdo Silveira Pupo

---

## References
- https://www.geeksforgeeks.org/trie-insert-and-search/