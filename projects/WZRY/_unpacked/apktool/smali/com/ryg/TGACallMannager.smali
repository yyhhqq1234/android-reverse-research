.class public Lcom/ryg/TGACallMannager;
.super Ljava/lang/Object;
.source "TGACallMannager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ryg/TGACallMannager$Plugin2Host;,
        Lcom/ryg/TGACallMannager$Host2Plugin;
    }
.end annotation


# static fields
.field private static volatile manager:Lcom/ryg/TGACallMannager;


# instance fields
.field private host2Plugin:Lcom/ryg/TGACallMannager$Host2Plugin;

.field private plugin2Host:Lcom/ryg/TGACallMannager$Plugin2Host;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static instance()Lcom/ryg/TGACallMannager;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/ryg/TGACallMannager;->manager:Lcom/ryg/TGACallMannager;

    if-nez v0, :cond_0

    .line 15
    new-instance v0, Lcom/ryg/TGACallMannager;

    invoke-direct {v0}, Lcom/ryg/TGACallMannager;-><init>()V

    sput-object v0, Lcom/ryg/TGACallMannager;->manager:Lcom/ryg/TGACallMannager;

    .line 17
    :cond_0
    sget-object v0, Lcom/ryg/TGACallMannager;->manager:Lcom/ryg/TGACallMannager;

    return-object v0
.end method


# virtual methods
.method public getHost2PluginCB()Lcom/ryg/TGACallMannager$Host2Plugin;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/ryg/TGACallMannager;->host2Plugin:Lcom/ryg/TGACallMannager$Host2Plugin;

    return-object v0
.end method

.method public getPlugin2HostCB()Lcom/ryg/TGACallMannager$Plugin2Host;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ryg/TGACallMannager;->plugin2Host:Lcom/ryg/TGACallMannager$Plugin2Host;

    return-object v0
.end method

.method public setHost2PluginCB(Lcom/ryg/TGACallMannager$Host2Plugin;)V
    .locals 0
    .param p1, "callBack"    # Lcom/ryg/TGACallMannager$Host2Plugin;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/ryg/TGACallMannager;->host2Plugin:Lcom/ryg/TGACallMannager$Host2Plugin;

    .line 22
    return-void
.end method

.method public setPlugin2HostCB(Lcom/ryg/TGACallMannager$Plugin2Host;)V
    .locals 0
    .param p1, "callback"    # Lcom/ryg/TGACallMannager$Plugin2Host;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/ryg/TGACallMannager;->plugin2Host:Lcom/ryg/TGACallMannager$Plugin2Host;

    .line 30
    return-void
.end method
