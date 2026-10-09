.class Lcom/tencent/msdk/sdkwrapper/push/XingeSdk$2;
.super Ljava/lang/Object;
.source "XingeSdk.java"

# interfaces
.implements Lcom/tencent/android/tpush/XGIOperateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->bindXGUser(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;

.field final synthetic val$platform:I


# direct methods
.method constructor <init>(Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk$2;->this$0:Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;

    iput p2, p0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk$2;->val$platform:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/Object;ILjava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "errCode"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register user failed, errCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    .line 176
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;I)V
    .locals 2
    .param p1, "token"    # Ljava/lang/Object;
    .param p2, "flag"    # I

    .prologue
    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register user success, token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 159
    iget v0, p0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk$2;->val$platform:I

    sget-object v1, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_Weixin:Lcom/tencent/msdk/consts/EPlatform;

    invoke-virtual {v1}, Lcom/tencent/msdk/consts/EPlatform;->val()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 161
    iget-object v0, p0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk$2;->this$0:Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;

    invoke-static {v0}, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->access$000(Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "QQ"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/XGPush4Msdk;->deleteTag(Landroid/content/Context;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk$2;->this$0:Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;

    invoke-static {v0}, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->access$000(Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "WX"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/XGPush4Msdk;->setTag(Landroid/content/Context;Ljava/lang/String;)V

    .line 170
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    iget v0, p0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk$2;->val$platform:I

    sget-object v1, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_QQ:Lcom/tencent/msdk/consts/EPlatform;

    invoke-virtual {v1}, Lcom/tencent/msdk/consts/EPlatform;->val()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 166
    iget-object v0, p0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk$2;->this$0:Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;

    invoke-static {v0}, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->access$000(Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "WX"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/XGPush4Msdk;->deleteTag(Landroid/content/Context;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk$2;->this$0:Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;

    invoke-static {v0}, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->access$000(Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "QQ"

    invoke-static {v0, v1}, Lcom/tencent/android/tpush/XGPush4Msdk;->setTag(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method
