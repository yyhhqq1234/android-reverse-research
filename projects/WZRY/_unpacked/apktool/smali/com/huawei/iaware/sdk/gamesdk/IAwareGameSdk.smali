.class public Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;
.super Ljava/lang/Object;


# static fields
.field private static final MAX_STR_SIZE:I = 0x100


# instance fields
.field private gameCbk:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$GameCallBack;

.field private mIAwareGameSdkAdapter:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;

.field private mPhoneInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;->mPhoneInfo:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;->mIAwareGameSdkAdapter:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;

    new-instance v0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$1;

    invoke-direct {v0, p0}, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$1;-><init>(Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;)V

    iput-object v0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;->gameCbk:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$GameCallBack;

    return-void
.end method

.method static synthetic access$000(Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;->mPhoneInfo:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;->mPhoneInfo:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public getPhoneInfo()Ljava/lang/String;
    .locals 3

    const-string v0, "IAwareGameSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPhoneInfo, level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;->mPhoneInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;->mPhoneInfo:Ljava/lang/String;

    return-object v0
.end method

.method public registerGame(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;->gameCbk:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$GameCallBack;

    invoke-virtual {p0, p1, v0}, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;->registerGame(Ljava/lang/String;Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$GameCallBack;)Z

    move-result v0

    return v0
.end method

.method public registerGame(Ljava/lang/String;Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$GameCallBack;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "IAwareGameSdk"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerGame, packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;->mIAwareGameSdkAdapter:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;

    if-nez v0, :cond_2

    new-instance v0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;

    invoke-direct {v0}, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;-><init>()V

    iput-object v0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;->mIAwareGameSdkAdapter:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;

    iget-object v0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;->mIAwareGameSdkAdapter:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->registerGameCallback(Ljava/lang/String;Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$GameCallBack;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public updateGameAppInfo(Ljava/lang/String;)V
    .locals 3

    const-string v0, "IAwareGameSdk"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateGameAppInfo, json: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;->mIAwareGameSdkAdapter:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk;->mIAwareGameSdkAdapter:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;

    invoke-virtual {v0, p1}, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->reportData(Ljava/lang/String;)V

    goto :goto_0
.end method
