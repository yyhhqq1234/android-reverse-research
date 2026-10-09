.class public final enum Lcom/tencent/component/utils/thread/ThreadPool$Priority;
.super Ljava/lang/Enum;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/utils/thread/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Priority"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/component/utils/thread/ThreadPool$Priority;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/component/utils/thread/ThreadPool$Priority;

.field public static final enum HIGH:Lcom/tencent/component/utils/thread/ThreadPool$Priority;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation
.end field

.field public static final enum LOW:Lcom/tencent/component/utils/thread/ThreadPool$Priority;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation
.end field

.field public static final enum NORMAL:Lcom/tencent/component/utils/thread/ThreadPool$Priority;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x4
    .end annotation
.end field


# instance fields
.field priorityInt:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 67
    new-instance v0, Lcom/tencent/component/utils/thread/ThreadPool$Priority;

    const-string v1, "LOW"

    invoke-direct {v0, v1, v4, v2}, Lcom/tencent/component/utils/thread/ThreadPool$Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/component/utils/thread/ThreadPool$Priority;->LOW:Lcom/tencent/component/utils/thread/ThreadPool$Priority;

    .line 69
    new-instance v0, Lcom/tencent/component/utils/thread/ThreadPool$Priority;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/component/utils/thread/ThreadPool$Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/component/utils/thread/ThreadPool$Priority;->NORMAL:Lcom/tencent/component/utils/thread/ThreadPool$Priority;

    .line 71
    new-instance v0, Lcom/tencent/component/utils/thread/ThreadPool$Priority;

    const-string v1, "HIGH"

    invoke-direct {v0, v1, v3, v5}, Lcom/tencent/component/utils/thread/ThreadPool$Priority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/component/utils/thread/ThreadPool$Priority;->HIGH:Lcom/tencent/component/utils/thread/ThreadPool$Priority;

    .line 66
    new-array v0, v5, [Lcom/tencent/component/utils/thread/ThreadPool$Priority;

    sget-object v1, Lcom/tencent/component/utils/thread/ThreadPool$Priority;->LOW:Lcom/tencent/component/utils/thread/ThreadPool$Priority;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/component/utils/thread/ThreadPool$Priority;->NORMAL:Lcom/tencent/component/utils/thread/ThreadPool$Priority;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/component/utils/thread/ThreadPool$Priority;->HIGH:Lcom/tencent/component/utils/thread/ThreadPool$Priority;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tencent/component/utils/thread/ThreadPool$Priority;->$VALUES:[Lcom/tencent/component/utils/thread/ThreadPool$Priority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "priority"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    iput p3, p0, Lcom/tencent/component/utils/thread/ThreadPool$Priority;->priorityInt:I

    .line 78
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/component/utils/thread/ThreadPool$Priority;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 66
    const-class v0, Lcom/tencent/component/utils/thread/ThreadPool$Priority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/component/utils/thread/ThreadPool$Priority;

    return-object v0
.end method

.method public static values()[Lcom/tencent/component/utils/thread/ThreadPool$Priority;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/tencent/component/utils/thread/ThreadPool$Priority;->$VALUES:[Lcom/tencent/component/utils/thread/ThreadPool$Priority;

    invoke-virtual {v0}, [Lcom/tencent/component/utils/thread/ThreadPool$Priority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/component/utils/thread/ThreadPool$Priority;

    return-object v0
.end method
