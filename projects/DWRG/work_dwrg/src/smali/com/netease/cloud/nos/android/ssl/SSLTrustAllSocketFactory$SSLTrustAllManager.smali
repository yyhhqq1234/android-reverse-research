.class public Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory$SSLTrustAllManager;
.super Ljava/lang/Object;
.source "SSLTrustAllSocketFactory.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SSLTrustAllManager"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory;


# direct methods
.method public constructor <init>(Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory$SSLTrustAllManager;->this$0:Lcom/netease/cloud/nos/android/ssl/SSLTrustAllSocketFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # [Ljava/security/cert/X509Certificate;
    .param p2, "arg1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 28
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "arg0"    # [Ljava/security/cert/X509Certificate;
    .param p2, "arg1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 33
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    return-object v0
.end method
