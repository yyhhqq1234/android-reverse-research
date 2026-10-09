.class Lcom/tencent/tmgp/sgamece/SGameActivity$3;
.super Ljava/lang/Object;
.source "SGameActivity.java"

# interfaces
.implements Lcom/tencent/android/tpush/XGIOperateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/tmgp/sgamece/SGameActivity;->RegisterXGPush(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tencent/tmgp/sgamece/SGameActivity;


# direct methods
.method constructor <init>(Lcom/tencent/tmgp/sgamece/SGameActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/tencent/tmgp/sgamece/SGameActivity$3;->this$0:Lcom/tencent/tmgp/sgamece/SGameActivity;

    .line 316
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Ljava/lang/Object;ILjava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "errCode"    # I
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 325
    const-string v0, "TPush"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "+++ register push fail. token:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",msg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 325
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-void
.end method

.method public onSuccess(Ljava/lang/Object;I)V
    .locals 3
    .param p1, "data"    # Ljava/lang/Object;
    .param p2, "flag"    # I

    .prologue
    .line 319
    const-string v0, "TPush"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " +++ register push sucess. token"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 319
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    return-void
.end method
