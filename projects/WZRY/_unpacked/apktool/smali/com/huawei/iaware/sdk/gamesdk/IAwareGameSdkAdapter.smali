.class public Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;
.super Ljava/lang/Object;


# static fields
.field private static final GAME_SDK_DATA_EVENT_ID:I = 0xbbd

.field private static INTERFACE_ID_REGISTER_GAME_CALLBACK:I = 0x0

.field private static INTERFACE_ID_REPORT_DATA:I = 0x0

.field private static final mDataFromSDK:I = 0x1


# instance fields
.field private isRegistedSuccess:Z

.field private mGameCbk:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$GameCallBack;

.field private mPackageName:Ljava/lang/String;

.field private mSdkCbk:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter$SDKCallback;

.field private myPid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->INTERFACE_ID_REPORT_DATA:I

    const/4 v0, 0x4

    sput v0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->INTERFACE_ID_REGISTER_GAME_CALLBACK:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->mGameCbk:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$GameCallBack;

    iput-object v0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->mSdkCbk:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter$SDKCallback;

    const-string v0, ""

    iput-object v0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->mPackageName:Ljava/lang/String;

    iput v1, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->myPid:I

    iput-boolean v1, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->isRegistedSuccess:Z

    return-void
.end method

.method static synthetic access$000(Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->isRegistedSuccess:Z

    return v0
.end method

.method static synthetic access$100(Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;)Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$GameCallBack;
    .locals 1

    iget-object v0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->mGameCbk:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$GameCallBack;

    return-object v0
.end method

.method private registerSdkCallback(Ljava/lang/String;Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter$SDKCallback;)Z
    .locals 3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    sget v2, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->INTERFACE_ID_REGISTER_GAME_CALLBACK:I

    invoke-static {v2, v0, v1}, Landroid/rms/iaware/IAwareSdkCore;->handleEvent(ILandroid/os/Parcel;Landroid/os/Parcel;)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public registerGameCallback(Ljava/lang/String;Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$GameCallBack;)Z
    .locals 2

    const-string v0, "IAwareGameSdkAdapter"

    const-string v1, "registerGameCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p2, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->mGameCbk:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$GameCallBack;

    iput-object p1, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->mPackageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    iput v0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->myPid:I

    iget-object v0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->mGameCbk:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdk$GameCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->mSdkCbk:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter$SDKCallback;

    if-nez v0, :cond_0

    new-instance v0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter$SDKCallback;

    invoke-direct {v0, p0}, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter$SDKCallback;-><init>(Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;)V

    iput-object v0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->mSdkCbk:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter$SDKCallback;

    const-string v0, "IAwareGameSdkAdapter"

    const-string v1, "new SDKCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->mSdkCbk:Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter$SDKCallback;

    invoke-direct {p0, p1, v0}, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->registerSdkCallback(Ljava/lang/String;Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter$SDKCallback;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->isRegistedSuccess:Z

    :cond_0
    iget-boolean v0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->isRegistedSuccess:Z

    return v0
.end method

.method public reportData(Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0xbbd

    const-string v0, "IAwareGameSdkAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reportData package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isRegistedSuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->isRegistedSuccess:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->isRegistedSuccess:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->myPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    sget v1, Lcom/huawei/iaware/sdk/gamesdk/IAwareGameSdkAdapter;->INTERFACE_ID_REPORT_DATA:I

    const/4 v2, 0x0

    invoke-static {v1, v0, v2, v4}, Landroid/rms/iaware/IAwareSdkCore;->handleEvent(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0
.end method
