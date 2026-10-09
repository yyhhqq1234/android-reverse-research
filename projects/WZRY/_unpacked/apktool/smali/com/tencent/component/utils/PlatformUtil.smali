.class public Lcom/tencent/component/utils/PlatformUtil;
.super Ljava/lang/Object;
.source "PlatformUtil.java"


# annotations
.annotation build Lcom/tencent/component/annotation/PluginApi;
    since = 0x6
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/component/utils/PlatformUtil$VERSION_CODES;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static version()I
    .locals 1
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x6
    .end annotation

    .prologue
    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    return v0
.end method
