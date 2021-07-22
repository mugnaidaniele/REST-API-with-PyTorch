# REST-API-with-PyTorch

## Run
```console

$ cd REST-API-with-PyTorch 
$ make build 
$ make run 
```

On another shell: <br> 

```console
$ python
>>> import requests
file = open('<PATH/img.jpg','rb')
resp = request.post(""http://localhost:5000/predict",
        files={"file": file})
resp.json()

```