.class public abstract Lcom/ironsource/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ironsource/y$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00bb\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0012\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\n\u0008&\u0018\u00002\u00020\u0001:\u0001\u0005B\u001f\u0012\u0006\u00103\u001a\u00020/\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\'\u001a\u000208\u00a2\u0006\u0004\u0008}\u0010~J\u001a\u0010\u0005\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0008\u0010\u0007\u001a\u00020\u0006H\u0002J\u0008\u0010\u0008\u001a\u00020\u0006H\u0002J\u0008\u0010\t\u001a\u00020\u0006H\u0002J\u000f\u0010\u0005\u001a\u00020\nH\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u000bJ\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u000cH\u0002J\u0008\u0010\u000e\u001a\u00020\u0006H\u0002J\u001a\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002J\u0008\u0010\u0013\u001a\u00020\u0006H\u0002J \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0002J\u0008\u0010\u0016\u001a\u00020\u0006H\u0002J\u0008\u0010\u0017\u001a\u00020\u0006H\u0002J*\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u001a\u001a\u00020\u0019H\u0002J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u001c\u001a\u00020\u001bH\u0004J\u0008\u0010\u001e\u001a\u00020\u001dH\u0016J\u0008\u0010 \u001a\u00020\u001fH\u0016J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020!H&J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010$\u001a\u00020#H\u0004J\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010%\u001a\u00020\u001fJ\u000e\u0010\u0005\u001a\u00020\u00062\u0006\u0010\'\u001a\u00020&J\u0008\u0010(\u001a\u00020\u0006H\u0016J\u0008\u0010)\u001a\u00020\u0006H$J\u0014\u0010\u0005\u001a\u00020\u00112\n\u0008\u0002\u0010*\u001a\u0004\u0018\u00010\u0011H\u0004J\u0008\u0010+\u001a\u00020\u0006H\u0016J \u0010,\u001a\u00020\u00062\u0006\u0010\u0015\u001a\u00020\u00142\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011H\u0016J\u0008\u0010-\u001a\u00020\u0006H\u0016J\u0008\u0010.\u001a\u00020\u0006H\u0016R\u0017\u00103\u001a\u00020/8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u00100\u001a\u0004\u00081\u00102R\u001a\u0010\u0003\u001a\u00020\u00028\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u0008(\u00104\u001a\u0004\u00085\u00106R$\u0010\'\u001a\u0010\u0012\u000c\u0012\n 9*\u0004\u0018\u00010808078\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008:\u0010;R\u0016\u0010=\u001a\u00020&8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010<R!\u0010A\u001a\u000c\u0012\u0002\u0008\u0003\u0012\u0002\u0008\u0003\u0018\u00010\u00048\u0006\u00a2\u0006\u000c\n\u0004\u00081\u0010>\u001a\u0004\u0008?\u0010@R\u0018\u0010D\u001a\u0004\u0018\u00010B8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008?\u0010CR\u0018\u0010H\u001a\u0004\u0018\u00010E8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008F\u0010GR$\u0010N\u001a\u00020\u001f2\u0006\u0010I\u001a\u00020\u001f8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008J\u0010K\u001a\u0004\u0008L\u0010MR$\u0010Q\u001a\u00020\u001f2\u0006\u0010I\u001a\u00020\u001f8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008O\u0010K\u001a\u0004\u0008P\u0010MR$\u0010T\u001a\u00020\u001f2\u0006\u0010I\u001a\u00020\u001f8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008R\u0010K\u001a\u0004\u0008S\u0010MR$\u0010W\u001a\u00020\u001f2\u0006\u0010I\u001a\u00020\u001f8\u0006@BX\u0086\u000e\u00a2\u0006\u000c\n\u0004\u0008U\u0010K\u001a\u0004\u0008V\u0010MR\u001a\u0010[\u001a\u00020X8\u0004X\u0084\u0004\u00a2\u0006\u000c\n\u0004\u00085\u0010Y\u001a\u0004\u0008J\u0010ZR\u0017\u0010`\u001a\u00020\\8\u0006\u00a2\u0006\u000c\n\u0004\u0008]\u0010^\u001a\u0004\u0008F\u0010_R\u0019\u0010b\u001a\u0004\u0018\u00010\\8\u0006\u00a2\u0006\u000c\n\u0004\u0008a\u0010^\u001a\u0004\u0008U\u0010_R\u0017\u0010e\u001a\u00020\u001f8\u0006\u00a2\u0006\u000c\n\u0004\u0008c\u0010K\u001a\u0004\u0008d\u0010MR\u0017\u0010i\u001a\u00020\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008f\u0010g\u001a\u0004\u0008a\u0010hR\u0017\u0010m\u001a\u00020\u000f8\u0006\u00a2\u0006\u000c\n\u0004\u0008j\u0010k\u001a\u0004\u0008f\u0010lR\u0017\u0010o\u001a\u00020\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008n\u0010g\u001a\u0004\u0008c\u0010hR\u0017\u0010s\u001a\u00020p8\u0006\u00a2\u0006\u000c\n\u0004\u0008d\u0010q\u001a\u0004\u0008:\u0010rR\u0017\u0010t\u001a\u00020\u000f8\u0006\u00a2\u0006\u000c\n\u0004\u0008V\u0010k\u001a\u0004\u0008n\u0010lR\u0017\u0010\u001c\u001a\u00020u8\u0006\u00a2\u0006\u000c\n\u0004\u0008P\u0010v\u001a\u0004\u0008j\u0010wR\u0014\u0010x\u001a\u00020\u000f8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008]\u0010lR\u0014\u0010y\u001a\u00020\u00118DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008R\u0010hR\u0016\u0010|\u001a\u0004\u0018\u00010z8DX\u0084\u0004\u00a2\u0006\u0006\u001a\u0004\u0008O\u0010{\u00a8\u0006\u007f"
    }
    d2 = {
        "Lcom/ironsource/y;",
        "Lcom/ironsource/mediationsdk/adunit/adapter/internal/listener/AdapterAdListener;",
        "Lcom/ironsource/z;",
        "instanceData",
        "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;",
        "a",
        "",
        "E",
        "F",
        "z",
        "com/ironsource/y$b",
        "()Lcom/ironsource/y$b;",
        "Lcom/ironsource/mediationsdk/logger/IronSourceError;",
        "error",
        "D",
        "",
        "errorCode",
        "",
        "errorMessage",
        "B",
        "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;",
        "adapterErrorType",
        "C",
        "A",
        "errorType",
        "",
        "duration",
        "Lcom/ironsource/n1$a;",
        "performance",
        "Lcom/unity3d/mediation/LevelPlayAdInfo;",
        "d",
        "",
        "x",
        "Lcom/ironsource/g0;",
        "adInstancePresenter",
        "Ljava/lang/Runnable;",
        "callback",
        "status",
        "Lcom/ironsource/d0;",
        "listener",
        "b",
        "y",
        "message",
        "onAdLoadSuccess",
        "onAdLoadFailed",
        "onAdOpened",
        "onAdClicked",
        "Lcom/ironsource/t2;",
        "Lcom/ironsource/t2;",
        "e",
        "()Lcom/ironsource/t2;",
        "adTools",
        "Lcom/ironsource/z;",
        "l",
        "()Lcom/ironsource/z;",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/ironsource/c0;",
        "kotlin.jvm.PlatformType",
        "c",
        "Ljava/lang/ref/WeakReference;",
        "Lcom/ironsource/d0;",
        "loadListener",
        "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;",
        "f",
        "()Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;",
        "adapter",
        "Lcom/ironsource/xa;",
        "Lcom/ironsource/xa;",
        "loadDuration",
        "Lcom/ironsource/cq;",
        "g",
        "Lcom/ironsource/cq;",
        "timeoutRunnable",
        "<set-?>",
        "h",
        "Z",
        "v",
        "()Z",
        "isInstanceLoading",
        "i",
        "u",
        "isInstanceLoaded",
        "j",
        "w",
        "isInstanceOpened",
        "k",
        "t",
        "isInstanceFailed",
        "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;",
        "Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;",
        "()Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;",
        "currentAdData",
        "Lcom/ironsource/j5;",
        "m",
        "Lcom/ironsource/j5;",
        "()Lcom/ironsource/j5;",
        "auctionResponseItem",
        "n",
        "genericNotifications",
        "o",
        "s",
        "isBidder",
        "p",
        "Ljava/lang/String;",
        "()Ljava/lang/String;",
        "instanceName",
        "q",
        "I",
        "()I",
        "instanceType",
        "r",
        "instanceSignature",
        "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
        "Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
        "()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;",
        "adFormat",
        "sessionDepth",
        "Lcom/ironsource/f0;",
        "Lcom/ironsource/f0;",
        "()Lcom/ironsource/f0;",
        "instanceLoadTimeoutInSeconds",
        "currentPlacementName",
        "Lcom/ironsource/mediationsdk/model/Placement;",
        "()Lcom/ironsource/mediationsdk/model/Placement;",
        "currentPlacement",
        "<init>",
        "(Lcom/ironsource/t2;Lcom/ironsource/z;Lcom/ironsource/c0;)V",
        "mediationsdk_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x8,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lcom/ironsource/t2;

.field private final b:Lcom/ironsource/z;

.field private c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/ironsource/c0;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/ironsource/d0;

.field private final e:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter<",
            "**>;"
        }
    .end annotation
.end field

.field private f:Lcom/ironsource/xa;

.field private g:Lcom/ironsource/cq;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private final l:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

.field private final m:Lcom/ironsource/j5;

.field private final n:Lcom/ironsource/j5;

.field private final o:Z

.field private final p:Ljava/lang/String;

.field private final q:I

.field private final r:Ljava/lang/String;

.field private final s:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

.field private final t:I

.field private final u:Lcom/ironsource/f0;


# direct methods
.method public static synthetic $r8$lambda$6ADQ12pMXU736f_QNPLUWkSwrFA(Lcom/ironsource/y;)V
    .locals 0

    invoke-static {p0}, Lcom/ironsource/y;->e(Lcom/ironsource/y;)V

    return-void
.end method

.method public static synthetic $r8$lambda$LV2jCaLrOqiUHFxxk_u0HzFQEmc(Lcom/ironsource/y;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/ironsource/y;->a(Lcom/ironsource/y;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b8l8npes89TDcS4r3c7RTEXGIM0(Lcom/ironsource/y;)V
    .locals 0

    invoke-static {p0}, Lcom/ironsource/y;->d(Lcom/ironsource/y;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yFSfVsw-M78jEL7htDDb6uLahnE(Lcom/ironsource/y;)V
    .locals 0

    invoke-static {p0}, Lcom/ironsource/y;->c(Lcom/ironsource/y;)V

    return-void
.end method

.method public constructor <init>(Lcom/ironsource/t2;Lcom/ironsource/z;Lcom/ironsource/c0;)V
    .locals 2

    const-string v0, "adTools"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "instanceData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ironsource/y;->a:Lcom/ironsource/t2;

    iput-object p2, p0, Lcom/ironsource/y;->b:Lcom/ironsource/z;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ironsource/y;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Lcom/ironsource/z;->g()Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    move-result-object p3

    iput-object p3, p0, Lcom/ironsource/y;->l:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    invoke-virtual {p2}, Lcom/ironsource/z;->n()Lcom/ironsource/j5;

    move-result-object p3

    iput-object p3, p0, Lcom/ironsource/y;->m:Lcom/ironsource/j5;

    invoke-virtual {p2}, Lcom/ironsource/z;->p()Lcom/ironsource/j5;

    move-result-object p3

    iput-object p3, p0, Lcom/ironsource/y;->n:Lcom/ironsource/j5;

    invoke-virtual {p2}, Lcom/ironsource/z;->j()Lcom/ironsource/z2;

    move-result-object p3

    invoke-virtual {p3}, Lcom/ironsource/z2;->j()Z

    move-result p3

    iput-boolean p3, p0, Lcom/ironsource/y;->o:Z

    invoke-virtual {p2}, Lcom/ironsource/z;->r()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/ironsource/y;->p:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/ironsource/z;->s()I

    move-result p3

    iput p3, p0, Lcom/ironsource/y;->q:I

    invoke-virtual {p2}, Lcom/ironsource/z;->w()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/ironsource/y;->r:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/ironsource/z;->h()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object p3

    iput-object p3, p0, Lcom/ironsource/y;->s:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    invoke-virtual {p2}, Lcom/ironsource/z;->v()I

    move-result p3

    iput p3, p0, Lcom/ironsource/y;->t:I

    invoke-virtual {p2}, Lcom/ironsource/z;->t()Lcom/ironsource/f0;

    move-result-object p3

    iput-object p3, p0, Lcom/ironsource/y;->u:Lcom/ironsource/f0;

    invoke-direct {p0, p2}, Lcom/ironsource/y;->a(Lcom/ironsource/z;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    move-result-object p3

    iput-object p3, p0, Lcom/ironsource/y;->e:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    invoke-virtual {p1}, Lcom/ironsource/l1;->e()Lcom/ironsource/pb;

    move-result-object v0

    new-instance v1, Lcom/ironsource/a0;

    invoke-direct {v1, p1, p2, p3}, Lcom/ironsource/a0;-><init>(Lcom/ironsource/t2;Lcom/ironsource/z;Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;)V

    invoke-virtual {v0, v1}, Lcom/ironsource/pb;->a(Lcom/ironsource/a2;)V

    invoke-virtual {p1}, Lcom/ironsource/l1;->e()Lcom/ironsource/pb;

    move-result-object p1

    new-instance p3, Lcom/ironsource/r4;

    invoke-virtual {p2}, Lcom/ironsource/z;->k()Lcom/ironsource/g5;

    move-result-object p2

    invoke-direct {p3, p2}, Lcom/ironsource/r4;-><init>(Lcom/ironsource/g5;)V

    invoke-virtual {p1, p3}, Lcom/ironsource/pb;->a(Lcom/ironsource/a2;)V

    return-void
.end method

.method private final A()V
    .locals 3

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v1}, Lcom/ironsource/y;->a(Lcom/ironsource/y;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/y;->a:Lcom/ironsource/t2;

    invoke-virtual {v0}, Lcom/ironsource/l1;->e()Lcom/ironsource/pb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/pb;->a()Lcom/ironsource/k0;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ironsource/y;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/k0;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/y;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/c0;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/ironsource/c0;->a(Lcom/ironsource/y;)V

    :cond_0
    return-void
.end method

.method private final B()V
    .locals 6

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v1}, Lcom/ironsource/y;->a(Lcom/ironsource/y;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ironsource/y;->F()V

    iget-boolean v3, p0, Lcom/ironsource/y;->k:Z

    if-eqz v3, :cond_0

    return-void

    :cond_0
    iget-boolean v3, p0, Lcom/ironsource/y;->i:Z

    if-eqz v3, :cond_1

    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/ironsource/y;->i:Z

    iget-object v2, p0, Lcom/ironsource/y;->f:Lcom/ironsource/xa;

    invoke-static {v2}, Lcom/ironsource/xa;->a(Lcom/ironsource/xa;)J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Load duration = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/ironsource/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/y;->a:Lcom/ironsource/t2;

    invoke-virtual {v0}, Lcom/ironsource/l1;->e()Lcom/ironsource/pb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/pb;->e()Lcom/ironsource/wk;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/ironsource/wk;->a(JZ)V

    sget-object v0, Lcom/ironsource/n1$a;->c:Lcom/ironsource/n1$a;

    invoke-virtual {p0, v0}, Lcom/ironsource/y;->a(Lcom/ironsource/n1$a;)V

    iget-object v0, p0, Lcom/ironsource/y;->d:Lcom/ironsource/d0;

    if-nez v0, :cond_2

    const-string v0, "loadListener"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-interface {v1, p0}, Lcom/ironsource/d0;->a(Lcom/ironsource/y;)V

    return-void
.end method

.method private final C()V
    .locals 3

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v1}, Lcom/ironsource/y;->a(Lcom/ironsource/y;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/ironsource/y;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-boolean v2, p0, Lcom/ironsource/y;->j:Z

    iget-object v0, p0, Lcom/ironsource/y;->a:Lcom/ironsource/t2;

    invoke-virtual {v0}, Lcom/ironsource/l1;->e()Lcom/ironsource/pb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/pb;->a()Lcom/ironsource/k0;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ironsource/y;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/k0;->g(Ljava/lang/String;)V

    sget-object v0, Lcom/ironsource/n1$a;->e:Lcom/ironsource/n1$a;

    invoke-virtual {p0, v0}, Lcom/ironsource/y;->a(Lcom/ironsource/n1$a;)V

    iget-object v0, p0, Lcom/ironsource/y;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ironsource/c0;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/ironsource/c0;->b(Lcom/ironsource/y;)V

    :cond_1
    return-void
.end method

.method private final D()V
    .locals 3

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v1}, Lcom/ironsource/y;->a(Lcom/ironsource/y;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ironsource/y;->F()V

    iget-boolean v0, p0, Lcom/ironsource/y;->k:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/ironsource/y;->z()V

    return-void
.end method

.method private final E()V
    .locals 4

    invoke-direct {p0}, Lcom/ironsource/y;->F()V

    invoke-direct {p0}, Lcom/ironsource/y;->a()Lcom/ironsource/y$b;

    move-result-object v0

    iput-object v0, p0, Lcom/ironsource/y;->g:Lcom/ironsource/cq;

    if-eqz v0, :cond_0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0}, Lcom/ironsource/y;->m()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    iget-object v3, p0, Lcom/ironsource/y;->a:Lcom/ironsource/t2;

    invoke-virtual {v3, v0, v1, v2}, Lcom/ironsource/sk;->a(Lcom/ironsource/cq;J)V

    :cond_0
    return-void
.end method

.method private final F()V
    .locals 2

    iget-object v0, p0, Lcom/ironsource/y;->g:Lcom/ironsource/cq;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ironsource/y;->a:Lcom/ironsource/t2;

    invoke-virtual {v1, v0}, Lcom/ironsource/sk;->b(Lcom/ironsource/cq;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ironsource/y;->g:Lcom/ironsource/cq;

    :cond_0
    return-void
.end method

.method private final a(Lcom/ironsource/z;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ironsource/z;",
            ")",
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter<",
            "**>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/y;->a:Lcom/ironsource/t2;

    invoke-virtual {v0, p1}, Lcom/ironsource/t2;->a(Lcom/ironsource/z;)Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    move-result-object p1

    return-object p1
.end method

.method public static final synthetic a(Lcom/ironsource/y;)Lcom/ironsource/xa;
    .locals 0

    iget-object p0, p0, Lcom/ironsource/y;->f:Lcom/ironsource/xa;

    return-object p0
.end method

.method private final a()Lcom/ironsource/y$b;
    .locals 1

    new-instance v0, Lcom/ironsource/y$b;

    invoke-direct {v0, p0}, Lcom/ironsource/y$b;-><init>(Lcom/ironsource/y;)V

    return-object v0
.end method

.method public static synthetic a(Lcom/ironsource/y;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p3, :cond_1

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/ironsource/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: createLogMessage"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final a(ILjava/lang/String;)V
    .locals 7

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "error = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ironsource/y;->F()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ironsource/y;->k:Z

    iget-object v0, p0, Lcom/ironsource/y;->f:Lcom/ironsource/xa;

    invoke-static {v0}, Lcom/ironsource/xa;->a(Lcom/ironsource/xa;)J

    move-result-wide v5

    sget-object v2, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_INTERNAL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    move-object v1, p0

    move v3, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/y;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;J)V

    new-instance v0, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {v0, p1, p2}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/ironsource/y;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method private final a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V
    .locals 7

    iget-object v0, p0, Lcom/ironsource/y;->f:Lcom/ironsource/xa;

    invoke-static {v0}, Lcom/ironsource/xa;->a(Lcom/ironsource/xa;)J

    move-result-wide v5

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Load duration = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/ironsource/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ironsource/y;->F()V

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lcom/ironsource/y;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;J)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ironsource/y;->k:Z

    new-instance p1, Lcom/ironsource/mediationsdk/logger/IronSourceError;

    invoke-direct {p1, p2, p3}, Lcom/ironsource/mediationsdk/logger/IronSourceError;-><init>(ILjava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/ironsource/y;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method private final a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;J)V
    .locals 1

    sget-object v0, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_NO_FILL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/ironsource/y;->a:Lcom/ironsource/t2;

    invoke-virtual {p1}, Lcom/ironsource/l1;->e()Lcom/ironsource/pb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/pb;->e()Lcom/ironsource/wk;

    move-result-object p1

    invoke-virtual {p1, p4, p5, p2}, Lcom/ironsource/wk;->b(JI)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ironsource/y;->a:Lcom/ironsource/t2;

    invoke-virtual {p1}, Lcom/ironsource/l1;->e()Lcom/ironsource/pb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/pb;->e()Lcom/ironsource/wk;

    move-result-object p1

    invoke-virtual {p1, p4, p5, p2, p3}, Lcom/ironsource/wk;->a(JILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private final a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 1

    sget-object v0, Lcom/ironsource/n1$a;->b:Lcom/ironsource/n1$a;

    invoke-virtual {p0, v0}, Lcom/ironsource/y;->a(Lcom/ironsource/n1$a;)V

    iget-object v0, p0, Lcom/ironsource/y;->d:Lcom/ironsource/d0;

    if-nez v0, :cond_0

    const-string v0, "loadListener"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-interface {v0, p1, p0}, Lcom/ironsource/d0;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;Lcom/ironsource/y;)V

    return-void
.end method

.method public static final synthetic a(Lcom/ironsource/y;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/ironsource/y;->a(ILjava/lang/String;)V

    return-void
.end method

.method private static final a(Lcom/ironsource/y;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$adapterErrorType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$errorMessage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, Lcom/ironsource/y;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    return-void
.end method

.method public static final synthetic a(Lcom/ironsource/y;Lcom/ironsource/mediationsdk/logger/IronSourceError;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ironsource/y;->a(Lcom/ironsource/mediationsdk/logger/IronSourceError;)V

    return-void
.end method

.method public static final synthetic a(Lcom/ironsource/y;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ironsource/y;->k:Z

    return-void
.end method

.method public static final synthetic b(Lcom/ironsource/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/ironsource/y;->D()V

    return-void
.end method

.method private static final c(Lcom/ironsource/y;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ironsource/y;->A()V

    return-void
.end method

.method private static final d(Lcom/ironsource/y;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ironsource/y;->B()V

    return-void
.end method

.method private static final e(Lcom/ironsource/y;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ironsource/y;->C()V

    return-void
.end method

.method private final m()I
    .locals 2

    iget-object v0, p0, Lcom/ironsource/y;->b:Lcom/ironsource/z;

    invoke-virtual {v0}, Lcom/ironsource/z;->n()Lcom/ironsource/j5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/j5;->f()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ironsource/y;->b:Lcom/ironsource/z;

    invoke-virtual {v0}, Lcom/ironsource/z;->i()Lcom/ironsource/t1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/t1;->i()I

    move-result v0

    :goto_0
    return v0
.end method

.method private final z()V
    .locals 3

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v1}, Lcom/ironsource/y;->a(Lcom/ironsource/y;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/ironsource/y;->E()V

    invoke-virtual {p0}, Lcom/ironsource/y;->y()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/ironsource/l9;->d()Lcom/ironsource/l9;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/l9;->a(Ljava/lang/Throwable;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unexpected error while calling adapter.loadAd() - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, v0}, Lcom/ironsource/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/ironsource/y;->a:Lcom/ironsource/t2;

    invoke-virtual {v1}, Lcom/ironsource/l1;->e()Lcom/ironsource/pb;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/pb;->g()Lcom/ironsource/zt;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ironsource/zt;->f(Ljava/lang/String;)V

    sget-object v1, Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;->ADAPTER_ERROR_TYPE_INTERNAL:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;

    const/16 v2, 0x1fe

    invoke-direct {p0, v1, v2, v0}, Lcom/ironsource/y;->a(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/ironsource/y;->a:Lcom/ironsource/t2;

    iget-object v1, p0, Lcom/ironsource/y;->r:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Lcom/ironsource/l1;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/ironsource/d0;)V
    .locals 4

    const-string v0, "loadAd - network adapter not available "

    const-string v1, "listener"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {p0, v2, v3, v2}, Lcom/ironsource/y;->a(Lcom/ironsource/y;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ironsource/y;->d:Lcom/ironsource/d0;

    iput-boolean v3, p0, Lcom/ironsource/y;->h:Z

    :try_start_0
    iget-object p1, p0, Lcom/ironsource/y;->a:Lcom/ironsource/t2;

    invoke-virtual {p1}, Lcom/ironsource/l1;->e()Lcom/ironsource/pb;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ironsource/pb;->e()Lcom/ironsource/wk;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/ironsource/wk;->a(Z)V

    new-instance p1, Lcom/ironsource/xa;

    invoke-direct {p1}, Lcom/ironsource/xa;-><init>()V

    iput-object p1, p0, Lcom/ironsource/y;->f:Lcom/ironsource/xa;

    invoke-direct {p0}, Lcom/ironsource/y;->E()V

    iget-object p1, p0, Lcom/ironsource/y;->e:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;->getNetworkAdapter()Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/ironsource/y;->b:Lcom/ironsource/z;

    invoke-virtual {v0}, Lcom/ironsource/z;->g()Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    move-result-object v0

    invoke-static {}, Lcom/ironsource/environment/ContextProvider;->getInstance()Lcom/ironsource/environment/ContextProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/ironsource/environment/ContextProvider;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/ironsource/y$a;

    invoke-direct {v2, p0}, Lcom/ironsource/y$a;-><init>(Lcom/ironsource/y;)V

    invoke-interface {p1, v0, v1, v2}, Lcom/ironsource/mediationsdk/adunit/adapter/internal/AdapterBaseInterface;->init(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;Landroid/content/Context;Lcom/ironsource/mediationsdk/adunit/adapter/listener/NetworkInitializationListener;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/y;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ironsource/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/y;->b:Lcom/ironsource/z;

    invoke-virtual {v0}, Lcom/ironsource/z;->h()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/x1;->c(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/ironsource/y;->a(ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {}, Lcom/ironsource/l9;->d()Lcom/ironsource/l9;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/l9;->a(Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadAd - exception = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    invoke-virtual {p0, p1}, Lcom/ironsource/y;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->error(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/y;->a:Lcom/ironsource/t2;

    invoke-virtual {v0}, Lcom/ironsource/l1;->e()Lcom/ironsource/pb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/pb;->g()Lcom/ironsource/zt;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/zt;->f(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/y;->b:Lcom/ironsource/z;

    invoke-virtual {v0}, Lcom/ironsource/z;->h()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v0

    invoke-static {v0}, Lcom/ironsource/x1;->c(Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;)I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/ironsource/y;->a(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public abstract a(Lcom/ironsource/g0;)V
.end method

.method protected final a(Lcom/ironsource/n1$a;)V
    .locals 1

    const-string v0, "performance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/y;->b:Lcom/ironsource/z;

    invoke-virtual {v0, p1}, Lcom/ironsource/z;->a(Lcom/ironsource/n1$a;)V

    return-void
.end method

.method protected final a(Ljava/lang/Runnable;)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/y;->a:Lcom/ironsource/t2;

    invoke-virtual {v0, p1}, Lcom/ironsource/sk;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    iget-object v0, p0, Lcom/ironsource/y;->a:Lcom/ironsource/t2;

    invoke-virtual {v0}, Lcom/ironsource/l1;->e()Lcom/ironsource/pb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/pb;->a()Lcom/ironsource/k0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ironsource/k0;->a(Z)V

    return-void
.end method

.method public b()V
    .locals 3

    sget-object v0, Lcom/ironsource/mediationsdk/logger/IronLog;->INTERNAL:Lcom/ironsource/mediationsdk/logger/IronLog;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v1}, Lcom/ironsource/y;->a(Lcom/ironsource/y;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/ironsource/mediationsdk/logger/IronLog;->verbose(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/ironsource/y;->F()V

    iget-object v0, p0, Lcom/ironsource/y;->a:Lcom/ironsource/t2;

    invoke-virtual {v0}, Lcom/ironsource/l1;->e()Lcom/ironsource/pb;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/pb;->e()Lcom/ironsource/wk;

    move-result-object v0

    iget v1, p0, Lcom/ironsource/y;->t:I

    invoke-virtual {v0, v1}, Lcom/ironsource/wk;->a(I)V

    return-void
.end method

.method public final c()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/y;->s:Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    return-object v0
.end method

.method public d()Lcom/unity3d/mediation/LevelPlayAdInfo;
    .locals 10

    new-instance v9, Lcom/unity3d/mediation/LevelPlayAdInfo;

    iget-object v0, p0, Lcom/ironsource/y;->b:Lcom/ironsource/z;

    invoke-virtual {v0}, Lcom/ironsource/z;->i()Lcom/ironsource/t1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/t1;->b()Lcom/ironsource/c1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/c1;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/ironsource/y;->b:Lcom/ironsource/z;

    invoke-virtual {v0}, Lcom/ironsource/z;->h()Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/mediationsdk/IronSource$AD_UNIT;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v0, "instanceData.adFormat.toString()"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/ironsource/y;->b:Lcom/ironsource/z;

    invoke-virtual {v0}, Lcom/ironsource/z;->n()Lcom/ironsource/j5;

    move-result-object v0

    invoke-virtual {p0}, Lcom/ironsource/y;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ironsource/j5;->a(Ljava/lang/String;)Lcom/ironsource/mediationsdk/impressionData/ImpressionData;

    move-result-object v3

    iget-object v0, p0, Lcom/ironsource/y;->b:Lcom/ironsource/z;

    invoke-virtual {v0}, Lcom/ironsource/z;->n()Lcom/ironsource/j5;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/j5;->d()Lcom/ironsource/xk;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x30

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/unity3d/mediation/LevelPlayAdInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/ironsource/mediationsdk/impressionData/ImpressionData;Lcom/ironsource/xk;Lcom/unity3d/mediation/LevelPlayAdSize;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object v9
.end method

.method public final e()Lcom/ironsource/t2;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/y;->a:Lcom/ironsource/t2;

    return-object v0
.end method

.method public final f()Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter<",
            "**>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/ironsource/y;->e:Lcom/ironsource/mediationsdk/adunit/adapter/internal/BaseAdAdapter;

    return-object v0
.end method

.method public final g()Lcom/ironsource/j5;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/y;->m:Lcom/ironsource/j5;

    return-object v0
.end method

.method protected final h()Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/y;->l:Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdData;

    return-object v0
.end method

.method protected final i()Lcom/ironsource/mediationsdk/model/Placement;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/y;->b:Lcom/ironsource/z;

    invoke-virtual {v0}, Lcom/ironsource/z;->i()Lcom/ironsource/t1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/t1;->b()Lcom/ironsource/c1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/c1;->e()Lcom/ironsource/mediationsdk/model/Placement;

    move-result-object v0

    return-object v0
.end method

.method protected final j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/y;->b:Lcom/ironsource/z;

    invoke-virtual {v0}, Lcom/ironsource/z;->i()Lcom/ironsource/t1;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ironsource/t1;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final k()Lcom/ironsource/j5;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/y;->n:Lcom/ironsource/j5;

    return-object v0
.end method

.method protected final l()Lcom/ironsource/z;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/y;->b:Lcom/ironsource/z;

    return-object v0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/y;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/y;->r:Ljava/lang/String;

    return-object v0
.end method

.method public onAdClicked()V
    .locals 1

    new-instance v0, Lcom/ironsource/y$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/ironsource/y$$ExternalSyntheticLambda1;-><init>(Lcom/ironsource/y;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/y;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdLoadFailed(Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V
    .locals 1

    const-string v0, "adapterErrorType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "errorMessage"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/ironsource/y$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/ironsource/y$$ExternalSyntheticLambda0;-><init>(Lcom/ironsource/y;Lcom/ironsource/mediationsdk/adunit/adapter/utility/AdapterErrorType;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/y;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdLoadSuccess()V
    .locals 1

    new-instance v0, Lcom/ironsource/y$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/ironsource/y$$ExternalSyntheticLambda3;-><init>(Lcom/ironsource/y;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/y;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onAdOpened()V
    .locals 1

    new-instance v0, Lcom/ironsource/y$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/ironsource/y$$ExternalSyntheticLambda2;-><init>(Lcom/ironsource/y;)V

    invoke-virtual {p0, v0}, Lcom/ironsource/y;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final p()I
    .locals 1

    iget v0, p0, Lcom/ironsource/y;->q:I

    return v0
.end method

.method public final q()Lcom/ironsource/f0;
    .locals 1

    iget-object v0, p0, Lcom/ironsource/y;->u:Lcom/ironsource/f0;

    return-object v0
.end method

.method public final r()I
    .locals 1

    iget v0, p0, Lcom/ironsource/y;->t:I

    return v0
.end method

.method public final s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ironsource/y;->o:Z

    return v0
.end method

.method public final t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ironsource/y;->k:Z

    return v0
.end method

.method public final u()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ironsource/y;->i:Z

    return v0
.end method

.method public final v()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ironsource/y;->h:Z

    return v0
.end method

.method public final w()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ironsource/y;->j:Z

    return v0
.end method

.method public x()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ironsource/y;->i:Z

    return v0
.end method

.method protected abstract y()V
.end method
