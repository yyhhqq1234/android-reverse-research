.class public final enum Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;
.super Ljava/lang/Enum;
.source "eMSG_NOTICETYPE.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;

.field public static final enum eMSG_NOTICETYPE_ALERT:Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;

.field public static final enum eMSG_NOTICETYPE_ALL:Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;

.field public static final enum eMSG_NOTICETYPE_SCROLL:Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;

    const-string v1, "eMSG_NOTICETYPE_ALERT"

    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;->eMSG_NOTICETYPE_ALERT:Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;

    .line 11
    new-instance v0, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;

    const-string v1, "eMSG_NOTICETYPE_SCROLL"

    invoke-direct {v0, v1, v3, v3}, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;->eMSG_NOTICETYPE_SCROLL:Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;

    .line 12
    new-instance v0, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;

    const-string v1, "eMSG_NOTICETYPE_ALL"

    invoke-direct {v0, v1, v4, v4}, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;->eMSG_NOTICETYPE_ALL:Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;

    .line 9
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;

    sget-object v1, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;->eMSG_NOTICETYPE_ALERT:Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;->eMSG_NOTICETYPE_SCROLL:Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;->eMSG_NOTICETYPE_ALL:Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;->$VALUES:[Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;->value:I

    .line 15
    iput p3, p0, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;->value:I

    .line 16
    return-void
.end method

.method public static checkIsValidType(Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;)Z
    .locals 2
    .param p0, "type"    # Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;

    .prologue
    const/4 v0, 0x0

    .line 43
    if-nez p0, :cond_1

    .line 50
    :cond_0
    :goto_0
    return v0

    .line 45
    :cond_1
    sget-object v1, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;->eMSG_NOTICETYPE_ALERT:Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;

    if-eq v1, p0, :cond_2

    sget-object v1, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;->eMSG_NOTICETYPE_SCROLL:Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;

    if-eq v1, p0, :cond_2

    sget-object v1, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;->eMSG_NOTICETYPE_ALL:Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;

    if-ne v1, p0, :cond_0

    .line 48
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getEnum(I)Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;
    .locals 3
    .param p0, "i"    # I

    .prologue
    .line 19
    const/4 v0, 0x0

    .line 20
    .local v0, "type":Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;
    packed-switch p0, :pswitch_data_0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bad notice type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/msdk/tools/Logger;->e(Ljava/lang/String;)V

    .line 32
    sget-object v0, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;->eMSG_NOTICETYPE_ALERT:Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;

    .line 35
    :goto_0
    return-object v0

    .line 22
    :pswitch_0
    sget-object v0, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;->eMSG_NOTICETYPE_ALERT:Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;

    .line 23
    goto :goto_0

    .line 25
    :pswitch_1
    sget-object v0, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;->eMSG_NOTICETYPE_SCROLL:Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;

    .line 26
    goto :goto_0

    .line 28
    :pswitch_2
    sget-object v0, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;->eMSG_NOTICETYPE_ALL:Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;

    .line 29
    goto :goto_0

    .line 20
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;

    return-object v0
.end method

.method public static values()[Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;->$VALUES:[Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;

    invoke-virtual {v0}, [Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;

    return-object v0
.end method


# virtual methods
.method public val()I
    .locals 1

    .prologue
    .line 39
    iget v0, p0, Lcom/tencent/msdk/notice/eMSG_NOTICETYPE;->value:I

    return v0
.end method
