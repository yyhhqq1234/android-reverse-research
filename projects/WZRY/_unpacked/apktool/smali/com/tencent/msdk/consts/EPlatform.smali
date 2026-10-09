.class public final enum Lcom/tencent/msdk/consts/EPlatform;
.super Ljava/lang/Enum;
.source "EPlatform.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/msdk/consts/EPlatform;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/msdk/consts/EPlatform;

.field public static final enum ePlatform_None:Lcom/tencent/msdk/consts/EPlatform;

.field public static final enum ePlatform_QQ:Lcom/tencent/msdk/consts/EPlatform;

.field public static final enum ePlatform_QQHall:Lcom/tencent/msdk/consts/EPlatform;

.field public static final enum ePlatform_Weixin:Lcom/tencent/msdk/consts/EPlatform;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/tencent/msdk/consts/EPlatform;

    const-string v1, "ePlatform_None"

    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/msdk/consts/EPlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_None:Lcom/tencent/msdk/consts/EPlatform;

    new-instance v0, Lcom/tencent/msdk/consts/EPlatform;

    const-string v1, "ePlatform_Weixin"

    invoke-direct {v0, v1, v3, v3}, Lcom/tencent/msdk/consts/EPlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_Weixin:Lcom/tencent/msdk/consts/EPlatform;

    new-instance v0, Lcom/tencent/msdk/consts/EPlatform;

    const-string v1, "ePlatform_QQ"

    invoke-direct {v0, v1, v4, v4}, Lcom/tencent/msdk/consts/EPlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_QQ:Lcom/tencent/msdk/consts/EPlatform;

    new-instance v0, Lcom/tencent/msdk/consts/EPlatform;

    const-string v1, "ePlatform_QQHall"

    invoke-direct {v0, v1, v5, v6}, Lcom/tencent/msdk/consts/EPlatform;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_QQHall:Lcom/tencent/msdk/consts/EPlatform;

    .line 5
    new-array v0, v6, [Lcom/tencent/msdk/consts/EPlatform;

    sget-object v1, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_None:Lcom/tencent/msdk/consts/EPlatform;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_Weixin:Lcom/tencent/msdk/consts/EPlatform;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_QQ:Lcom/tencent/msdk/consts/EPlatform;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_QQHall:Lcom/tencent/msdk/consts/EPlatform;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tencent/msdk/consts/EPlatform;->$VALUES:[Lcom/tencent/msdk/consts/EPlatform;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/msdk/consts/EPlatform;->value:I

    .line 10
    iput p3, p0, Lcom/tencent/msdk/consts/EPlatform;->value:I

    .line 11
    return-void
.end method

.method public static getEnum(I)Lcom/tencent/msdk/consts/EPlatform;
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 26
    const/4 v0, 0x0

    .line 27
    .local v0, "pf":Lcom/tencent/msdk/consts/EPlatform;
    packed-switch p0, :pswitch_data_0

    .line 36
    sget-object v0, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_QQ:Lcom/tencent/msdk/consts/EPlatform;

    .line 39
    :goto_0
    return-object v0

    .line 29
    :pswitch_0
    sget-object v0, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_None:Lcom/tencent/msdk/consts/EPlatform;

    .line 30
    goto :goto_0

    .line 32
    :pswitch_1
    sget-object v0, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_Weixin:Lcom/tencent/msdk/consts/EPlatform;

    .line 33
    goto :goto_0

    .line 27
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static str2EPlat(Ljava/lang/String;)Lcom/tencent/msdk/consts/EPlatform;
    .locals 1
    .param p0, "plat"    # Ljava/lang/String;

    .prologue
    .line 15
    const-string v0, "qq_m"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16
    sget-object v0, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_QQ:Lcom/tencent/msdk/consts/EPlatform;

    .line 22
    :goto_0
    return-object v0

    .line 17
    :cond_0
    const-string v0, "mobile"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18
    sget-object v0, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_QQHall:Lcom/tencent/msdk/consts/EPlatform;

    goto :goto_0

    .line 19
    :cond_1
    const-string/jumbo v0, "wechat"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 20
    sget-object v0, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_Weixin:Lcom/tencent/msdk/consts/EPlatform;

    goto :goto_0

    .line 22
    :cond_2
    sget-object v0, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_None:Lcom/tencent/msdk/consts/EPlatform;

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/msdk/consts/EPlatform;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/tencent/msdk/consts/EPlatform;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/consts/EPlatform;

    return-object v0
.end method

.method public static values()[Lcom/tencent/msdk/consts/EPlatform;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/tencent/msdk/consts/EPlatform;->$VALUES:[Lcom/tencent/msdk/consts/EPlatform;

    invoke-virtual {v0}, [Lcom/tencent/msdk/consts/EPlatform;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/msdk/consts/EPlatform;

    return-object v0
.end method


# virtual methods
.method public val()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/tencent/msdk/consts/EPlatform;->value:I

    return v0
.end method
