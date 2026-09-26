.class public Lcom/netease/ntunisdk/ApplicationNetease;
.super Lcom/netease/ntunisdk/base/SdkApplication;
.source "ApplicationNetease.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "UniSDK netease"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/netease/ntunisdk/base/SdkApplication;-><init>(Landroid/content/Context;)V

    .line 15
    return-void
.end method


# virtual methods
.method public getChannel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    const-string v0, "netease"

    return-object v0
.end method

.method public handleOnApplicationAttachBaseContext(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 24
    const-string v0, "UniSDK netease"

    const-string v1, "handleOnApplicationAttachBaseContext..."

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {p1}, Lcom/netease/mpay/MpayApp;->attachBaseContext(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public handleOnApplicationOnCreate(Landroid/content/Context;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 30
    const-string v0, "UniSDK netease"

    const-string v1, "handleOnApplicationOnCreate..."

    invoke-static {v0, v1}, Lcom/netease/ntunisdk/base/UniSdkUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-static {p1}, Lcom/netease/mpay/MpayApp;->onCreate(Landroid/content/Context;)V

    .line 32
    return-void
.end method
