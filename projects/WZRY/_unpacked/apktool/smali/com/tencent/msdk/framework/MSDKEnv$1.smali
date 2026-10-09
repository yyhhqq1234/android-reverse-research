.class Lcom/tencent/msdk/framework/MSDKEnv$1;
.super Ljava/lang/Object;
.source "MSDKEnv.java"

# interfaces
.implements Lcom/tencent/msdk/framework/tools/MSDKBeaconUtil$MatIdCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/msdk/framework/MSDKEnv;->getQimei()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/msdk/framework/MSDKEnv;


# direct methods
.method constructor <init>(Lcom/tencent/msdk/framework/MSDKEnv;)V
    .locals 0
    .param p1, "this$0"    # Lcom/tencent/msdk/framework/MSDKEnv;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/tencent/msdk/framework/MSDKEnv$1;->this$0:Lcom/tencent/msdk/framework/MSDKEnv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/String;)V
    .locals 2
    .param p1, "qimei"    # Ljava/lang/String;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/tencent/msdk/framework/MSDKEnv$1;->this$0:Lcom/tencent/msdk/framework/MSDKEnv;

    iput-object p1, v0, Lcom/tencent/msdk/framework/MSDKEnv;->mQimei:Ljava/lang/String;

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get QIMEI:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/msdk/framework/MSDKEnv$1;->this$0:Lcom/tencent/msdk/framework/MSDKEnv;

    iget-object v1, v1, Lcom/tencent/msdk/framework/MSDKEnv;->mQimei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->i(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public onTimeout()V
    .locals 2

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get QIMEI failed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/msdk/framework/MSDKEnv$1;->this$0:Lcom/tencent/msdk/framework/MSDKEnv;

    iget-object v1, v1, Lcom/tencent/msdk/framework/MSDKEnv;->mQimei:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/msdk/framework/mlog/MLog;->w(Ljava/lang/String;)V

    .line 139
    return-void
.end method
