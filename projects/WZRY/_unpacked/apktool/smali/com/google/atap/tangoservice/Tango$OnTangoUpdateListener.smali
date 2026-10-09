.class public abstract Lcom/google/atap/tangoservice/Tango$OnTangoUpdateListener;
.super Lcom/google/atap/tangoservice/Tango$TangoUpdateCallback;
.source "Tango.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/atap/tangoservice/Tango;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "OnTangoUpdateListener"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/google/atap/tangoservice/Tango$TangoUpdateCallback;-><init>()V

    return-void
.end method
