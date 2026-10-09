.class public interface abstract Lcom/tencent/tmslite/market/IDownload$STATE;
.super Ljava/lang/Object;
.source "IDownload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tmslite/market/IDownload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "STATE"
.end annotation


# static fields
.field public static final STATE_DOWNLOADING:I = 0x4

.field public static final STATE_FAILED:I = 0x6

.field public static final STATE_FINISH:I = 0x2

.field public static final STATE_INSTALL:I = 0x7

.field public static final STATE_NULL:I = 0x0

.field public static final STATE_PAUSE:I = 0x5

.field public static final STATE_PRE:I = 0x1
