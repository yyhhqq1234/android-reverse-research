.class final Lio/netty/handler/ssl/JettyNpnSslSession;
.super Ljava/lang/Object;
.source "JettyNpnSslSession.java"

# interfaces
.implements Ljavax/net/ssl/SSLSession;


# instance fields
.field private volatile applicationProtocol:Ljava/lang/String;

.field private final engine:Ljavax/net/ssl/SSLEngine;


# direct methods
.method constructor <init>(Ljavax/net/ssl/SSLEngine;)V
    .locals 0
    .param p1, "engine"    # Ljavax/net/ssl/SSLEngine;

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lio/netty/handler/ssl/JettyNpnSslSession;->engine:Ljavax/net/ssl/SSLEngine;

    .line 34
    return-void
.end method

.method private unwrap()Ljavax/net/ssl/SSLSession;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslSession;->engine:Ljavax/net/ssl/SSLEngine;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getApplicationBufferSize()I
    .locals 1

    .prologue
    .line 168
    invoke-direct {p0}, Lio/netty/handler/ssl/JettyNpnSslSession;->unwrap()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v0

    return v0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 148
    invoke-direct {p0}, Lio/netty/handler/ssl/JettyNpnSslSession;->unwrap()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCreationTime()J
    .locals 2

    .prologue
    .line 83
    invoke-direct {p0}, Lio/netty/handler/ssl/JettyNpnSslSession;->unwrap()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getCreationTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getId()[B
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0}, Lio/netty/handler/ssl/JettyNpnSslSession;->unwrap()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getId()[B

    move-result-object v0

    return-object v0
.end method

.method public getLastAccessedTime()J
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Lio/netty/handler/ssl/JettyNpnSslSession;->unwrap()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLastAccessedTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLocalCertificates()[Ljava/security/cert/Certificate;
    .locals 1

    .prologue
    .line 128
    invoke-direct {p0}, Lio/netty/handler/ssl/JettyNpnSslSession;->unwrap()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getLocalPrincipal()Ljava/security/Principal;
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Lio/netty/handler/ssl/JettyNpnSslSession;->unwrap()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getLocalPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getPacketBufferSize()I
    .locals 1

    .prologue
    .line 163
    invoke-direct {p0}, Lio/netty/handler/ssl/JettyNpnSslSession;->unwrap()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPacketBufferSize()I

    move-result v0

    return v0
.end method

.method public getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-direct {p0}, Lio/netty/handler/ssl/JettyNpnSslSession;->unwrap()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getPeerCertificates()[Ljava/security/cert/Certificate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 123
    invoke-direct {p0}, Lio/netty/handler/ssl/JettyNpnSslSession;->unwrap()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method

.method public getPeerHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0}, Lio/netty/handler/ssl/JettyNpnSslSession;->unwrap()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPeerPort()I
    .locals 1

    .prologue
    .line 158
    invoke-direct {p0}, Lio/netty/handler/ssl/JettyNpnSslSession;->unwrap()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerPort()I

    move-result v0

    return v0
.end method

.method public getPeerPrincipal()Ljava/security/Principal;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;
        }
    .end annotation

    .prologue
    .line 138
    invoke-direct {p0}, Lio/netty/handler/ssl/JettyNpnSslSession;->unwrap()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v5, 0x5f

    const/16 v4, 0x3a

    .line 45
    invoke-direct {p0}, Lio/netty/handler/ssl/JettyNpnSslSession;->unwrap()Ljavax/net/ssl/SSLSession;

    move-result-object v3

    invoke-interface {v3}, Ljavax/net/ssl/SSLSession;->getProtocol()Ljava/lang/String;

    move-result-object v2

    .line 46
    .local v2, "protocol":Ljava/lang/String;
    iget-object v0, p0, Lio/netty/handler/ssl/JettyNpnSslSession;->applicationProtocol:Ljava/lang/String;

    .line 48
    .local v0, "applicationProtocol":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 49
    if-eqz v2, :cond_0

    .line 50
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    .line 64
    :goto_0
    return-object v3

    .line 52
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 56
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 57
    .local v1, "buf":Ljava/lang/StringBuilder;
    if-eqz v2, :cond_2

    .line 58
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 63
    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 61
    :cond_2
    const-string v3, "null:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public getSessionContext()Ljavax/net/ssl/SSLSessionContext;
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Lio/netty/handler/ssl/JettyNpnSslSession;->unwrap()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v0

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 108
    invoke-direct {p0}, Lio/netty/handler/ssl/JettyNpnSslSession;->unwrap()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/net/ssl/SSLSession;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValueNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    invoke-direct {p0}, Lio/netty/handler/ssl/JettyNpnSslSession;->unwrap()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getValueNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 93
    invoke-direct {p0}, Lio/netty/handler/ssl/JettyNpnSslSession;->unwrap()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->invalidate()V

    .line 94
    return-void
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 98
    invoke-direct {p0}, Lio/netty/handler/ssl/JettyNpnSslSession;->unwrap()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->isValid()Z

    move-result v0

    return v0
.end method

.method public putValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 103
    invoke-direct {p0}, Lio/netty/handler/ssl/JettyNpnSslSession;->unwrap()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljavax/net/ssl/SSLSession;->putValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method public removeValue(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 113
    invoke-direct {p0}, Lio/netty/handler/ssl/JettyNpnSslSession;->unwrap()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    invoke-interface {v0, p1}, Ljavax/net/ssl/SSLSession;->removeValue(Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method setApplicationProtocol(Ljava/lang/String;)V
    .locals 2
    .param p1, "applicationProtocol"    # Ljava/lang/String;

    .prologue
    .line 37
    if-eqz p1, :cond_0

    .line 38
    const/16 v0, 0x3a

    const/16 v1, 0x5f

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 40
    :cond_0
    iput-object p1, p0, Lio/netty/handler/ssl/JettyNpnSslSession;->applicationProtocol:Ljava/lang/String;

    .line 41
    return-void
.end method
