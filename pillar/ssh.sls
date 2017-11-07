ssh:
  ssh_config: |    
    Host *
            GSSAPIAuthentication yes
            ForwardX11Trusted yes
            SendEnv LANG LC_CTYPE LC_NUMERIC LC_TIME LC_COLLATE LC_MONETARY LC_MESSAGES
            SendEnv LC_PAPER LC_NAME LC_ADDRESS LC_TELEPHONE LC_MEASUREMENT
            SendEnv LC_IDENTIFICATION LC_ALL LANGUAGE
            SendEnv XMODIFIERS
    HostKey /etc/ssh/ssh_host_rsa_key
    HostKey /etc/ssh/ssh_host_ecdsa_key
    HostKey /etc/ssh/ssh_host_ed25519_key
    SyslogFacility AUTHPRIV
    LogLevel VERBOSE
    PermitRootLogin no
    AuthorizedKeysFile .ssh/authorized_keys
    PasswordAuthentication yes
    ChallengeResponseAuthentication no
    GSSAPIAuthentication yes
    GSSAPICleanupCredentials no
    UsePAM yes
    AllowTcpForwarding no
    X11Forwarding yes
    AcceptEnv LANG LC_CTYPE LC_NUMERIC LC_TIME LC_COLLATE LC_MONETARY LC_MESSAGES
    AcceptEnv LC_PAPER LC_NAME LC_ADDRESS LC_TELEPHONE LC_MEASUREMENT
    AcceptEnv LC_IDENTIFICATION LC_ALL LANGUAGE
    AcceptEnv XMODIFIERS

