.class public final enum Lcom/tencent/msdk/api/eADCallNum;
.super Ljava/lang/Enum;
.source "eADCallNum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/msdk/api/eADCallNum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/msdk/api/eADCallNum;

.field public static final enum Type_Three:Lcom/tencent/msdk/api/eADCallNum;

.field public static final enum Type_Two:Lcom/tencent/msdk/api/eADCallNum;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/tencent/msdk/api/eADCallNum;

    const-string v1, "Type_Two"

    invoke-direct {v0, v1, v3, v5}, Lcom/tencent/msdk/api/eADCallNum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/api/eADCallNum;->Type_Two:Lcom/tencent/msdk/api/eADCallNum;

    .line 5
    new-instance v0, Lcom/tencent/msdk/api/eADCallNum;

    const-string v1, "Type_Three"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2}, Lcom/tencent/msdk/api/eADCallNum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/api/eADCallNum;->Type_Three:Lcom/tencent/msdk/api/eADCallNum;

    .line 3
    new-array v0, v5, [Lcom/tencent/msdk/api/eADCallNum;

    sget-object v1, Lcom/tencent/msdk/api/eADCallNum;->Type_Two:Lcom/tencent/msdk/api/eADCallNum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/msdk/api/eADCallNum;->Type_Three:Lcom/tencent/msdk/api/eADCallNum;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/msdk/api/eADCallNum;->$VALUES:[Lcom/tencent/msdk/api/eADCallNum;

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

    .line 7
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/msdk/api/eADCallNum;->value:I

    .line 10
    iput p3, p0, Lcom/tencent/msdk/api/eADCallNum;->value:I

    .line 11
    return-void
.end method

.method public static getEnum(I)Lcom/tencent/msdk/api/eADCallNum;
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 14
    const/4 v0, 0x0

    .line 15
    .local v0, "scene":Lcom/tencent/msdk/api/eADCallNum;
    packed-switch p0, :pswitch_data_0

    .line 23
    :goto_0
    return-object v0

    .line 17
    :pswitch_0
    sget-object v0, Lcom/tencent/msdk/api/eADCallNum;->Type_Two:Lcom/tencent/msdk/api/eADCallNum;

    .line 18
    goto :goto_0

    .line 20
    :pswitch_1
    sget-object v0, Lcom/tencent/msdk/api/eADCallNum;->Type_Three:Lcom/tencent/msdk/api/eADCallNum;

    goto :goto_0

    .line 15
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/msdk/api/eADCallNum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/tencent/msdk/api/eADCallNum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/api/eADCallNum;

    return-object v0
.end method

.method public static values()[Lcom/tencent/msdk/api/eADCallNum;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/tencent/msdk/api/eADCallNum;->$VALUES:[Lcom/tencent/msdk/api/eADCallNum;

    invoke-virtual {v0}, [Lcom/tencent/msdk/api/eADCallNum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/msdk/api/eADCallNum;

    return-object v0
.end method


# virtual methods
.method public val()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/tencent/msdk/api/eADCallNum;->value:I

    return v0
.end method
