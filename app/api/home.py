from fastapi import APIRouter
from app.core import settings

router = APIRouter()

@router.get("")
def root():
    return {
        "app_name": settings.app_name,
    }