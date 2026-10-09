.class public final Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Companion;
.super Ljava/lang/Object;
.source "DisplayCutoutCompat.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002JL\u0010\u0003\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\n\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u000c\u001a\u00020\u00062\u0008\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0002J\u0012\u0010\u000f\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0004\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Companion;",
        "",
        "()V",
        "constructDisplayCutout",
        "Landroid/view/DisplayCutout;",
        "safeInsets",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;",
        "boundLeft",
        "Landroid/graphics/Rect;",
        "boundTop",
        "boundRight",
        "boundBottom",
        "waterfallInsets",
        "cutoutPath",
        "Landroid/graphics/Path;",
        "wrap",
        "Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;",
        "displayCutout",
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
.field public static changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final constructDisplayCutout(Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;Landroid/graphics/Path;)Landroid/view/DisplayCutout;
    .locals 10

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v6, 0x1

    aput-object v2, v0, v6

    const/4 v6, 0x2

    aput-object v3, v0, v6

    const/4 v6, 0x3

    aput-object v4, v0, v6

    const/4 v6, 0x4

    aput-object v5, v0, v6

    const/4 v6, 0x5

    aput-object p6, v0, v6

    const/4 v6, 0x6

    aput-object p7, v0, v6

    sget-object v6, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Companion;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v7, "1caa788a4df3a0c6515ce3234bbd28c5"

    move-object v8, p0

    invoke-static {v0, p0, v6, v1, v7}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast v0, Landroid/view/DisplayCutout;

    return-object v0

    .line 30
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_1

    .line 31
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Api33Impl;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Api33Impl;

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    move-result-object v1

    invoke-virtual/range {p6 .. p6}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    move-result-object v6

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v7}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Api33Impl;->createDisplayCutout(Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Insets;Landroid/graphics/Path;)Landroid/view/DisplayCutout;

    move-result-object v0

    return-object v0

    .line 32
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_2

    .line 33
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Api30Impl;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Api30Impl;

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    move-result-object v1

    invoke-virtual/range {p6 .. p6}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    move-result-object v6

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Api30Impl;->createDisplayCutout(Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Insets;)Landroid/view/DisplayCutout;

    move-result-object v0

    return-object v0

    .line 34
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_3

    .line 35
    sget-object v0, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Api29Impl;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Api29Impl;

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->toPlatformInsets()Landroid/graphics/Insets;

    move-result-object v1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Api29Impl;->createDisplayCutout(Landroid/graphics/Insets;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/view/DisplayCutout;

    move-result-object v0

    return-object v0

    .line 36
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_8

    .line 37
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->getTop()I

    move-result v6

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->getRight()I

    move-result v7

    invoke-virtual {p1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/Insets;->getBottom()I

    move-result v9

    invoke-direct {v0, v1, v6, v7, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_4

    .line 40
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz v3, :cond_5

    .line 43
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v4, :cond_6

    .line 46
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz v5, :cond_7

    .line 49
    invoke-virtual {v1, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_7
    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Api28Impl;->INSTANCE:Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Api28Impl;

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v0, v1}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Api28Impl;->createDisplayCutout(Landroid/graphics/Rect;Ljava/util/List;)Landroid/view/DisplayCutout;

    move-result-object v0

    return-object v0

    :cond_8
    const/4 v0, 0x0

    return-object v0
.end method

.method public final wrap(Landroid/view/DisplayCutout;)Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    sget-object v2, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat$Companion;->changeQuickRedirect:Lcom/meituan/robust/ChangeQuickRedirect;

    const-string v3, "19061f7ae2d633e2babee29c0991dd20"

    invoke-static {v0, p0, v2, v1, v3}, Lcom/meituan/robust/PatchProxy;->proxy([Ljava/lang/Object;Ljava/lang/Object;Lcom/meituan/robust/ChangeQuickRedirect;ZLjava/lang/String;)Lcom/meituan/robust/PatchProxyResult;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, v0, Lcom/meituan/robust/PatchProxyResult;->result:Ljava/lang/Object;

    check-cast p1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;

    return-object p1

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    goto :goto_0

    .line 58
    :cond_1
    new-instance v1, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;

    invoke-direct {v1, p1, v0}, Lcom/bytedance/ttgame/tob/common/host/framework/compat/DisplayCutoutCompat;-><init>(Landroid/view/DisplayCutout;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method
