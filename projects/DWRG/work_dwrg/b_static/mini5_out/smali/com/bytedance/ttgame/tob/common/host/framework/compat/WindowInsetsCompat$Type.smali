.class public final Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Type;
.super Ljava/lang/Object;
.source "WindowInsetsCompat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Type$InsetsType;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u001b\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001\u001eB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0011\u001a\u00020\u0004H\u0007J\u0006\u0010\u0012\u001a\u00020\u0004J\u0006\u0010\u0013\u001a\u00020\u0004J\u0006\u0010\u0014\u001a\u00020\u0004J\u000e\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0004J\u0006\u0010\u0017\u001a\u00020\u0004J\u0006\u0010\u0018\u001a\u00020\u0004J\u0006\u0010\u0019\u001a\u00020\u0004J\u0006\u0010\u001a\u001a\u00020\u0004J\u0006\u0010\u001b\u001a\u00020\u0004J\u0006\u0010\u001c\u001a\u00020\u0004J\u0006\u0010\u001d\u001a\u00020\u0004R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Type;",
        "",
        "()V",
        "CAPTION_BAR",
        "",
        "DISPLAY_CUTOUT",
        "FIRST",
        "IME",
        "LAST",
        "MANDATORY_SYSTEM_GESTURES",
        "NAVIGATION_BARS",
        "SIZE",
        "STATUS_BARS",
        "SYSTEM_GESTURES",
        "SYSTEM_OVERLAYS",
        "TAPPABLE_ELEMENT",
        "WINDOW_DECOR",
        "all",
        "captionBar",
        "displayCutout",
        "ime",
        "indexOf",
        "type",
        "mandatorySystemGestures",
        "navigationBars",
        "statusBars",
        "systemBars",
        "systemGestures",
        "systemOverlays",
        "tappableElement",
        "InsetsType",
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
.field public static final CAPTION_BAR:I = 0x4

.field public static final DISPLAY_CUTOUT:I = 0x80

.field public static final FIRST:I = 0x1

.field public static final IME:I = 0x8

.field public static final INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Type;

.field public static final LAST:I = 0x200

.field public static final MANDATORY_SYSTEM_GESTURES:I = 0x20

.field public static final NAVIGATION_BARS:I = 0x2

.field public static final SIZE:I = 0xa

.field public static final STATUS_BARS:I = 0x1

.field public static final SYSTEM_GESTURES:I = 0x10

.field public static final SYSTEM_OVERLAYS:I = 0x200

.field public static final TAPPABLE_ELEMENT:I = 0x40

.field public static final WINDOW_DECOR:I = 0x100

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Type;

    invoke-direct {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Type;-><init>()V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Type;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Type;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final all()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final captionBar()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public final displayCutout()I
    .locals 1

    const/16 v0, 0x80

    return v0
.end method

.method public final ime()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public final indexOf(I)I
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/WindowInsetsCompat$Type;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "3493a321243b1c2c6a35b3e5db8de7b9"

    invoke-static {v1, p0, v2, v3, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    :cond_0
    if-eq p1, v0, :cond_8

    const/4 v1, 0x2

    if-eq p1, v1, :cond_9

    const/4 v0, 0x4

    if-eq p1, v0, :cond_7

    const/16 v1, 0x8

    if-eq p1, v1, :cond_6

    const/16 v2, 0x10

    if-eq p1, v2, :cond_9

    const/16 v0, 0x20

    if-eq p1, v0, :cond_5

    const/16 v0, 0x40

    if-eq p1, v0, :cond_4

    const/16 v0, 0x80

    if-eq p1, v0, :cond_3

    const/16 v0, 0x100

    if-eq p1, v0, :cond_2

    const/16 v0, 0x200

    if-ne p1, v0, :cond_1

    const/16 v0, 0x9

    goto :goto_0

    .line 1276
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "type needs to be >= FIRST and <= LAST, type="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    :cond_3
    const/4 v0, 0x7

    goto :goto_0

    :cond_4
    const/4 v0, 0x6

    goto :goto_0

    :cond_5
    const/4 v0, 0x5

    goto :goto_0

    :cond_6
    const/4 v0, 0x3

    goto :goto_0

    :cond_7
    const/4 v0, 0x2

    goto :goto_0

    :cond_8
    const/4 v0, 0x0

    :cond_9
    :goto_0
    return v0
.end method

.method public final mandatorySystemGestures()I
    .locals 1

    const/16 v0, 0x20

    return v0
.end method

.method public final navigationBars()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public final statusBars()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final systemBars()I
    .locals 1

    const/16 v0, 0x207

    return v0
.end method

.method public final systemGestures()I
    .locals 1

    const/16 v0, 0x10

    return v0
.end method

.method public final systemOverlays()I
    .locals 1

    const/16 v0, 0x200

    return v0
.end method

.method public final tappableElement()I
    .locals 1

    const/16 v0, 0x40

    return v0
.end method
