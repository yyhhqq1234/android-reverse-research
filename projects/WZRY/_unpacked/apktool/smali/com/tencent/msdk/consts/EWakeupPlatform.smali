.class public final enum Lcom/tencent/msdk/consts/EWakeupPlatform;
.super Ljava/lang/Enum;
.source "EWakeupPlatform.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/msdk/consts/EWakeupPlatform;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/msdk/consts/EWakeupPlatform;

.field public static final enum ePlatform_QQHall:Lcom/tencent/msdk/consts/EWakeupPlatform;

.field public static final enum eWakeupPlatform_QQ:Lcom/tencent/msdk/consts/EWakeupPlatform;

.field public static final enum eWakeupPlatform_TencentMsdk:Lcom/tencent/msdk/consts/EWakeupPlatform;

.field public static final enum eWakeupPlatform_Weixin:Lcom/tencent/msdk/consts/EWakeupPlatform;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 4
    new-instance v0, Lcom/tencent/msdk/consts/EWakeupPlatform;

    const-string v1, "eWakeupPlatform_Weixin"

    invoke-direct {v0, v1, v5, v3}, Lcom/tencent/msdk/consts/EWakeupPlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/consts/EWakeupPlatform;->eWakeupPlatform_Weixin:Lcom/tencent/msdk/consts/EWakeupPlatform;

    new-instance v0, Lcom/tencent/msdk/consts/EWakeupPlatform;

    const-string v1, "eWakeupPlatform_QQ"

    invoke-direct {v0, v1, v3, v4}, Lcom/tencent/msdk/consts/EWakeupPlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/consts/EWakeupPlatform;->eWakeupPlatform_QQ:Lcom/tencent/msdk/consts/EWakeupPlatform;

    new-instance v0, Lcom/tencent/msdk/consts/EWakeupPlatform;

    const-string v1, "ePlatform_QQHall"

    invoke-direct {v0, v1, v4, v7}, Lcom/tencent/msdk/consts/EWakeupPlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/consts/EWakeupPlatform;->ePlatform_QQHall:Lcom/tencent/msdk/consts/EWakeupPlatform;

    .line 5
    new-instance v0, Lcom/tencent/msdk/consts/EWakeupPlatform;

    const-string v1, "eWakeupPlatform_TencentMsdk"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v6, v2}, Lcom/tencent/msdk/consts/EWakeupPlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/consts/EWakeupPlatform;->eWakeupPlatform_TencentMsdk:Lcom/tencent/msdk/consts/EWakeupPlatform;

    .line 3
    new-array v0, v7, [Lcom/tencent/msdk/consts/EWakeupPlatform;

    sget-object v1, Lcom/tencent/msdk/consts/EWakeupPlatform;->eWakeupPlatform_Weixin:Lcom/tencent/msdk/consts/EWakeupPlatform;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/msdk/consts/EWakeupPlatform;->eWakeupPlatform_QQ:Lcom/tencent/msdk/consts/EWakeupPlatform;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/msdk/consts/EWakeupPlatform;->ePlatform_QQHall:Lcom/tencent/msdk/consts/EWakeupPlatform;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/msdk/consts/EWakeupPlatform;->eWakeupPlatform_TencentMsdk:Lcom/tencent/msdk/consts/EWakeupPlatform;

    aput-object v1, v0, v6

    sput-object v0, Lcom/tencent/msdk/consts/EWakeupPlatform;->$VALUES:[Lcom/tencent/msdk/consts/EWakeupPlatform;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/msdk/consts/EWakeupPlatform;->value:I

    .line 9
    iput p3, p0, Lcom/tencent/msdk/consts/EWakeupPlatform;->value:I

    .line 10
    return-void
.end method

.method public static getEnum(I)Lcom/tencent/msdk/consts/EWakeupPlatform;
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 13
    const/4 v0, 0x0

    .line 14
    .local v0, "pf":Lcom/tencent/msdk/consts/EWakeupPlatform;
    sparse-switch p0, :sswitch_data_0

    .line 24
    :goto_0
    sget-object v0, Lcom/tencent/msdk/consts/EWakeupPlatform;->eWakeupPlatform_QQ:Lcom/tencent/msdk/consts/EWakeupPlatform;

    .line 27
    :goto_1
    return-object v0

    .line 17
    :sswitch_0
    sget-object v0, Lcom/tencent/msdk/consts/EWakeupPlatform;->eWakeupPlatform_Weixin:Lcom/tencent/msdk/consts/EWakeupPlatform;

    .line 18
    goto :goto_1

    .line 20
    :sswitch_1
    sget-object v0, Lcom/tencent/msdk/consts/EWakeupPlatform;->eWakeupPlatform_QQ:Lcom/tencent/msdk/consts/EWakeupPlatform;

    .line 22
    :sswitch_2
    sget-object v0, Lcom/tencent/msdk/consts/EWakeupPlatform;->eWakeupPlatform_TencentMsdk:Lcom/tencent/msdk/consts/EWakeupPlatform;

    goto :goto_0

    .line 14
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/msdk/consts/EWakeupPlatform;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/tencent/msdk/consts/EWakeupPlatform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/consts/EWakeupPlatform;

    return-object v0
.end method

.method public static values()[Lcom/tencent/msdk/consts/EWakeupPlatform;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/tencent/msdk/consts/EWakeupPlatform;->$VALUES:[Lcom/tencent/msdk/consts/EWakeupPlatform;

    invoke-virtual {v0}, [Lcom/tencent/msdk/consts/EWakeupPlatform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/msdk/consts/EWakeupPlatform;

    return-object v0
.end method


# virtual methods
.method public val()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/tencent/msdk/consts/EWakeupPlatform;->value:I

    return v0
.end method
