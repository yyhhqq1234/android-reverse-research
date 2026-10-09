.class public Lcom/netease/dwrg/WidgetProvider4052951459;
.super Lorg/gux/widget/provider/WidgetLargeProvider;
.source "WidgetProvider4052951459.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lorg/gux/widget/provider/WidgetLargeProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 9
    const-string v0, ""

    return-object v0
.end method

.method public getDefaultLayout()I
    .locals 1

    .line 19
    sget v0, Lcom/netease/dwrg/R$layout;->widget_snapshot_4052951459:I

    return v0
.end method

.method public getFigmaFilePath()Ljava/lang/String;
    .locals 1

    .line 14
    const-string v0, "4052951459.json"

    return-object v0
.end method
