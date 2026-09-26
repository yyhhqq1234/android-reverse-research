.class Lcom/netease/androidcrashhandler/AndroidCrashHandler$1;
.super Ljava/lang/Object;
.source "AndroidCrashHandler.java"

# interfaces
.implements Lcom/netease/androidcrashhandler/MyConfigCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/androidcrashhandler/AndroidCrashHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field fileNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/netease/androidcrashhandler/AndroidCrashHandler;


# direct methods
.method constructor <init>(Lcom/netease/androidcrashhandler/AndroidCrashHandler;)V
    .locals 1

    .prologue
    .line 1
    iput-object p1, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler$1;->this$0:Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    .line 774
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 776
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler$1;->fileNames:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public configCallBack()V
    .locals 2

    .prologue
    .line 781
    const-string v0, "trace"

    const-string v1, "--------------------"

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    const-string v0, "trace"

    const-string v1, "game set config info"

    invoke-static {v0, v1}, Lcom/netease/androidcrashhandler/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    iget-object v0, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler$1;->this$0:Lcom/netease/androidcrashhandler/AndroidCrashHandler;

    invoke-virtual {v0}, Lcom/netease/androidcrashhandler/AndroidCrashHandler;->setCfgInfoToJni()V

    .line 784
    return-void
.end method

.method public setFileCallBack(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 789
    iget-object v0, p0, Lcom/netease/androidcrashhandler/AndroidCrashHandler$1;->fileNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 790
    return-void
.end method
