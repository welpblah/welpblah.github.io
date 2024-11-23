<post-metadata>
  <post-title>ssh-keygen</post-title>
  <post-date>2024-11-14</post-date>
  <post-tags>cli, ssh, cryptography</post-tags>
</post-metadata>


The [GitHub documentation](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent), [SourceHut documentation](https://man.sr.ht/tutorials/set-up-account-and-git.md), and [Codeberg documentation](https://docs.codeberg.org/security/ssh-key/) for generating SSH keys are slightly different.

GitHub:

```shell
ssh-keygen -t ed25519 -C "your_email@example.com"
```

SourceHut:

```shell
ssh-keygen
```

Codeberg:

```shell
ssh-keygen -t ed25519 -a 100
```

According to the [ssh-keygen documentation](https://www.man7.org/linux/man-pages/man1/ssh-keygen.1.html), the `-t` flag means:

```man
-t dsa | ecdsa | ecdsa-sk | ed25519 | ed25519-sk | rsa
       Specifies the type of key to create.  The possible values
       are “dsa”, “ecdsa”, “ecdsa-sk”, “ed25519”, “ed25519-sk”,
       or “rsa”.

       This flag may also be used to specify the desired
       signature type when signing certificates using an RSA CA
       key.  The available RSA signature variants are “ssh-rsa”
       (SHA1 signatures, not recommended), “rsa-sha2-256”, and
       “rsa-sha2-512” (the default).
```

But at the beginning of the `ssh-keygen` documentation, the following is stated:

>  If invoked without any arguments, `ssh-keygen` will generate an Ed25519 key.

GitHub and Codeberg therefore think explicitly stating the `-t` flag with the [ed25519 signing algorithm](https://cryptography.io/en/latest/hazmat/primitives/asymmetric/ed25519/) argument is important. As the following note, in the GitHub documentation:

> If you are using a legacy system that doesn't support the Ed25519 algorithm, use:
>
> ```ssh-keygen -t rsa -b 4096 -C "your_email@example.com" ```

Is this to say, when creating a computer system, the system programmers implement particular already-accepted-among-the-industry cryptographic algorithms for the purpose of software security? And therefore, older computer systems might have different cryptographic algorithms?

Furthermore, is SourceHut's documentation of omitting the type of key bad practice? If I'm on a legacy system that does not support the Ed25519 algorithm, will `ssh-keygen` default to some other algorithm like, say, RSA?