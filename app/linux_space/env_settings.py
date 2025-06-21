import os
from pathlib import Path
from dotenv import load_dotenv

# Путь к .env
BASE_DIR = Path(__file__).resolve().parent.parent.parent
load_dotenv(BASE_DIR / '.env')

