import asyncio
from aiohttp import web

async def handle(request):
    return web.Response(text="OK")

app = web.Application()
app.router.add_get('/', handle)

# Слушаем на $PORT, который Render даёт автоматически
port = int(__import__('os').environ.get('PORT', 10000))
web.run_app(app, host='0.0.0.0', port=port)
