.class final Lcom/tencent/component/plugin/PluginManager$PluginRecord;
.super Ljava/lang/Object;
.source "PluginManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/plugin/PluginManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PluginRecord"
.end annotation


# instance fields
.field plugin:Lcom/tencent/component/plugin/Plugin;

.field resources:Lcom/tencent/component/plugin/PluginManager$ResourcesEntry;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
