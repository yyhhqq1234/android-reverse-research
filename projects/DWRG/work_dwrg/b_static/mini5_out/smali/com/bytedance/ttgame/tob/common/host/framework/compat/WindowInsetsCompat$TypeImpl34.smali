.class public final Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$TypeImpl34;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TypeImpl34"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u00c3\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$TypeImpl34;",
        "",
        "()V",
        "toPlatformType",
        "",
        "typeMask",
        "ch_framework_tobRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$TypeImpl34;

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$TypeImpl34;

    invoke-direct {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$TypeImpl34;-><init>()V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$TypeImpl34;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$TypeImpl34;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final toPlatformType(I)I
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$TypeImpl34;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "5bdf1f622e2d96062c09d5ece9fc5192"

    invoke-static {v1, p0, v2, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x200

    if-gt v1, v2, :cond_b

    and-int v4, p1, v1

    if-eqz v4, :cond_a

    if-eq v1, v0, :cond_9

    const/4 v4, 0x2

    if-eq v1, v4, :cond_8

    const/4 v4, 0x4

    if-eq v1, v4, :cond_7

    const/16 v4, 0x8

    if-eq v1, v4, :cond_6

    const/16 v4, 0x10

    if-eq v1, v4, :cond_5

    const/16 v4, 0x20

    if-eq v1, v4, :cond_4

    const/16 v4, 0x40

    if-eq v1, v4, :cond_3

    const/16 v4, 0x80

    if-eq v1, v4, :cond_2

    if-eq v1, v2, :cond_1

    goto :goto_2

    .line 1341
    :cond_1
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemOverlays()I

    move-result v2

    goto :goto_1

    .line 1340
    :cond_2
    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v2

    goto :goto_1

    .line 1339
    :cond_3
    invoke-static {}, Landroid/view/WindowInsets$Type;->tappableElement()I

    move-result v2

    goto :goto_1

    .line 1338
    :cond_4
    invoke-static {}, Landroid/view/WindowInsets$Type;->mandatorySystemGestures()I

    move-result v2

    goto :goto_1

    .line 1337
    :cond_5
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemGestures()I

    move-result v2

    goto :goto_1

    .line 1336
    :cond_6
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    goto :goto_1

    .line 1335
    :cond_7
    invoke-static {}, Landroid/view/WindowInsets$Type;->captionBar()I

    move-result v2

    goto :goto_1

    .line 1334
    :cond_8
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v2

    goto :goto_1

    .line 1333
    :cond_9
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v2

    :goto_1
    or-int/2addr v2, v3

    move v3, v2

    :cond_a
    :goto_2
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_b
    return v3
.end method
