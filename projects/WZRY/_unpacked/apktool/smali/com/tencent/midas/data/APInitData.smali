.class public Lcom/tencent/midas/data/APInitData;
.super Ljava/lang/Object;
.source "APInitData.java"


# static fields
.field private static gInstance:Lcom/tencent/midas/data/APInitData;

.field private static initdataCount:I


# instance fields
.field private initGUID:Ljava/lang/String;

.field private initInterfaceTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/midas/data/APInitData;->gInstance:Lcom/tencent/midas/data/APInitData;

    .line 15
    const/4 v0, 0x0

    sput v0, Lcom/tencent/midas/data/APInitData;->initdataCount:I

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-wide v2, p0, Lcom/tencent/midas/data/APInitData;->initInterfaceTime:J

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/data/APInitData;->initGUID:Ljava/lang/String;

    .line 18
    const/4 v0, 0x0

    sput v0, Lcom/tencent/midas/data/APInitData;->initdataCount:I

    .line 19
    iput-wide v2, p0, Lcom/tencent/midas/data/APInitData;->initInterfaceTime:J

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/midas/data/APInitData;->initGUID:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public static getInitdataCount()I
    .locals 2

    .prologue
    .line 51
    sget v0, Lcom/tencent/midas/data/APInitData;->initdataCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/tencent/midas/data/APInitData;->initdataCount:I

    return v0
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/tencent/midas/data/APInitData;

    invoke-direct {v0}, Lcom/tencent/midas/data/APInitData;-><init>()V

    sput-object v0, Lcom/tencent/midas/data/APInitData;->gInstance:Lcom/tencent/midas/data/APInitData;

    .line 32
    return-void
.end method

.method public static setInitdataCount(I)V
    .locals 0
    .param p0, "initdataCount"    # I

    .prologue
    .line 55
    sput p0, Lcom/tencent/midas/data/APInitData;->initdataCount:I

    .line 56
    return-void
.end method

.method public static singleton()Lcom/tencent/midas/data/APInitData;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/tencent/midas/data/APInitData;->gInstance:Lcom/tencent/midas/data/APInitData;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lcom/tencent/midas/data/APInitData;

    invoke-direct {v0}, Lcom/tencent/midas/data/APInitData;-><init>()V

    sput-object v0, Lcom/tencent/midas/data/APInitData;->gInstance:Lcom/tencent/midas/data/APInitData;

    .line 27
    :cond_0
    sget-object v0, Lcom/tencent/midas/data/APInitData;->gInstance:Lcom/tencent/midas/data/APInitData;

    return-object v0
.end method


# virtual methods
.method public getInitGUID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/tencent/midas/data/APInitData;->initGUID:Ljava/lang/String;

    return-object v0
.end method

.method public getInitInterfaceTime()J
    .locals 2

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/tencent/midas/data/APInitData;->initInterfaceTime:J

    return-wide v0
.end method

.method public setInitGUID(Ljava/lang/String;)V
    .locals 0
    .param p1, "initGUID"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/tencent/midas/data/APInitData;->initGUID:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setInitInterfaceTime(J)V
    .locals 1
    .param p1, "initInterfaceTime"    # J

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/tencent/midas/data/APInitData;->initInterfaceTime:J

    .line 40
    return-void
.end method
