.class Lcom/tencent/msdk/testplugin/Tester$1$1;
.super Ljava/lang/Object;
.source "Tester.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/testplugin/Tester$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/tencent/msdk/testplugin/Tester$1;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/testplugin/Tester$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/tencent/msdk/testplugin/Tester$1;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/tencent/msdk/testplugin/Tester$1$1;->this$1:Lcom/tencent/msdk/testplugin/Tester$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 176
    const-string v0, ""

    .line 177
    .local v0, "apkFolder":Ljava/lang/String;
    invoke-static {}, Lcom/tencent/msdk/api/refactor/Router;->getInstance()Lcom/tencent/msdk/api/refactor/Router;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/msdk/api/refactor/Router;->runCppCode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/tencent/msdk/testplugin/Tester$1$1;->this$1:Lcom/tencent/msdk/testplugin/Tester$1;

    iget-object v2, v2, Lcom/tencent/msdk/testplugin/Tester$1;->this$0:Lcom/tencent/msdk/testplugin/Tester;

    invoke-static {v2}, Lcom/tencent/msdk/testplugin/Tester;->access$000(Lcom/tencent/msdk/testplugin/Tester;)Ljava/lang/String;

    move-result-object v0

    .line 182
    :goto_0
    iget-object v2, p0, Lcom/tencent/msdk/testplugin/Tester$1$1;->this$1:Lcom/tencent/msdk/testplugin/Tester$1;

    iget-object v2, v2, Lcom/tencent/msdk/testplugin/Tester$1;->this$0:Lcom/tencent/msdk/testplugin/Tester;

    new-instance v3, Lcom/tencent/msdk/testplugin/PluginContext;

    iget-object v4, p0, Lcom/tencent/msdk/testplugin/Tester$1$1;->this$1:Lcom/tencent/msdk/testplugin/Tester$1;

    iget-object v4, v4, Lcom/tencent/msdk/testplugin/Tester$1;->this$0:Lcom/tencent/msdk/testplugin/Tester;

    invoke-static {v4}, Lcom/tencent/msdk/testplugin/Tester;->access$300(Lcom/tencent/msdk/testplugin/Tester;)Landroid/app/Activity;

    move-result-object v4

    const-string v5, "com.example.test.wegame.TestMainPanel"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "MSDKTest.apk"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6}, Lcom/tencent/msdk/testplugin/PluginContext;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/tencent/msdk/testplugin/Tester;->access$202(Lcom/tencent/msdk/testplugin/Tester;Lcom/tencent/msdk/testplugin/PluginContext;)Lcom/tencent/msdk/testplugin/PluginContext;

    .line 185
    iget-object v2, p0, Lcom/tencent/msdk/testplugin/Tester$1$1;->this$1:Lcom/tencent/msdk/testplugin/Tester$1;

    iget-object v2, v2, Lcom/tencent/msdk/testplugin/Tester$1;->this$0:Lcom/tencent/msdk/testplugin/Tester;

    invoke-static {v2}, Lcom/tencent/msdk/testplugin/Tester;->access$400(Lcom/tencent/msdk/testplugin/Tester;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 186
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/tencent/msdk/testplugin/Tester$1$1;->this$1:Lcom/tencent/msdk/testplugin/Tester$1;

    iget-object v2, v2, Lcom/tencent/msdk/testplugin/Tester$1;->this$0:Lcom/tencent/msdk/testplugin/Tester;

    iget-object v3, p0, Lcom/tencent/msdk/testplugin/Tester$1$1;->this$1:Lcom/tencent/msdk/testplugin/Tester$1;

    iget-object v3, v3, Lcom/tencent/msdk/testplugin/Tester$1;->this$0:Lcom/tencent/msdk/testplugin/Tester;

    invoke-static {v3, v0}, Lcom/tencent/msdk/testplugin/Tester;->access$600(Lcom/tencent/msdk/testplugin/Tester;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/tencent/msdk/testplugin/Tester;->access$502(Lcom/tencent/msdk/testplugin/Tester;Ljava/lang/Class;)Ljava/lang/Class;

    .line 187
    iget-object v2, p0, Lcom/tencent/msdk/testplugin/Tester$1$1;->this$1:Lcom/tencent/msdk/testplugin/Tester$1;

    iget-object v2, v2, Lcom/tencent/msdk/testplugin/Tester$1;->this$0:Lcom/tencent/msdk/testplugin/Tester;

    invoke-static {v2}, Lcom/tencent/msdk/testplugin/Tester;->access$400(Lcom/tencent/msdk/testplugin/Tester;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 189
    return-void

    .line 180
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    iget-object v2, p0, Lcom/tencent/msdk/testplugin/Tester$1$1;->this$1:Lcom/tencent/msdk/testplugin/Tester$1;

    iget-object v2, v2, Lcom/tencent/msdk/testplugin/Tester$1;->this$0:Lcom/tencent/msdk/testplugin/Tester;

    invoke-static {v2}, Lcom/tencent/msdk/testplugin/Tester;->access$100(Lcom/tencent/msdk/testplugin/Tester;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
