.class Lcom/tencent/qqgamemi/SDKCommander$QmiCommand;
.super Ljava/lang/Object;
.source "SDKCommander.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qqgamemi/SDKCommander;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QmiCommand"
.end annotation


# instance fields
.field args:Ljava/lang/Object;

.field cmd:Ljava/lang/String;

.field readCommand:Z

.field readDataCallback:Lcom/tencent/component/plugin/PluginCommander$ReadDataCallback;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/Object;

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/tencent/qqgamemi/SDKCommander$QmiCommand;->cmd:Ljava/lang/String;

    .line 139
    iput-object p2, p0, Lcom/tencent/qqgamemi/SDKCommander$QmiCommand;->args:Ljava/lang/Object;

    .line 140
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lcom/tencent/component/plugin/PluginCommander$ReadDataCallback;)V
    .locals 1
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "args"    # Ljava/lang/Object;
    .param p3, "callback"    # Lcom/tencent/component/plugin/PluginCommander$ReadDataCallback;

    .prologue
    .line 143
    invoke-direct {p0, p1, p2}, Lcom/tencent/qqgamemi/SDKCommander$QmiCommand;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    iput-object p3, p0, Lcom/tencent/qqgamemi/SDKCommander$QmiCommand;->readDataCallback:Lcom/tencent/component/plugin/PluginCommander$ReadDataCallback;

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qqgamemi/SDKCommander$QmiCommand;->readCommand:Z

    .line 146
    return-void
.end method
