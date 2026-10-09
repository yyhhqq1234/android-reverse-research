.class public Lcom/netease/loginapi/qrcode/CaptureInterface$CaptureException;
.super Ljava/lang/RuntimeException;
.source "Proguard"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/loginapi/qrcode/CaptureInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CaptureException"
.end annotation


# static fields
.field public static final serialVersionUID:J = 0x47492e2020822303L


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static from(Ljava/lang/Throwable;)Lcom/netease/loginapi/qrcode/CaptureInterface$CaptureException;
    .locals 1

    .line 1
    new-instance v0, Lcom/netease/loginapi/qrcode/CaptureInterface$CaptureException;

    invoke-direct {v0, p0}, Lcom/netease/loginapi/qrcode/CaptureInterface$CaptureException;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method
