# Dockerized Google Chrome

### What?

The source code of the Docker image with Google Chrome inside.

### Why?

If you need to test some web applications or try some Chrome extensions, or you just want to be a little anonymous.

### How?

1) Build the Docker image.

```bash
$ docker build -t google-chrome .
```

2) Run the Docker container

```bash
$ docker run -d -p5900:5900 google-chrome
```

3) Connect via VNC Client

```
127.0.0.1:5900
```

<small>Don't forget that you could mount your stuff to the next directories</small>

<small>
```
/root/.config/google-chrome/Default/Extensions/
/root/Downloads/
/etc/hosts
```
</small>

### Whose?

Unlicensed.
