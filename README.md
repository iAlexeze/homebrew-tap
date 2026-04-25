# Homebrew Tap for Orkestra

This tap provides Homebrew formulas for [Orkestra](https://github.com/orkspace/orkestra) – a declarative runtime for Kubernetes operators, and its web-based Control Center (orkcc).

## 📦 Installation

### 1. Add the tap

```bash
brew tap orkspace/tap
```

### 2. Install the CLI tools

#### Runtime (`ork`)

```bash
brew install ork
```

#### Control Center (`orkcc`)

```bash
brew install orkcc
```

### 3. Verify installation

```bash
ork version
orkcc --help
```

## 📘 Usage examples

After installation, you can use `ork` to deploy and manage operators:

```bash
ork run -k katalog.yaml
```

For the Control Center:

```bash
ork control start --port 8081
```

Then open `http://localhost:8081` to see the web UI.

## 🔄 Updating

When a new version of Orkestra is released, update your local formulas:

```bash
brew update
brew upgrade ork orkcc
```

## 🧪 Development

To build the formulas locally from source:

```bash
brew install --build-from-source ork
brew install --build-from-source orkcc
```

## 📜 License

This tap and the Orkestra project are licensed under the **Apache License 2.0**.  
See the [LICENSE](https://github.com/orkspace/orkestra/blob/main/LICENSE) file in the Orkestra repository for full details.

## 🙏 Contributing

Issues and pull requests are welcome at the [Orkestra main repo](https://github.com/orkspace/orkestra) or directly to this tap repository.

---

**Maintainers:** Orkestra team  
**Homepage:** [https://orkestra.sh](https://orkestra.sh) (if available, otherwise omit)


Feel free to adjust the URL or description as needed.
