.class public Lcom/tencent/component/plugin/PluginReporter$ReportEvent;
.super Ljava/lang/Object;
.source "PluginReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/plugin/PluginReporter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReportEvent"
.end annotation


# instance fields
.field public brief:Ljava/lang/String;

.field public exception:Ljava/lang/Throwable;

.field public msg:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public succeed:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
