.class public final Lcom/tencent/tmsecurelite/commom/FileSafeConst$FileSafeErrorCodeConst$InnerEngine;
.super Ljava/lang/Object;
.source "FileSafeConst.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/tmsecurelite/commom/FileSafeConst$FileSafeErrorCodeConst;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InnerEngine"
.end annotation


# static fields
.field public static final ALGORITHM_OPERATION_FAIL:I = 0x8

.field public static final BACKUP_INFO_EMPTY:I = 0x14

.field public static final BACKUP_INFO_INVALIDATE:I = 0x15

.field public static final CHECK_DIRS_ERROR:I = 0x6

.field public static final FILE_IN_ROLLBACK:I = 0x19

.field public static final FILE_IS_EMPTY:I = 0xd

.field public static final FILE_LENGTH_SEEK_ERROR:I = 0x13

.field public static final FILE_NOT_EXIST:I = 0x1

.field public static final HEADER_TO_BYTEARRAY_FAIL:I = 0xf

.field public static final ILLEGAL_ALGORITHM:I = 0x2

.field public static final INSERT_BACKUP_INFO_FAIL:I = 0xe

.field public static final INVALID_INIT_VECTOR:I = 0x4

.field public static final INVALID_INPUT_FILE:I = 0x5

.field public static final LOCAL_VERIFY_FAIL:I = 0x11

.field public static final MD5_VERIFY_ERROR:I = 0x7

.field public static final MOVE_FILE_ERROR:I = 0xb

.field public static final MOVE_FILE_LOST:I = 0x10

.field public static final NO_ERROR:I = 0x0

.field public static final PASSWORD_INCORRECT:I = 0x3

.field public static final READ_FILE_ERROR:I = 0x9

.field public static final SYNC_FAILED_EXEPTION:I = 0x16

.field public static final UNDO_WRITE_FILE_ERROR:I = 0xc

.field public static final UNKNOW_ERROR:I = 0x3e8

.field public static final UPDATE_BACKUP_STATE_ERROR:I = 0x12

.field public static final VERSION_MISMATCH:I = 0x18

.field public static final VERSION_TOO_LOW:I = 0x17

.field public static final WRITE_FILE_ERROR:I = 0xa


# instance fields
.field final synthetic this$1:Lcom/tencent/tmsecurelite/commom/FileSafeConst$FileSafeErrorCodeConst;


# direct methods
.method public constructor <init>(Lcom/tencent/tmsecurelite/commom/FileSafeConst$FileSafeErrorCodeConst;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/tencent/tmsecurelite/commom/FileSafeConst$FileSafeErrorCodeConst$InnerEngine;->this$1:Lcom/tencent/tmsecurelite/commom/FileSafeConst$FileSafeErrorCodeConst;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
