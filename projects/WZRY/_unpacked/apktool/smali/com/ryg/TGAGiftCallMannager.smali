.class public Lcom/ryg/TGAGiftCallMannager;
.super Ljava/lang/Object;
.source "TGAGiftCallMannager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ryg/TGAGiftCallMannager$Plugin2Host;,
        Lcom/ryg/TGAGiftCallMannager$Host2Plugin;
    }
.end annotation


# static fields
.field private static volatile manager:Lcom/ryg/TGAGiftCallMannager;


# instance fields
.field private host2Plugin:Lcom/ryg/TGAGiftCallMannager$Host2Plugin;

.field private plugin2Host:Lcom/ryg/TGAGiftCallMannager$Plugin2Host;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instance()Lcom/ryg/TGAGiftCallMannager;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/ryg/TGAGiftCallMannager;->manager:Lcom/ryg/TGAGiftCallMannager;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/ryg/TGAGiftCallMannager;

    invoke-direct {v0}, Lcom/ryg/TGAGiftCallMannager;-><init>()V

    sput-object v0, Lcom/ryg/TGAGiftCallMannager;->manager:Lcom/ryg/TGAGiftCallMannager;

    .line 17
    :cond_0
    sget-object v0, Lcom/ryg/TGAGiftCallMannager;->manager:Lcom/ryg/TGAGiftCallMannager;

    return-object v0
.end method


# virtual methods
.method public getHost2PluginCB()Lcom/ryg/TGAGiftCallMannager$Host2Plugin;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ryg/TGAGiftCallMannager;->host2Plugin:Lcom/ryg/TGAGiftCallMannager$Host2Plugin;

    return-object v0
.end method

.method public getPlugin2HostCB()Lcom/ryg/TGAGiftCallMannager$Plugin2Host;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ryg/TGAGiftCallMannager;->plugin2Host:Lcom/ryg/TGAGiftCallMannager$Plugin2Host;

    return-object v0
.end method

.method public setHost2PluginCB(Lcom/ryg/TGAGiftCallMannager$Host2Plugin;)V
    .locals 0
    .param p1, "callBack"    # Lcom/ryg/TGAGiftCallMannager$Host2Plugin;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/ryg/TGAGiftCallMannager;->host2Plugin:Lcom/ryg/TGAGiftCallMannager$Host2Plugin;

    .line 22
    return-void
.end method

.method public setPlugin2HostCB(Lcom/ryg/TGAGiftCallMannager$Plugin2Host;)V
    .locals 0
    .param p1, "callback"    # Lcom/ryg/TGAGiftCallMannager$Plugin2Host;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/ryg/TGAGiftCallMannager;->plugin2Host:Lcom/ryg/TGAGiftCallMannager$Plugin2Host;

    .line 30
    return-void
.end method
