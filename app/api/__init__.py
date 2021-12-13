from fastapi import APIRouter

from app.api import home
from app.api import ocr

api_router = APIRouter()
api_router.include_router(home.router, prefix="/home", tags="home")