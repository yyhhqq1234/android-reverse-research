.class public final Lcom/tencent/tmsecurelite/commom/FileSafeConst$FileSafeErrorCodeConst$OuterEngine;
.super Ljava/lang/Object;
.source "FileSafeConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tmsecurelite/commom/FileSafeConst$FileSafeErrorCodeConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "OuterEngine"
.end annotation


# static fields
.field public static final ACTION_FINISH_STATUS_ALL_DONE:I = 0x7cf

.field public static final DB_OPERATION_FAILED:I = 0x3eb

.field public static final FILE_SAFE_ACTION_ERROR_BASE:I = 0x3e8

.field public static final FILE_SAFE_ENGINE_INNER_UNKNOWN_ERROR:I = 0x3e8

.field public static final FILE_SAFE_SERVICE_BUSY:I = 0x3ed

.field public static final IPC_ERROR:I = 0x7ce

.field public static final NO_STORAGE_PATITION:I = 0x3ea

.field public static final PRE_PROCESS_ERROR:I = 0x3e9

.field public static final SD_CARD_UNMOUNTED:I = 0x3ef

.field public static final SD_CARD_UNRELIABLE:I = 0x3ec

.field public static final USB_PLUGIN_TO_PC:I = 0x3ee


# instance fields
.field final synthetic this$1:Lcom/tencent/tmsecurelite/commom/FileSafeConst$FileSafeErrorCodeConst;


# direct methods
.method public constructor <init>(Lcom/tencent/tmsecurelite/commom/FileSafeConst$FileSafeErrorCodeConst;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/tencent/tmsecurelite/commom/FileSafeConst$FileSafeErrorCodeConst$OuterEngine;->this$1:Lcom/tencent/tmsecurelite/commom/FileSafeConst$FileSafeErrorCodeConst;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
