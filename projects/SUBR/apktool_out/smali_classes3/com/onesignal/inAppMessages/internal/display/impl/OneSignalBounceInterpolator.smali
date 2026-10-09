.class public final Lcom/onesignal/inAppMessages/internal/display/impl/OneSignalBounceInterpolator;
.super Ljava/lang/Object;
.source "OneSignalBounceInterpolator.kt"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0005J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\tH\u0016R\u000e\u0010\u0006\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onesignal/inAppMessages/internal/display/impl/OneSignalBounceInterpolator;",
        "Landroid/view/animation/Interpolator;",
        "amplitude",
        "",
        "frequency",
        "(DD)V",
        "mAmplitude",
        "mFrequency",
        "getInterpolation",
        "",
        "time",
        "com.onesignal.inAppMessages"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private mAmplitude:D

.field private mFrequency:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-wide p1, p0, Lcom/onesignal/inAppMessages/internal/display/impl/OneSignalBounceInterpolator;->mAmplitude:D

    .line 21
    iput-wide p3, p0, Lcom/onesignal/inAppMessages/internal/display/impl/OneSignalBounceInterpolator;->mFrequency:D

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6

    const/4 v0, -0x1

    int-to-double v0, v0

    neg-float v2, p1

    float-to-double v2, v2

    .line 14
    iget-wide v4, p0, Lcom/onesignal/inAppMessages/internal/display/impl/OneSignalBounceInterpolator;->mAmplitude:D

    div-double/2addr v2, v4

    const-wide v4, 0x4005bf0a8b145769L    # Math.E

    .line 12
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double v0, v0, v2

    .line 15
    iget-wide v2, p0, Lcom/onesignal/inAppMessages/internal/display/impl/OneSignalBounceInterpolator;->mFrequency:D

    float-to-double v4, p1

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double v0, v0, v2

    const/4 p1, 0x1

    int-to-double v2, p1

    add-double/2addr v0, v2

    double-to-float p1, v0

    return p1
.end method
