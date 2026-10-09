.class Lcom/tencent/android/tpush/service/channel/h;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Lcom/tencent/android/tpush/service/ad;


# instance fields
.field final synthetic a:Lcom/tencent/android/tpush/service/channel/b;


# direct methods
.method constructor <init>(Lcom/tencent/android/tpush/service/channel/b;)V
    .locals 0

    .prologue
    .line 644
    iput-object p1, p0, Lcom/tencent/android/tpush/service/channel/h;->a:Lcom/tencent/android/tpush/service/channel/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 648
    if-nez p1, :cond_0

    .line 650
    sget v0, Lcom/tencent/android/tpush/service/channel/b;->j:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/tencent/android/tpush/service/channel/b;->j:I

    .line 655
    :goto_0
    return-void

    .line 652
    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/tencent/android/tpush/service/channel/b;->j:I

    goto :goto_0
.end method
