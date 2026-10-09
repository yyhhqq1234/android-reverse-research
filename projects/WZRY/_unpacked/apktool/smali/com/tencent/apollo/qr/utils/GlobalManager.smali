.class public Lcom/tencent/apollo/qr/utils/GlobalManager;
.super Ljava/lang/Object;


# static fields
.field public static final TAG:Ljava/lang/String; = "GlobalManager"

.field private static mBackIamgeName:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mIamgeName:Ljava/lang/String;

.field public static mOrietation:I

.field private static mScanText1:Ljava/lang/String;

.field private static mScanText2:Ljava/lang/String;

.field private static mScanTextColor1:Ljava/lang/String;

.field private static mScanTextColor2:Ljava/lang/String;

.field private static mSelf:Lcom/tencent/apollo/qr/utils/GlobalManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput v0, Lcom/tencent/apollo/qr/utils/GlobalManager;->mOrietation:I

    sput-object v1, Lcom/tencent/apollo/qr/utils/GlobalManager;->mSelf:Lcom/tencent/apollo/qr/utils/GlobalManager;

    sput-object v1, Lcom/tencent/apollo/qr/utils/GlobalManager;->mContext:Landroid/content/Context;

    const-string v0, "com_tencent_apolloqr_background"

    sput-object v0, Lcom/tencent/apollo/qr/utils/GlobalManager;->mIamgeName:Ljava/lang/String;

    const-string v0, "com_tencent_apolloqr_closebtn"

    sput-object v0, Lcom/tencent/apollo/qr/utils/GlobalManager;->mBackIamgeName:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/tencent/apollo/qr/utils/GlobalManager;->mScanText1:Ljava/lang/String;

    sput-object v1, Lcom/tencent/apollo/qr/utils/GlobalManager;->mScanText2:Ljava/lang/String;

    sput-object v1, Lcom/tencent/apollo/qr/utils/GlobalManager;->mScanTextColor1:Ljava/lang/String;

    sput-object v1, Lcom/tencent/apollo/qr/utils/GlobalManager;->mScanTextColor2:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/tencent/apollo/qr/utils/GlobalManager;->mSelf:Lcom/tencent/apollo/qr/utils/GlobalManager;

    return-void
.end method

.method public static self()Lcom/tencent/apollo/qr/utils/GlobalManager;
    .locals 1

    sget-object v0, Lcom/tencent/apollo/qr/utils/GlobalManager;->mSelf:Lcom/tencent/apollo/qr/utils/GlobalManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/tencent/apollo/qr/utils/GlobalManager;

    invoke-direct {v0}, Lcom/tencent/apollo/qr/utils/GlobalManager;-><init>()V

    sput-object v0, Lcom/tencent/apollo/qr/utils/GlobalManager;->mSelf:Lcom/tencent/apollo/qr/utils/GlobalManager;

    :cond_0
    sget-object v0, Lcom/tencent/apollo/qr/utils/GlobalManager;->mSelf:Lcom/tencent/apollo/qr/utils/GlobalManager;

    return-object v0
.end method


# virtual methods
.method public getBackImageName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/apollo/qr/utils/GlobalManager;->mBackIamgeName:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/tencent/apollo/qr/utils/GlobalManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getImageName()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/apollo/qr/utils/GlobalManager;->mIamgeName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrientation()I
    .locals 1

    sget v0, Lcom/tencent/apollo/qr/utils/GlobalManager;->mOrietation:I

    return v0
.end method

.method public getScanText1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/apollo/qr/utils/GlobalManager;->mScanText1:Ljava/lang/String;

    return-object v0
.end method

.method public getScanText2()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/apollo/qr/utils/GlobalManager;->mScanText2:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/apollo/qr/utils/GlobalManager;->mScanTextColor1:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor2()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/tencent/apollo/qr/utils/GlobalManager;->mScanTextColor2:Ljava/lang/String;

    return-object v0
.end method

.method public setBackImageName(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/tencent/apollo/qr/utils/GlobalManager;->mBackIamgeName:Ljava/lang/String;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/tencent/apollo/qr/utils/GlobalManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setImageName(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/tencent/apollo/qr/utils/GlobalManager;->mIamgeName:Ljava/lang/String;

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    sput p1, Lcom/tencent/apollo/qr/utils/GlobalManager;->mOrietation:I

    return-void
.end method

.method public setScanText1(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/tencent/apollo/qr/utils/GlobalManager;->mScanText1:Ljava/lang/String;

    return-void
.end method

.method public setScanText2(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/tencent/apollo/qr/utils/GlobalManager;->mScanText2:Ljava/lang/String;

    return-void
.end method

.method public setTextColor1(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/tencent/apollo/qr/utils/GlobalManager;->mScanTextColor1:Ljava/lang/String;

    return-void
.end method

.method public setTextColor2(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/tencent/apollo/qr/utils/GlobalManager;->mScanTextColor2:Ljava/lang/String;

    return-void
.end method
