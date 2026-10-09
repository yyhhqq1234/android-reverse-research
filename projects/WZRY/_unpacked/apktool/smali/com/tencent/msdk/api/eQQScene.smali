.class public final enum Lcom/tencent/msdk/api/eQQScene;
.super Ljava/lang/Enum;
.source "eQQScene.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/msdk/api/eQQScene;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/msdk/api/eQQScene;

.field public static final enum QQScene_None:Lcom/tencent/msdk/api/eQQScene;

.field public static final enum QQScene_QZone:Lcom/tencent/msdk/api/eQQScene;

.field public static final enum QQScene_Session:Lcom/tencent/msdk/api/eQQScene;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/tencent/msdk/api/eQQScene;

    const-string v1, "QQScene_None"

    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/msdk/api/eQQScene;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/api/eQQScene;->QQScene_None:Lcom/tencent/msdk/api/eQQScene;

    .line 5
    new-instance v0, Lcom/tencent/msdk/api/eQQScene;

    const-string v1, "QQScene_QZone"

    invoke-direct {v0, v1, v3, v3}, Lcom/tencent/msdk/api/eQQScene;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/api/eQQScene;->QQScene_QZone:Lcom/tencent/msdk/api/eQQScene;

    .line 6
    new-instance v0, Lcom/tencent/msdk/api/eQQScene;

    const-string v1, "QQScene_Session"

    invoke-direct {v0, v1, v4, v4}, Lcom/tencent/msdk/api/eQQScene;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/api/eQQScene;->QQScene_Session:Lcom/tencent/msdk/api/eQQScene;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tencent/msdk/api/eQQScene;

    sget-object v1, Lcom/tencent/msdk/api/eQQScene;->QQScene_None:Lcom/tencent/msdk/api/eQQScene;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/msdk/api/eQQScene;->QQScene_QZone:Lcom/tencent/msdk/api/eQQScene;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/msdk/api/eQQScene;->QQScene_Session:Lcom/tencent/msdk/api/eQQScene;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/msdk/api/eQQScene;->$VALUES:[Lcom/tencent/msdk/api/eQQScene;

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
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 8
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/msdk/api/eQQScene;->value:I

    .line 11
    iput p3, p0, Lcom/tencent/msdk/api/eQQScene;->value:I

    .line 12
    return-void
.end method

.method public static getEnum(I)Lcom/tencent/msdk/api/eQQScene;
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 15
    const/4 v0, 0x0

    .line 16
    .local v0, "scene":Lcom/tencent/msdk/api/eQQScene;
    packed-switch p0, :pswitch_data_0

    .line 27
    :goto_0
    return-object v0

    .line 18
    :pswitch_0
    sget-object v0, Lcom/tencent/msdk/api/eQQScene;->QQScene_None:Lcom/tencent/msdk/api/eQQScene;

    .line 19
    goto :goto_0

    .line 21
    :pswitch_1
    sget-object v0, Lcom/tencent/msdk/api/eQQScene;->QQScene_QZone:Lcom/tencent/msdk/api/eQQScene;

    .line 22
    goto :goto_0

    .line 24
    :pswitch_2
    sget-object v0, Lcom/tencent/msdk/api/eQQScene;->QQScene_Session:Lcom/tencent/msdk/api/eQQScene;

    goto :goto_0

    .line 16
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/msdk/api/eQQScene;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/tencent/msdk/api/eQQScene;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/api/eQQScene;

    return-object v0
.end method

.method public static values()[Lcom/tencent/msdk/api/eQQScene;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/tencent/msdk/api/eQQScene;->$VALUES:[Lcom/tencent/msdk/api/eQQScene;

    invoke-virtual {v0}, [Lcom/tencent/msdk/api/eQQScene;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/msdk/api/eQQScene;

    return-object v0
.end method


# virtual methods
.method public val()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/tencent/msdk/api/eQQScene;->value:I

    return v0
.end method
