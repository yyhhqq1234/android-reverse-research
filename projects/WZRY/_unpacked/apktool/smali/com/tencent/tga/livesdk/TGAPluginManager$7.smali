.class Lcom/tencent/tga/livesdk/TGAPluginManager$7;
.super Ljava/lang/Object;
.source "TGAPluginManager.java"

# interfaces
.implements Lcom/loopj/android/tgahttp/httputil/HttpBaseProxy$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tga/livesdk/TGAPluginManager;->reqPopWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;


# direct methods
.method constructor <init>(Lcom/tencent/tga/livesdk/TGAPluginManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/tga/livesdk/TGAPluginManager;

    .prologue
    .line 938
    iput-object p1, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$7;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 954
    const-string v0, "TGAPluginManager"

    const-string/jumbo v1, "\u8bf7\u6c42\u5931\u8d25popwindowParam.errorCode == "

    invoke-static {v0, v1}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 955
    return-void
.end method

.method public onSuc(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 941
    iget-object v0, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$7;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    invoke-static {v0}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$2900(Lcom/tencent/tga/livesdk/TGAPluginManager;)Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;

    move-result-object v0

    iget v0, v0, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->result:I

    if-nez v0, :cond_1

    .line 942
    iget-object v0, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$7;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    invoke-static {v0}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$2900(Lcom/tencent/tga/livesdk/TGAPluginManager;)Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;

    move-result-object v0

    iget v0, v0, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->popup_window_entry:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 943
    const-string v0, "TGAPluginManager"

    const-string/jumbo v1, "\u8bf7\u6c42\u5f39\u7a97\u7535\u89c6\u53f0\u4fe1\u606f\u4e2d\u5f00\u5173\u6253\u5f00"

    invoke-static {v0, v1}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 950
    :goto_0
    return-void

    .line 945
    :cond_0
    const-string v0, "TGAPluginManager"

    const-string/jumbo v1, "\u8bf7\u6c42\u5f39\u7a97\u7535\u89c6\u53f0\u4fe1\u606f\u4e2d\u5f00\u5173\u5173\u95ed"

    invoke-static {v0, v1}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 948
    :cond_1
    const-string v0, "TGAPluginManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8bf7\u6c42\u5931\u8d25popwindowParam.result == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/tga/livesdk/TGAPluginManager$7;->this$0:Lcom/tencent/tga/livesdk/TGAPluginManager;

    invoke-static {v2}, Lcom/tencent/tga/livesdk/TGAPluginManager;->access$2900(Lcom/tencent/tga/livesdk/TGAPluginManager;)Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;

    move-result-object v2

    iget v2, v2, Lcom/tencent/tga/livesdk/update/proxy/PopWindowProxy$Param;->result:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ryg/utils/LOG;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
