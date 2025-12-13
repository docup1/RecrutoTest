from fastapi import FastAPI, Query
from fastapi.responses import PlainTextResponse

app = FastAPI()

@app.get("/", response_class=PlainTextResponse)
def hello(
    name: str = Query(..., description="Имя, например Recruto"),
    message: str = Query(..., description="Сообщение, например Давай дружить")
):
    """
    Возвращает строку вида:
    Hello {name}! {message}!
    """
    return f"Hello {name}! {message}!"
