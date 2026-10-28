
from pathlib import Path

sql_files = list(Path(".").glob("task_*.sql"))

task_count = len(sql_files)

print(task_count)

readme_path = Path("README.md")

readme_text = readme_path.read_text(encoding="utf-8")

print(readme_text)

import re

readme_text = re.sub(
    r"Количество решённых задач:\*\* \d+",
    f"Количество решённых задач:** {task_count}",
    readme_text
)

print(readme_text)

readme_path.write_text(readme_text, encoding="utf-8")

