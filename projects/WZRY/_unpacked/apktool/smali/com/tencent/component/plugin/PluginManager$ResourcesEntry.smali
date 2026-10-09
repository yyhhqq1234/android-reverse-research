.class final Lcom/tencent/component/plugin/PluginManager$ResourcesEntry;
.super Ljava/lang/ref/SoftReference;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/plugin/PluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ResourcesEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ref/SoftReference",
        "<",
        "Landroid/content/res/Resources;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 0
    .param p1, "r"    # Landroid/content/res/Resources;

    .prologue
    .line 1496
    invoke-direct {p0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 1497
    return-void
.end method
