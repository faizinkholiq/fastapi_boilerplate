from fastapi import FastAPI

from app.api import api_router
from app.core import settings

app = FastAPI(title=settings.app_name)

@app.get("/")
async def info():
    return { "HELLO BRO" }
    
app.include_router(api_router)