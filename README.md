# Virtual Environment installeren

In dit project is reeds een `pyproject.toml` en `uv.lock` aanwezig. Om deze te kunnen gebruiken dienen we UV eerst te installeren.

```cmd
pip install uv
```

Wanneer deze eenmaal geïnstalleerd is, kunnen we de virtual environment (venv) inrichten op onze lokale computer.

```cmd
uv sync
```

Nadat de sync klaar is met runnen kunnen we controleren dat de venv onze dependencies correct heeft geïnstalleerd.

```cmd
uv run robot --version
```

```cmd
uv run rfbrowser --version
```

```cmd
uv run robocop --version
```

Bij iedere run zal nu teruggegeven worden welke versie van de betreffende dependency geïnstalleerd is.
Mocht er een error teruggegeven worden tijdens het uitvoeren van een van de bovenstaande commando's, betekent dit dat de betreffende dependency niet correct is geïnstalleerd in de venv.

Licht in dat geval de trainer in zodat er gekeken kan worden wat er mis is gegaan bij de sync.