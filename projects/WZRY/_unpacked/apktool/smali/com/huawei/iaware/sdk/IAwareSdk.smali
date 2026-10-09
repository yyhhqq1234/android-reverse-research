.class public Lcom/huawei/iaware/sdk/IAwareSdk;
.super Ljava/lang/Object;


# static fields
.field private static final FIRST_ASYNC_CALL_TRANSACTION:I = 0x2711

.field private static final FIRST_SYNC_CALL_TRANSACTION:I = 0x1

.field private static final LAST_ASYNC_CALL_TRANSACTION:I = 0xffffff

.field private static final LAST_SYNC_CALL_TRANSACTION:I = 0x2710

.field private static final TRANSACTION_ASYNC_REPORT_DATA:I = 0x2711

.field private static final TRANSACTION_REPORT_DATA:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asyncReportData(ILjava/lang/String;J)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/huawei/iaware/sdk/IAwareSdk;->reportData(ILjava/lang/String;Z)V

    return-void
.end method

.method public static reportData(ILjava/lang/String;J)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/huawei/iaware/sdk/IAwareSdk;->reportData(ILjava/lang/String;Z)V

    return-void
.end method

.method private static reportData(ILjava/lang/String;Z)V
    .locals 6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    invoke-virtual {v1, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/16 v0, 0x2711

    :goto_0
    invoke-static {v0, v1, v2, p0}, Landroid/rms/iaware/IAwareSdkCore;->handleEvent(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
