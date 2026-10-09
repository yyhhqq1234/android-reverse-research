.class public Lcom/tencent/component/plugin/PluginCommander;
.super Ljava/lang/Object;
.source "PluginCommander.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/plugin/PluginCommander$ReadDataCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public read(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Lcom/tencent/component/plugin/PluginCommander$ReadDataCallback;)Ljava/lang/Object;
    .locals 0
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/Object;
    .param p3, "defaultData"    # Ljava/lang/Object;
    .param p4, "callback"    # Lcom/tencent/component/plugin/PluginCommander$ReadDataCallback;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation

    .prologue
    .line 26
    return-object p3
.end method

.method public write(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/Object;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation

    .prologue
    .line 37
    return-void
.end method
