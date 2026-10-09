.class Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$GameCallBack;


# instance fields
.field final synthetic this$0:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;


# direct methods
.method constructor <init>(Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;)V
    .locals 0

    iput-object p1, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$1;->this$0:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPhoneInfo(Ljava/lang/String;)V
    .locals 3

    const-string v0, "IAwareGameSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and mPhoneInfo is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$1;->this$0:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;

    invoke-static {v2}, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;->access$000(Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$1;->this$0:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;

    invoke-static {v0, p1}, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;->access$002(Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
