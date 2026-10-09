.class public Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;
.super Ljava/lang/Object;
.source "PluginNotificationManager.java"


# annotations
.annotation build Lcom/tencent/component/annotation/PluginApi;
    since = 0x12c
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/component/plugin/PluginNotificationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PluginNotification"
.end annotation


# instance fields
.field public autoCancel:Z
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation
.end field

.field public contentIntent:Landroid/app/PendingIntent;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation
.end field

.field public contentText:Ljava/lang/CharSequence;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation
.end field

.field public contentTitle:Ljava/lang/CharSequence;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation
.end field

.field public largeIcon:Landroid/graphics/drawable/Drawable;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation
.end field

.field public ledARGB:I

.field public ledOffMS:I

.field public ledOnMS:I

.field public number:I
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation
.end field

.field public ongoing:Z
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation
.end field

.field public onlyAlertOnce:Z
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation
.end field

.field public priority:I
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation
.end field

.field public progress:I
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation
.end field

.field public progressIndeterminate:Z
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation
.end field

.field public progressMax:I
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation
.end field

.field public setLigths:Z

.field public subText:Ljava/lang/CharSequence;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation
.end field

.field public tickerText:Ljava/lang/CharSequence;
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation
.end field

.field public useChronometer:Z
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation
.end field

.field public vibratePattern:[J
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation
.end field

.field public when:J
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation

    .prologue
    const/4 v0, -0x1

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    iput v0, p0, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->progressMax:I

    .line 228
    iput v0, p0, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->progress:I

    .line 241
    iput v0, p0, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->number:I

    .line 243
    iput v0, p0, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->priority:I

    .line 247
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->when:J

    .line 259
    return-void
.end method


# virtual methods
.method public setLights(III)V
    .locals 1
    .param p1, "argb"    # I
    .param p2, "onMs"    # I
    .param p3, "offMs"    # I
    .annotation build Lcom/tencent/component/annotation/PluginApi;
        since = 0x12c
    .end annotation

    .prologue
    .line 268
    iput p1, p0, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->ledARGB:I

    .line 269
    iput p2, p0, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->ledOnMS:I

    .line 270
    iput p3, p0, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->ledOffMS:I

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/component/plugin/PluginNotificationManager$PluginNotification;->setLigths:Z

    .line 273
    return-void
.end method
