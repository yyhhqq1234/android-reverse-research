.class public Lcom/netease/cloud/nos/android/ssl/SSLCustomSocketFactory;
.super Lorg/apache/http/conn/ssl/SSLSocketFactory;
.source "SSLCustomSocketFactory.java"


# static fields
.field private static final KEY_PASS:Ljava/lang/String; = ""

.field private static final LOGTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/netease/cloud/nos/android/ssl/SSLCustomSocketFactory;

    invoke-static {v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->makeLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 11
    sput-object v0, Lcom/netease/cloud/nos/android/ssl/SSLCustomSocketFactory;->LOGTAG:Ljava/lang/String;

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;)V
    .locals 0
    .param p1, "trustStore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lorg/apache/http/conn/ssl/SSLSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 18
    return-void
.end method

.method public static getSocketFactory(Landroid/content/Context;)Lorg/apache/http/conn/ssl/SSLSocketFactory;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 26
    .local v2, "ins":Ljava/io/InputStream;
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v4

    .line 25
    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 28
    .local v3, "trustStore":Ljava/security/KeyStore;
    :try_start_1
    const-string v4, ""

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 32
    new-instance v1, Lcom/netease/cloud/nos/android/ssl/SSLCustomSocketFactory;

    invoke-direct {v1, v3}, Lcom/netease/cloud/nos/android/ssl/SSLCustomSocketFactory;-><init>(Ljava/security/KeyStore;)V

    .line 37
    .end local v2    # "ins":Ljava/io/InputStream;
    .end local v3    # "trustStore":Ljava/security/KeyStore;
    :goto_0
    return-object v1

    .line 29
    .restart local v2    # "ins":Ljava/io/InputStream;
    .restart local v3    # "trustStore":Ljava/security/KeyStore;
    :catchall_0
    move-exception v4

    .line 30
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 31
    throw v4
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 34
    .end local v2    # "ins":Ljava/io/InputStream;
    .end local v3    # "trustStore":Ljava/security/KeyStore;
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v4, Lcom/netease/cloud/nos/android/ssl/SSLCustomSocketFactory;->LOGTAG:Ljava/lang/String;

    const-string v5, "ssl socket factory exception"

    invoke-static {v4, v5, v0}, Lcom/netease/cloud/nos/android/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    const/4 v1, 0x0

    goto :goto_0
.end method
