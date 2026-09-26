.class public Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;
.source "SSLTrustAllSocketFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory$SSLTrustAllManager;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private mCtx:Ljavax/net/ssl/SSLContext;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory;

    invoke-static {v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 18
    sput-object v0, Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory;->LOGTAG:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 6
    .param p1, "truststore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 45
    :try_start_0
    const-string v1, "TLS"

    invoke-static {v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory;->mCtx:Ljavax/net/ssl/SSLContext;

    .line 46
    iget-object v1, p0, Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory;->mCtx:Ljavax/net/ssl/SSLContext;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljavax/net/ssl/TrustManager;

    const/4 v4, 0x0

    new-instance v5, Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory$SSLTrustAllManager;

    invoke-direct {v5, p0}, Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory$SSLTrustAllManager;-><init>(Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory;)V

    aput-object v5, v3, v4

    .line 47
    const/4 v4, 0x0

    .line 46
    invoke-virtual {v1, v2, v3, v4}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 48
    sget-object v1, Lorg/apache/http/conn/ssl/SSLSocketFactory;->ALLOW_ALL_HOSTNAME_VERIFIER:Lorg/apache/http/conn/ssl/X509HostnameVerifier;

    invoke-virtual {p0, v1}, Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory;->setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 49
    :catch_0
    move-exception v0

    .line 50
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory;->LOGTAG:Ljava/lang/String;

    const-string v2, "trust all socket factory exception"

    invoke-static {v1, v2, v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static getSocketFactory()Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 69
    :try_start_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v4

    .line 68
    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 70
    .local v2, "trustStore":Ljava/security/KeyStore;
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 71
    new-instance v1, Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory;

    invoke-direct {v1, v2}, Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory;-><init>(Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :goto_0
    return-object v1

    .line 73
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v4, Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory;->LOGTAG:Ljava/lang/String;

    const-string v5, "get socket factory exception"

    invoke-static {v4, v5, v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v3

    .line 76
    goto :goto_0
.end method


# virtual methods
.method public createSocket()Ljava/net/Socket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory;->mCtx:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/net/ssl/SSLSocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;
    .locals 1
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "host"    # Ljava/lang/String;
    .param p3, "port"    # I
    .param p4, "autoClose"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .prologue
    .line 57
    iget-object v0, p0, Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory;->mCtx:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/net/Socket;Ljava/lang/String;IZ)Ljava/net/Socket;

    move-result-object v0

    return-object v0
.end method

.method public getSslEngine()Ljavax/net/ssl/SSLEngine;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory;->mCtx:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->createSSLEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    return-object v0
.end method
