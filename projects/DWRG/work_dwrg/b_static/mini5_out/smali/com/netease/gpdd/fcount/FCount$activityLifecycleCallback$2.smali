.class final Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2;
.super Lkotlin/jvm/internal/Lambda;
.source "FCount.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/gpdd/fcount/FCount;-><init>(Landroid/content/Context;Ljava/lang/String;ZZZZJLcom/netease/gpdd/fcount/AndroidIdOverrider;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2$1;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\t\n\u0000\n\u0002\u0008\u0003*\u0001\u0001\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0004\u0008\u0002\u0010\u0003"
    }
    d2 = {
        "<anonymous>",
        "com/netease/gpdd/fcount/FCount$activityLifecycleCallback$2$1",
        "invoke",
        "()Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2$1;"
    }
    k = 0x3
    mv = {
        0x1,
        0x8,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/netease/gpdd/fcount/FCount;


# direct methods
.method constructor <init>(Lcom/netease/gpdd/fcount/FCount;)V
    .locals 0

    iput-object p1, p0, Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2;->this$0:Lcom/netease/gpdd/fcount/FCount;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method

.method private static final invoke$lambda$0(Lcom/netease/gpdd/fcount/FCount;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    .line 200
    invoke-static {p0, v0}, Lcom/netease/gpdd/fcount/FCount;->access$setSessionId$p(Lcom/netease/gpdd/fcount/FCount;Ljava/lang/String;)V

    return-void
.end method

.method private static final invoke$lambda$1(Lcom/netease/gpdd/fcount/FCount;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    invoke-static {p0}, Lcom/netease/gpdd/fcount/FCount;->access$getSessionId$p(Lcom/netease/gpdd/fcount/FCount;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 204
    invoke-static {p0}, Lcom/netease/gpdd/fcount/FCount;->access$generateSessionId(Lcom/netease/gpdd/fcount/FCount;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/netease/gpdd/fcount/FCount;->access$setSessionId$p(Lcom/netease/gpdd/fcount/FCount;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static synthetic lambda$XRvOjok9E1XCIOEftQAeCMHLHz8(Lcom/netease/gpdd/fcount/FCount;)V
    .locals 0

    invoke-static {p0}, Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2;->invoke$lambda$1(Lcom/netease/gpdd/fcount/FCount;)V

    return-void
.end method

.method public static synthetic lambda$Yct3U8cXOEt6g5dS0kYieglCnzc(Lcom/netease/gpdd/fcount/FCount;)V
    .locals 0

    invoke-static {p0}, Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2;->invoke$lambda$0(Lcom/netease/gpdd/fcount/FCount;)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2$1;
    .locals 4

    .line 199
    iget-object v0, p0, Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2;->this$0:Lcom/netease/gpdd/fcount/FCount;

    new-instance v1, Lcom/netease/gpdd/fcount/-$$Lambda$FCount$activityLifecycleCallback$2$Yct3U8cXOEt6g5dS0kYieglCnzc;

    invoke-direct {v1, v0}, Lcom/netease/gpdd/fcount/-$$Lambda$FCount$activityLifecycleCallback$2$Yct3U8cXOEt6g5dS0kYieglCnzc;-><init>(Lcom/netease/gpdd/fcount/FCount;)V

    .line 202
    new-instance v2, Lcom/netease/gpdd/fcount/-$$Lambda$FCount$activityLifecycleCallback$2$XRvOjok9E1XCIOEftQAeCMHLHz8;

    invoke-direct {v2, v0}, Lcom/netease/gpdd/fcount/-$$Lambda$FCount$activityLifecycleCallback$2$XRvOjok9E1XCIOEftQAeCMHLHz8;-><init>(Lcom/netease/gpdd/fcount/FCount;)V

    .line 208
    new-instance v3, Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2$1;-><init>(Lcom/netease/gpdd/fcount/FCount;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-object v3
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 198
    invoke-virtual {p0}, Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2;->invoke()Lcom/netease/gpdd/fcount/FCount$activityLifecycleCallback$2$1;

    move-result-object v0

    return-object v0
.end method
