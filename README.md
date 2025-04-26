# ScratchPytorchMLRepo

## 🚀 Your Foundation for Sustainable ML Projects

This repository provides a well-structured, best-practice layout to kickstart your Machine Learning endeavors in pytorch-(lightning). It embodies my preferred defaults for building maintainable and scalable ML projects. Dive in and adapt it to your specific needs!


## 🏭 Development Principles

This project adheres to the following development principles to ensure maintainability, reproducibility, and flexibility:

* **Configuration-Driven:**
    * All critical hyperparameters and training configurations for training, validation, and testing scripts, as well as model classes, are managed through YAML configuration files.
    * A single YAML file encapsulates both training parameters and the model architecture for each training run.
    * This design choice guarantees the reproducibility of machine learning experiments by clearly defining all settings.

* **Modular Training with PyTorch Lightning:**
    * Training, testing, and validation pipelines are built using a 100% modular [PyTorch Lightning](https://lightning.ai/docs/pytorch/stable/) framework.
    * Combined with the configuration files, this enables significant flexibility in utilizing various callbacks, learning rate schedules, and multi-GPU training setups with zero code changes.

* **Optional Experiment Tracking with Comet ML:**
    * [Comet ML](https://www.comet.com/) is integrated as a default yet optional platform for logging and monitoring machine learning experiments.
    * Experiment tracking can be easily disabled by not configuring your Comet API key as an variable at runtime, providing flexibility for users who prefer alternative tools or local runs.

* **Automated Code Quality and Consistency:**
    * The GitHub repository is configured to automatically enforce code formatting upon each commit using the [Black](https://black.readthedocs.io/en/stable/the_black_code_style/index.html) code style, enhancing code readability and maintainability.
    * Furthermore, [mypy](https://mypy-lang.org/) is employed as a type checking hook to improve code reliability and reduce potential errors.
    * [autoflake](https://pypi.org/project/autoflake/) is integrated to automatically remove unused imports, contributing to improved code efficiency.

* **Rigorous Modularization and Execution:**
    * A strong emphasis is placed on modularity across all class imports, promoting code organization and reusability.
    * To execute any script within the repository, please use the following consistent invocation method: `python -m ML_Module.<path_to_script>`. This ensures proper module resolution and execution within the project structure.

