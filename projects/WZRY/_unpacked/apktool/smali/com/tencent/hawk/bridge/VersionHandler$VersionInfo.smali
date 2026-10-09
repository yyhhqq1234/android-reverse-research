.class Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;
.super Ljava/lang/Object;
.source "VersionHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/hawk/bridge/VersionHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "VersionInfo"
.end annotation


# instance fields
.field private mVersionCode:I

.field private mVersionName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "buildstr"    # Ljava/lang/String;
    .param p2, "buildint"    # I

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput p2, p0, Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;->mVersionCode:I

    .line 19
    iput-object p1, p0, Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;->mVersionName:Ljava/lang/String;

    .line 20
    return-void
.end method

.method static synthetic access$0(Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;->mVersionName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;)I
    .locals 1

    .prologue
    .line 14
    iget v0, p0, Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;->mVersionCode:I

    return v0
.end method


# virtual methods
.method public compareTo(Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;)Z
    .locals 2
    .param p1, "vi"    # Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;

    .prologue
    .line 23
    iget v0, p1, Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;->mVersionCode:I

    iget v1, p0, Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;->mVersionCode:I

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;->mVersionName:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/hawk/bridge/VersionHandler$VersionInfo;->mVersionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    const/4 v0, 0x1

    .line 26
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
