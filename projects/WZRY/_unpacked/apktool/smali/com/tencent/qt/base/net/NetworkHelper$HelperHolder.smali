.class Lcom/tencent/qt/base/net/NetworkHelper$HelperHolder;
.super Ljava/lang/Object;
.source "NetworkHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/qt/base/net/NetworkHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HelperHolder"
.end annotation


# static fields
.field private static final helper:Lcom/tencent/qt/base/net/NetworkHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/tencent/qt/base/net/NetworkHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/qt/base/net/NetworkHelper;-><init>(Lcom/tencent/qt/base/net/NetworkHelper$1;)V

    sput-object v0, Lcom/tencent/qt/base/net/NetworkHelper$HelperHolder;->helper:Lcom/tencent/qt/base/net/NetworkHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/tencent/qt/base/net/NetworkHelper;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/tencent/qt/base/net/NetworkHelper$HelperHolder;->helper:Lcom/tencent/qt/base/net/NetworkHelper;

    return-object v0
.end method
