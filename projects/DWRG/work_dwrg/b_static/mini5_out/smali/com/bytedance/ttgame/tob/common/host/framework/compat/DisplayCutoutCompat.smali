.class public final Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;
.super Ljava/lang/Object;
.source "DisplayCutoutCompat.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Companion;,
        Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Api28Impl;,
        Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Api29Impl;,
        Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Api30Impl;,
        Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Api31Impl;,
        Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Api33Impl;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0008\u0018\u0000 )2\u00020\u0001:\u0006$%&\'()B#\u0008\u0016\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0010\u0010\u0004\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u00010\u0003\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006B?\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\rBI\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0002\u0010\u0010B\u0011\u0008\u0002\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012\u00a2\u0006\u0002\u0010\u0013J\u0013\u0010\u0015\u001a\u00020\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0001H\u0096\u0002J\u000c\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0005J\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u000fJ\u0006\u0010\u001a\u001a\u00020\u001bJ\u0006\u0010\u001c\u001a\u00020\u001bJ\u0006\u0010\u001d\u001a\u00020\u001bJ\u0006\u0010\u001e\u001a\u00020\u001bJ\u0006\u0010\u001f\u001a\u00020\u0007J\u0008\u0010 \u001a\u00020\u001bH\u0016J\u0008\u0010!\u001a\u00020\"H\u0016J\n\u0010#\u001a\u0004\u0018\u00010\u0012H\u0007R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0012X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006*"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;",
        "",
        "safeInsets",
        "Landroid/graphics/Rect;",
        "boundingRects",
        "",
        "(Landroid/graphics/Rect;Ljava/util/List;)V",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;",
        "boundLeft",
        "boundTop",
        "boundRight",
        "boundBottom",
        "waterfallInsets",
        "(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)V",
        "cutoutPath",
        "Landroid/graphics/Path;",
        "(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;Landroid/graphics/Path;)V",
        "displayCutout",
        "Landroid/view/DisplayCutout;",
        "(Landroid/view/DisplayCutout;)V",
        "mDisplayCutout",
        "equals",
        "",
        "other",
        "getBoundingRects",
        "getCutoutPath",
        "getSafeInsetBottom",
        "",
        "getSafeInsetLeft",
        "getSafeInsetRight",
        "getSafeInsetTop",
        "getWaterfallInsets",
        "hashCode",
        "toString",
        "",
        "unwrap",
        "Api28Impl",
        "Api29Impl",
        "Api30Impl",
        "Api31Impl",
        "Api33Impl",
        "Companion",
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
.field public static final Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Companion;

.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# instance fields
.field private final mDisplayCutout:Landroid/view/DisplayCutout;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Rect;",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;)V"
        }
    .end annotation

    .line 65
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Api28Impl;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Api28Impl;

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Api28Impl;->createDisplayCutout(Landroid/graphics/Rect;Ljava/util/List;)Landroid/view/DisplayCutout;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-direct {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;-><init>(Landroid/view/DisplayCutout;)V

    return-void
.end method

.method private constructor <init>(Landroid/view/DisplayCutout;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/DisplayCutout;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;-><init>(Landroid/view/DisplayCutout;)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;)V
    .locals 9

    const-string v0, "safeInsets"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "waterfallInsets"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Companion;

    const/4 v8, 0x0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v8}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Companion;->constructDisplayCutout(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;Landroid/graphics/Path;)Landroid/view/DisplayCutout;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;-><init>(Landroid/view/DisplayCutout;)V

    return-void
.end method

.method public constructor <init>(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;Landroid/graphics/Path;)V
    .locals 9

    const-string v0, "safeInsets"

    move-object v2, p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "waterfallInsets"

    move-object v7, p6

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Companion;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v8, p7

    invoke-virtual/range {v1 .. v8}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Companion;->constructDisplayCutout(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;Landroid/graphics/Path;)Landroid/view/DisplayCutout;

    move-result-object v0

    move-object v1, p0

    invoke-direct {p0, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;-><init>(Landroid/view/DisplayCutout;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget-object v3, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v4, "59fef303217e6486f942076a88efbe00"

    invoke-static {v1, p0, v3, v2, v4}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object p1, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    if-ne p0, p1, :cond_1

    return v0

    :cond_1
    if-eqz p1, :cond_5

    .line 133
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 136
    :cond_2
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/utils/ObjectsCompat;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/compat/utils/ObjectsCompat;

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    instance-of v2, p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;

    goto :goto_0

    :cond_3
    move-object p1, v3

    :goto_0
    if-eqz p1, :cond_4

    iget-object v3, p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    :cond_4
    invoke-virtual {v0, v1, v3}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/utils/ObjectsCompat;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_5
    :goto_1
    return v2
.end method

.method public final getBoundingRects()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "81d552167ace8ea7515f9539f9e03aa6"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    return-object v0

    .line 106
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_1

    .line 107
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Api28Impl;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Api28Impl;

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Api28Impl;->getBoundingRects(Landroid/view/DisplayCutout;)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 109
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final getCutoutPath()Landroid/graphics/Path;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "c4daee507f327feb7ba08ecb38f73949"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Path;

    return-object v0

    .line 122
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_1

    .line 123
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Api31Impl;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Api31Impl;

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Api31Impl;->getCutoutPath(Landroid/view/DisplayCutout;)Landroid/graphics/Path;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 125
    move-object v1, v0

    check-cast v1, Landroid/graphics/Path;

    :goto_0
    return-object v0
.end method

.method public final getSafeInsetBottom()I
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "72fefccc9eff61551af0d3993c35149a"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 82
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz v1, :cond_1

    .line 83
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Api28Impl;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Api28Impl;

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Api28Impl;->getSafeInsetBottom(Landroid/view/DisplayCutout;)I

    move-result v0

    :cond_1
    return v0
.end method

.method public final getSafeInsetLeft()I
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "e081909d57ac75449025445e24297e03"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 90
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz v1, :cond_1

    .line 91
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Api28Impl;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Api28Impl;

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Api28Impl;->getSafeInsetLeft(Landroid/view/DisplayCutout;)I

    move-result v0

    :cond_1
    return v0
.end method

.method public final getSafeInsetRight()I
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "8b100b8ae6c100b33527546168b5db8f"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 98
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz v1, :cond_1

    .line 99
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Api28Impl;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Api28Impl;

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Api28Impl;->getSafeInsetRight(Landroid/view/DisplayCutout;)I

    move-result v0

    :cond_1
    return v0
.end method

.method public final getSafeInsetTop()I
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "79f26683acb9839d980c56c67177cb93"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 74
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz v1, :cond_1

    .line 75
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Api28Impl;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Api28Impl;

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Api28Impl;->getSafeInsetTop(Landroid/view/DisplayCutout;)I

    move-result v0

    :cond_1
    return v0
.end method

.method public final getWaterfallInsets()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "9f44f6da0a95b4bd5071f75f7c7a730e"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    return-object v0

    .line 114
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz v0, :cond_1

    .line 115
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;

    sget-object v1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Api30Impl;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Api30Impl;

    iget-object v2, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v1, v2}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Api30Impl;->getWaterfallInsets(Landroid/view/DisplayCutout;)Landroid/graphics/Insets;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;->toCompatInsets(Landroid/graphics/Insets;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object v0

    goto :goto_0

    .line 117
    :cond_1
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->Companion:Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;

    invoke-virtual {v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets$Companion;->getNONE()Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "75e4f8d9a10663a9d35383589c91c9fb"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v0, v1, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->hashCode()I

    move-result v0

    :cond_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "c47d59f18e194b86e1167ddc3205c547"

    invoke-static {v1, p0, v2, v0, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0

    .line 144
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DisplayCutoutCompat{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unwrap()Landroid/view/DisplayCutout;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;->mDisplayCutout:Landroid/view/DisplayCutout;

    return-object v0
.end method
