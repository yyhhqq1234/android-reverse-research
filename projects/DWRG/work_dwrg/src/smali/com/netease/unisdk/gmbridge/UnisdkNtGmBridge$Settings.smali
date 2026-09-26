.class public Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$Settings;
.super Ljava/lang/Object;
.source "UnisdkNtGmBridge.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# static fields
.field public static bgColor:I

.field public static bgDrawable:Landroid/graphics/drawable/Drawable;

.field public static heightPercent:F

.field public static widthPercent:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 339
    const/4 v0, 0x0

    sput-object v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$Settings;->bgDrawable:Landroid/graphics/drawable/Drawable;

    .line 340
    const/4 v0, 0x0

    sput v0, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$Settings;->bgColor:I

    .line 341
    sput v1, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$Settings;->widthPercent:F

    .line 342
    sput v1, Lcom/netease/unisdk/gmbridge/UnisdkNtGmBridge$Settings;->heightPercent:F

    .line 343
    return-void
.end method
