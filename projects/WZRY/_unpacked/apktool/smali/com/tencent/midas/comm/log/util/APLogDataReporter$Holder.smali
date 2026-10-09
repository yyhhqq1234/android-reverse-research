.class Lcom/tencent/midas/comm/log/util/APLogDataReporter$Holder;
.super Ljava/lang/Object;
.source "APLogDataReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/midas/comm/log/util/APLogDataReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/tencent/midas/comm/log/util/APLogDataReporter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcom/tencent/midas/comm/log/util/APLogDataReporter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/tencent/midas/comm/log/util/APLogDataReporter;-><init>(Lcom/tencent/midas/comm/log/util/APLogDataReporter$1;)V

    sput-object v0, Lcom/tencent/midas/comm/log/util/APLogDataReporter$Holder;->INSTANCE:Lcom/tencent/midas/comm/log/util/APLogDataReporter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/tencent/midas/comm/log/util/APLogDataReporter;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lcom/tencent/midas/comm/log/util/APLogDataReporter$Holder;->INSTANCE:Lcom/tencent/midas/comm/log/util/APLogDataReporter;

    return-object v0
.end method
