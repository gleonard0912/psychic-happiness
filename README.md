# psychic-happiness

Docker/Fly.io configuration for running an ephemeral [`sshx`](https://sshx.io/) session from a Debian 12 slim container.

## Deploy to Fly.io

1. Update `app` in `fly.toml` to your Fly.io app name.
2. Deploy the app from the repository root. Because this repo includes a `fly.toml`, use `fly deploy` instead of `fly launch` runtime detection:
2. Deploy the app:

   ```sh
   fly deploy
   ```

The container installs `curl` and CA certificates, then starts `sshx` with:

```sh
curl -sSf https://sshx.io/get | sh -s run
```

Check the Fly.io logs for the generated `sshx` connection URL:

```sh
fly logs
```


If you do need to create a new Fly app first, run `fly apps create <your-app-name>`, update `fly.toml`, and then run `fly deploy`.
