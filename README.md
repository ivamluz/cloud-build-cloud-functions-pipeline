# cloud-build-cloud-functions-pipeline

## 1. Introduction

This is a simple project developed with the intent to show:

- how to develop and debug your application locally with [functions-framework-python](https://github.com/GoogleCloudPlatform/functions-framework-python).
- how to automate the deployment of Cloud Functions with Cloud Build on Google Cloud Platform.

Check the complete tutorial [here](https://medium.com/@ivam.santos/how-to-develop-debug-and-test-your-python-google-cloud-functions-on-your-local-dev-environment-d56ef94cb409).

## 2. Environment setup

### 2.1. Get the code

```bash
git clone git@github.com:ivamluz/cloud-build-cloud-functions-pipeline.git
cd cloud-build-cloud-functions-pipeline
```

### 2.2. Virtualenv

- Install Python 3.7+

- Create and activate an isolated Python environment

  ```bash
  virtualenv --python `which python3.7` venv
  source ./venv/bin/activate
  ```

- Install the dependencies

  ```bash
  pip install --upgrade -r requirements-dev.txt
  ```

## 3. Run and test the app locally

### 3.1 Testing the pub/sub example

From inside the `/scripts` folder:

```bash
./run-local-pubsub.sh
```

From a different terminal window:

```bash
./test-local-pubsub.sh "my message"
```

`test-local-pubsub.sh` does the following behind the scenes:

- encodes the message passed as parameter in **base64** format;
- reads the contents of `payloads/test-local-payload.json` and replaces its `data` property with the **base64** encoded message;
- performs an HTTP post request to `http://localhost:8080` (the default address the application runs when you execute `./run-local-pubsub.sh` from the other terminal window), sending the modified JSON from the previous step in the payload.

On the terminal window where you ran `./run-local-pubsub.sh` you should see some logs showing a message was received.

### 3.2 Testing the HTTP example

From inside the `/scripts` folder:

```bash
./run-local-http.sh
```

From a different terminal window:

```bash
./test-local-http.sh
```

`test-local-http.sh` performs a `GET` HTTP request to `http://localhost:8080/?subject=FooBar` and prints the response:

```console
$ ./test-local-http.sh
Hello, FooBar!
```

After everything is running, please make sure to keep reading the [tutorial](https://medium.com/@ivam.santos/how-to-develop-debug-and-test-your-python-google-cloud-functions-on-your-local-dev-environment-d56ef94cb409).
