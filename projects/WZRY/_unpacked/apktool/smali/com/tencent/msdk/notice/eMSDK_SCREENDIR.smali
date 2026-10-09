.class public final enum Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;
.super Ljava/lang/Enum;
.source "eMSDK_SCREENDIR.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

.field public static final enum eMSDK_SCREENDIR_LANDSCAPE:Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

.field public static final enum eMSDK_SCREENDIR_PORTRAIT:Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

.field public static final enum eMSDK_SCREENDIR_SENSOR:Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    const-string v1, "eMSDK_SCREENDIR_SENSOR"

    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;->eMSDK_SCREENDIR_SENSOR:Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    .line 14
    new-instance v0, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    const-string v1, "eMSDK_SCREENDIR_PORTRAIT"

    invoke-direct {v0, v1, v3, v3}, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;->eMSDK_SCREENDIR_PORTRAIT:Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    .line 15
    new-instance v0, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    const-string v1, "eMSDK_SCREENDIR_LANDSCAPE"

    invoke-direct {v0, v1, v4, v4}, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;->eMSDK_SCREENDIR_LANDSCAPE:Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    .line 12
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    sget-object v1, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;->eMSDK_SCREENDIR_SENSOR:Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;->eMSDK_SCREENDIR_PORTRAIT:Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;->eMSDK_SCREENDIR_LANDSCAPE:Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;->$VALUES:[Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "val"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;->value:I

    .line 20
    iput p3, p0, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;->value:I

    .line 21
    return-void
.end method

.method public static getEnum(I)Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 24
    const/4 v0, 0x0

    .line 25
    .local v0, "type":Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;
    packed-switch p0, :pswitch_data_0

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad screen dir :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->w(Ljava/lang/String;)V

    .line 37
    sget-object v0, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;->eMSDK_SCREENDIR_SENSOR:Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    .line 40
    :goto_0
    return-object v0

    .line 27
    :pswitch_0
    sget-object v0, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;->eMSDK_SCREENDIR_SENSOR:Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    .line 28
    goto :goto_0

    .line 30
    :pswitch_1
    sget-object v0, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;->eMSDK_SCREENDIR_PORTRAIT:Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    .line 31
    goto :goto_0

    .line 33
    :pswitch_2
    sget-object v0, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;->eMSDK_SCREENDIR_LANDSCAPE:Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    .line 34
    goto :goto_0

    .line 25
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getEnum(Landroid/content/pm/ActivityInfo;)Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;
    .locals 3
    .param p0, "tempActivityInfo"    # Landroid/content/pm/ActivityInfo;

    .prologue
    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "type":Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;
    iget v1, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    iget v2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0x8

    iget v2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-eq v1, v2, :cond_0

    const/16 v1, 0xb

    iget v2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-ne v1, v2, :cond_1

    .line 57
    :cond_0
    sget-object v0, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;->eMSDK_SCREENDIR_LANDSCAPE:Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    .line 70
    :goto_0
    return-object v0

    .line 58
    :cond_1
    const/4 v1, 0x1

    iget v2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-eq v1, v2, :cond_2

    const/4 v1, 0x7

    iget v2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-eq v1, v2, :cond_2

    const/16 v1, 0x9

    iget v2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-eq v1, v2, :cond_2

    const/16 v1, 0xc

    iget v2, p0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    if-ne v1, v2, :cond_3

    .line 66
    :cond_2
    sget-object v0, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;->eMSDK_SCREENDIR_PORTRAIT:Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    goto :goto_0

    .line 68
    :cond_3
    sget-object v0, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;->eMSDK_SCREENDIR_SENSOR:Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    goto :goto_0
.end method

.method public static getEnum(Landroid/content/res/Configuration;)Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;
    .locals 3
    .param p0, "tempConfiguration"    # Landroid/content/res/Configuration;

    .prologue
    .line 74
    const/4 v0, 0x0

    .line 75
    .local v0, "type":Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;
    const/4 v1, 0x2

    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_0

    .line 76
    sget-object v0, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;->eMSDK_SCREENDIR_LANDSCAPE:Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    .line 82
    :goto_0
    return-object v0

    .line 77
    :cond_0
    const/4 v1, 0x1

    iget v2, p0, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v2, :cond_1

    .line 78
    sget-object v0, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;->eMSDK_SCREENDIR_PORTRAIT:Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    goto :goto_0

    .line 80
    :cond_1
    sget-object v0, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;->eMSDK_SCREENDIR_SENSOR:Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 12
    const-class v0, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    return-object v0
.end method

.method public static values()[Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;->$VALUES:[Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    invoke-virtual {v0}, [Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;

    return-object v0
.end method


# virtual methods
.method public val()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/tencent/msdk/notice/eMSDK_SCREENDIR;->value:I

    return v0
.end method
