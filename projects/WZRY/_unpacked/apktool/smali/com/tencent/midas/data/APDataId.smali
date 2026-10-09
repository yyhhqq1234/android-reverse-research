.class public Lcom/tencent/midas/data/APDataId;
.super Ljava/lang/Object;
.source "APDataId.java"


# static fields
.field private static gInstance:Lcom/tencent/midas/data/APDataId;

.field private static paydataCount:I


# instance fields
.field private final DATA_DISCOUNT_INIT:Ljava/lang/String;

.field private final DATA_DISCOUNT_PAY:Ljava/lang/String;

.field private final TENCENTUNIPAY_DATAID_FLAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/midas/data/APDataId;->gInstance:Lcom/tencent/midas/data/APDataId;

    .line 17
    const/4 v0, 0x0

    sput v0, Lcom/tencent/midas/data/APDataId;->paydataCount:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "TencentUnipay"

    iput-object v0, p0, Lcom/tencent/midas/data/APDataId;->TENCENTUNIPAY_DATAID_FLAG:Ljava/lang/String;

    .line 20
    const-string v0, "initdataCount"

    iput-object v0, p0, Lcom/tencent/midas/data/APDataId;->DATA_DISCOUNT_INIT:Ljava/lang/String;

    .line 21
    const-string v0, "dataCount"

    iput-object v0, p0, Lcom/tencent/midas/data/APDataId;->DATA_DISCOUNT_PAY:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static getDataId()I
    .locals 2

    .prologue
    .line 48
    sget v0, Lcom/tencent/midas/data/APDataId;->paydataCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/tencent/midas/data/APDataId;->paydataCount:I

    return v0
.end method

.method public static initDataId()V
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x0

    sput v0, Lcom/tencent/midas/data/APDataId;->paydataCount:I

    .line 44
    return-void
.end method
