.class Lcom/tencent/msdk/sdkwrapper/push/XingeSdk$1;
.super Ljava/lang/Object;
.source "XingeSdk.java"

# interfaces
.implements Lcom/tencent/android/tpush/XGIOperateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;->registerXGDeviceWhenInit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;

    .prologue
    .line 134
    iput-object p1, p0, Lcom/tencent/msdk/sdkwrapper/push/XingeSdk$1;->this$0:Lcom/tencent/msdk/sdkwrapper/push/XingeSdk;

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
    .line 144
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register device failed, errCode:"

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

    .line 145
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;I)V
    .locals 2
    .param p1, "token"    # Ljava/lang/Object;
    .param p2, "flag"    # I

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "register device success, token:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 140
    return-void
.end method
