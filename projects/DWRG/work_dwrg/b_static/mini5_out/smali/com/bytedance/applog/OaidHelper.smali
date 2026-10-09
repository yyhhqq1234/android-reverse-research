.class public Lcom/bytedance/applog/OaidHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static oadiTimeout:I = 0x64


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static initOaidEarly(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lgbsdk/optional/applog/abdx;->a(Landroid/content/Context;)V

    return-void
.end method
