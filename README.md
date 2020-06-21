# cloud-build-cloud-functions-pipeline

## 1. Introduction

This is a simple project developed with the intent to show:

- how to develop and debug your application locally with [functions-framework-python](https://github.com/GoogleCloudPlatform/functions-framework-python).
- how to automate the deployment of Cloud Functions with Cloud Build on Google Cloud Platform.

Check the complete tutorial [here](#).

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

## 3. Run the app locally

```bash
cd scripts

./run-local.sh
```

## 4. Testing the app

From a different terminal window:

```bash
./test-local.sh "my message"
```

`test-localsh` does the following behind the scenes:

- encodes the message passed as parameter in **base64** format;
- reads the contents of `test-local-payload.json` and replaces its `data` property with the **base64** encoded message;
- perform an HTTP post request to `http://localhost:8080` (the default address the application runs when you execute `./run-local.sh` from the other terminal window), sending the modified JSON from the previous step in the payload.

On the terminal window where you ran `./run.sh` you should see some logs showing a message was received.
