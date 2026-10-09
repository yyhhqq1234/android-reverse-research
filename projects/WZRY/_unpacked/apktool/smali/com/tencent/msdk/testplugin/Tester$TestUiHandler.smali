.class Lcom/tencent/msdk/testplugin/Tester$TestUiHandler;
.super Landroid/os/Handler;
.source "Tester.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/msdk/testplugin/Tester;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TestUiHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/testplugin/Tester;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/testplugin/Tester;)V
    .locals 2
    .param p1, "this$0"    # Lcom/tencent/msdk/testplugin/Tester;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/tencent/msdk/testplugin/Tester$TestUiHandler;->this$0:Lcom/tencent/msdk/testplugin/Tester;

    .line 263
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Lcom/tencent/msdk/testplugin/Tester$TestUiHandler$1;

    invoke-direct {v1, p1}, Lcom/tencent/msdk/testplugin/Tester$TestUiHandler$1;-><init>(Lcom/tencent/msdk/testplugin/Tester;)V

    invoke-direct {p0, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    .line 290
    return-void
.end method
