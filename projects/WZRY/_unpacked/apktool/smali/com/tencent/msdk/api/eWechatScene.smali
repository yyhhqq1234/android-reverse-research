.class public final enum Lcom/tencent/msdk/api/eWechatScene;
.super Ljava/lang/Enum;
.source "eWechatScene.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/msdk/api/eWechatScene;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/msdk/api/eWechatScene;

.field public static final enum WechatScene_Session:Lcom/tencent/msdk/api/eWechatScene;

.field public static final enum WechatScene_Timeline:Lcom/tencent/msdk/api/eWechatScene;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/tencent/msdk/api/eWechatScene;

    const-string v1, "WechatScene_Session"

    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/msdk/api/eWechatScene;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/api/eWechatScene;->WechatScene_Session:Lcom/tencent/msdk/api/eWechatScene;

    .line 7
    new-instance v0, Lcom/tencent/msdk/api/eWechatScene;

    const-string v1, "WechatScene_Timeline"

    invoke-direct {v0, v1, v3, v3}, Lcom/tencent/msdk/api/eWechatScene;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/api/eWechatScene;->WechatScene_Timeline:Lcom/tencent/msdk/api/eWechatScene;

    .line 5
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/tencent/msdk/api/eWechatScene;

    sget-object v1, Lcom/tencent/msdk/api/eWechatScene;->WechatScene_Session:Lcom/tencent/msdk/api/eWechatScene;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/msdk/api/eWechatScene;->WechatScene_Timeline:Lcom/tencent/msdk/api/eWechatScene;

    aput-object v1, v0, v3

    sput-object v0, Lcom/tencent/msdk/api/eWechatScene;->$VALUES:[Lcom/tencent/msdk/api/eWechatScene;

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
    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 9
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/msdk/api/eWechatScene;->value:I

    .line 12
    iput p3, p0, Lcom/tencent/msdk/api/eWechatScene;->value:I

    .line 13
    return-void
.end method

.method public static getEnum(I)Lcom/tencent/msdk/api/eWechatScene;
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 16
    const/4 v0, 0x0

    .line 17
    .local v0, "scene":Lcom/tencent/msdk/api/eWechatScene;
    packed-switch p0, :pswitch_data_0

    .line 25
    :goto_0
    return-object v0

    .line 19
    :pswitch_0
    sget-object v0, Lcom/tencent/msdk/api/eWechatScene;->WechatScene_Session:Lcom/tencent/msdk/api/eWechatScene;

    .line 20
    goto :goto_0

    .line 22
    :pswitch_1
    sget-object v0, Lcom/tencent/msdk/api/eWechatScene;->WechatScene_Timeline:Lcom/tencent/msdk/api/eWechatScene;

    goto :goto_0

    .line 17
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/msdk/api/eWechatScene;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/tencent/msdk/api/eWechatScene;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/api/eWechatScene;

    return-object v0
.end method

.method public static values()[Lcom/tencent/msdk/api/eWechatScene;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/tencent/msdk/api/eWechatScene;->$VALUES:[Lcom/tencent/msdk/api/eWechatScene;

    invoke-virtual {v0}, [Lcom/tencent/msdk/api/eWechatScene;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/msdk/api/eWechatScene;

    return-object v0
.end method


# virtual methods
.method public val()I
    .locals 1

    .prologue
    .line 29
    iget v0, p0, Lcom/tencent/msdk/api/eWechatScene;->value:I

    return v0
.end method
