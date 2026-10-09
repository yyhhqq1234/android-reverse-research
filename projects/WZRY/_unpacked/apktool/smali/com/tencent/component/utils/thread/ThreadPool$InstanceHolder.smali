.class Lcom/tencent/component/utils/thread/ThreadPool$InstanceHolder;
.super Ljava/lang/Object;
.source "ThreadPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/utils/thread/ThreadPool;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/tencent/component/utils/thread/ThreadPool;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 360
    new-instance v0, Lcom/tencent/component/utils/thread/ThreadPool;

    invoke-direct {v0}, Lcom/tencent/component/utils/thread/ThreadPool;-><init>()V

    sput-object v0, Lcom/tencent/component/utils/thread/ThreadPool$InstanceHolder;->INSTANCE:Lcom/tencent/component/utils/thread/ThreadPool;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 359
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
