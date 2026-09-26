.class public final Lio/netty/handler/ssl/JdkSslClientContext;
.super Lio/netty/handler/ssl/JdkSslContext;
.source "JdkSslClientContext.java"


# instance fields
.field private final ctx:Ljavax/net/ssl/SSLContext;

.field private final nextProtocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x0

    .line 48
    move-object v1, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-wide v8, v6

    invoke-direct/range {v1 .. v9}, Lio/netty/handler/ssl/JdkSslClientContext;-><init>(Ljava/io/File;Ljavax/net/ssl/TrustManagerFactory;Ljava/lang/Iterable;Ljava/lang/Iterable;JJ)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1
    .param p1, "certChainFile"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/netty/handler/ssl/JdkSslClientContext;-><init>(Ljava/io/File;Ljavax/net/ssl/TrustManagerFactory;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljavax/net/ssl/TrustManagerFactory;)V
    .locals 10
    .param p1, "certChainFile"    # Ljava/io/File;
    .param p2, "trustManagerFactory"    # Ljavax/net/ssl/TrustManagerFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 82
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, v4

    move-wide v8, v6

    invoke-direct/range {v1 .. v9}, Lio/netty/handler/ssl/JdkSslClientContext;-><init>(Ljava/io/File;Ljavax/net/ssl/TrustManagerFactory;Ljava/lang/Iterable;Ljava/lang/Iterable;JJ)V

    .line 83
    return-void
.end method

.method public constructor <init>(Ljava/io/File;Ljavax/net/ssl/TrustManagerFactory;Ljava/lang/Iterable;Ljava/lang/Iterable;JJ)V
    .locals 21
    .param p1, "certChainFile"    # Ljava/io/File;
    .param p2, "trustManagerFactory"    # Ljavax/net/ssl/TrustManagerFactory;
    .param p5, "sessionCacheSize"    # J
    .param p7, "sessionTimeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljavax/net/ssl/TrustManagerFactory;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Iterable",
            "<",
            "Ljava/lang/String;",
            ">;JJ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 107
    .local p3, "ciphers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    .local p4, "nextProtocols":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lio/netty/handler/ssl/JdkSslContext;-><init>(Ljava/lang/Iterable;)V

    .line 109
    if-eqz p4, :cond_5

    invoke-interface/range {p4 .. p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_5

    .line 110
    invoke-static {}, Lio/netty/handler/ssl/JettyNpnSslEngine;->isAvailable()Z

    move-result v17

    if-nez v17, :cond_0

    .line 111
    new-instance v17, Ljavax/net/ssl/SSLException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "NPN/ALPN unsupported: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 114
    :cond_0
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 115
    .local v13, "nextProtoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface/range {p4 .. p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 116
    .local v14, "p":Ljava/lang/String;
    if-nez v14, :cond_4

    .line 121
    .end local v14    # "p":Ljava/lang/String;
    :cond_1
    invoke-static {v13}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/netty/handler/ssl/JdkSslClientContext;->nextProtocols:Ljava/util/List;

    .line 127
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v13    # "nextProtoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    if-nez p1, :cond_7

    .line 128
    :try_start_0
    const-string v17, "TLS"

    invoke-static/range {v17 .. v17}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/netty/handler/ssl/JdkSslClientContext;->ctx:Ljavax/net/ssl/SSLContext;

    .line 129
    if-nez p2, :cond_6

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/netty/handler/ssl/JdkSslClientContext;->ctx:Ljavax/net/ssl/SSLContext;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 164
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/netty/handler/ssl/JdkSslClientContext;->ctx:Ljavax/net/ssl/SSLContext;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljavax/net/ssl/SSLContext;->getClientSessionContext()Ljavax/net/ssl/SSLSessionContext;

    move-result-object v16

    .line 165
    .local v16, "sessCtx":Ljavax/net/ssl/SSLSessionContext;
    const-wide/16 v18, 0x0

    cmp-long v17, p5, v18

    if-lez v17, :cond_2

    .line 166
    const-wide/32 v18, 0x7fffffff

    move-wide/from16 v0, p5

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Ljavax/net/ssl/SSLSessionContext;->setSessionCacheSize(I)V

    .line 168
    :cond_2
    const-wide/16 v18, 0x0

    cmp-long v17, p7, v18

    if-lez v17, :cond_3

    .line 169
    const-wide/32 v18, 0x7fffffff

    move-wide/from16 v0, p7

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-int v0, v0

    move/from16 v17, v0

    invoke-interface/range {v16 .. v17}, Ljavax/net/ssl/SSLSessionContext;->setSessionTimeout(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :cond_3
    return-void

    .line 119
    .end local v16    # "sessCtx":Ljavax/net/ssl/SSLSessionContext;
    .restart local v10    # "i$":Ljava/util/Iterator;
    .restart local v13    # "nextProtoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v14    # "p":Ljava/lang/String;
    :cond_4
    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 123
    .end local v10    # "i$":Ljava/util/Iterator;
    .end local v13    # "nextProtoList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v14    # "p":Ljava/lang/String;
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/netty/handler/ssl/JdkSslClientContext;->nextProtocols:Ljava/util/List;

    goto :goto_1

    .line 132
    :cond_6
    const/16 v17, 0x0

    :try_start_1
    check-cast v17, Ljava/security/KeyStore;

    move-object/from16 v0, p2

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/netty/handler/ssl/JdkSslClientContext;->ctx:Ljavax/net/ssl/SSLContext;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {p2 .. p2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 171
    :catch_0
    move-exception v9

    .line 172
    .local v9, "e":Ljava/lang/Exception;
    new-instance v17, Ljavax/net/ssl/SSLException;

    const-string v18, "failed to initialize the server-side SSL context"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v9}, Ljavax/net/ssl/SSLException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v17

    .line 136
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_7
    :try_start_2
    const-string v17, "JKS"

    invoke-static/range {v17 .. v17}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v11

    .line 137
    .local v11, "ks":Ljava/security/KeyStore;
    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 138
    const-string v17, "X.509"

    invoke-static/range {v17 .. v17}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v8

    .line 140
    .local v8, "cf":Ljava/security/cert/CertificateFactory;
    invoke-static/range {p1 .. p1}, Lio/netty/handler/ssl/PemReader;->readCertificates(Ljava/io/File;)[Lio/netty/buffer/ByteBuf;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v7

    .line 142
    .local v7, "certs":[Lio/netty/buffer/ByteBuf;
    move-object v4, v7

    .local v4, "arr$":[Lio/netty/buffer/ByteBuf;
    :try_start_3
    array-length v12, v4

    .local v12, "len$":I
    const/4 v10, 0x0

    .local v10, "i$":I
    :goto_3
    if-ge v10, v12, :cond_8

    aget-object v5, v4, v10

    .line 143
    .local v5, "buf":Lio/netty/buffer/ByteBuf;
    new-instance v17, Lio/netty/buffer/ByteBufInputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Lio/netty/buffer/ByteBufInputStream;-><init>(Lio/netty/buffer/ByteBuf;)V

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    check-cast v6, Ljava/security/cert/X509Certificate;

    .line 144
    .local v6, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v6}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v15

    .line 145
    .local v15, "principal":Ljavax/security/auth/x500/X500Principal;
    const-string v17, "RFC2253"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v11, v0, v6}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 142
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 148
    .end local v5    # "buf":Lio/netty/buffer/ByteBuf;
    .end local v6    # "cert":Ljava/security/cert/X509Certificate;
    .end local v15    # "principal":Ljavax/security/auth/x500/X500Principal;
    :cond_8
    move-object v4, v7

    :try_start_4
    array-length v12, v4

    const/4 v10, 0x0

    :goto_4
    if-ge v10, v12, :cond_a

    aget-object v5, v4, v10

    .line 149
    .restart local v5    # "buf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 148
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .end local v5    # "buf":Lio/netty/buffer/ByteBuf;
    .end local v10    # "i$":I
    .end local v12    # "len$":I
    :catchall_0
    move-exception v17

    move-object v4, v7

    array-length v12, v4

    .restart local v12    # "len$":I
    const/4 v10, 0x0

    .restart local v10    # "i$":I
    :goto_5
    if-ge v10, v12, :cond_9

    aget-object v5, v4, v10

    .line 149
    .restart local v5    # "buf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v5}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 148
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .end local v5    # "buf":Lio/netty/buffer/ByteBuf;
    :cond_9
    throw v17

    .line 154
    :cond_a
    if-nez p2, :cond_b

    .line 155
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object p2

    .line 157
    :cond_b
    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 160
    const-string v17, "TLS"

    invoke-static/range {v17 .. v17}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lio/netty/handler/ssl/JdkSslClientContext;->ctx:Ljavax/net/ssl/SSLContext;

    .line 161
    move-object/from16 v0, p0

    iget-object v0, v0, Lio/netty/handler/ssl/JdkSslClientContext;->ctx:Ljavax/net/ssl/SSLContext;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {p2 .. p2}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v17 .. v20}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2
.end method

.method public constructor <init>(Ljavax/net/ssl/TrustManagerFactory;)V
    .locals 1
    .param p1, "trustManagerFactory"    # Ljavax/net/ssl/TrustManagerFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLException;
        }
    .end annotation

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lio/netty/handler/ssl/JdkSslClientContext;-><init>(Ljava/io/File;Ljavax/net/ssl/TrustManagerFactory;)V

    .line 70
    return-void
.end method


# virtual methods
.method public context()Ljavax/net/ssl/SSLContext;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lio/netty/handler/ssl/JdkSslClientContext;->ctx:Ljavax/net/ssl/SSLContext;

    return-object v0
.end method

.method public isClient()Z
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    return v0
.end method

.method public nextProtocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lio/netty/handler/ssl/JdkSslClientContext;->nextProtocols:Ljava/util/List;

    return-object v0
.end method
