# Integration testing with Robot

Here some instructions in case your new to testing with Robot framework

## Getting started

* install pip3, python3 if not already available in OS
* install robotframework, selenium, web driver

```
 python3 -m pip install robotframework
 python3 -m pip install --upgrade robotframework-seleniumlibrary
 python3 -m pip install webdrivermanager
```

You might need to add user install dir to your PATH

```
export PATH="/Users/.../Library/Python/3.8/bin:$PATH"
```

## Running the tests

In the project directory, you can run:

```
robot  RefreshTest.robot
```

If all goes well you should have all green.
