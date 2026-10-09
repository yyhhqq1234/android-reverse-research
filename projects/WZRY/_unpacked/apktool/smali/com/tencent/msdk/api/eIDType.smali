.class public final enum Lcom/tencent/msdk/api/eIDType;
.super Ljava/lang/Enum;
.source "eIDType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/msdk/api/eIDType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/msdk/api/eIDType;

.field public static final enum HKMacaoPass:Lcom/tencent/msdk/api/eIDType;

.field public static final enum HKMacaoTaiwanID:Lcom/tencent/msdk/api/eIDType;

.field public static final enum IDCards:Lcom/tencent/msdk/api/eIDType;

.field public static final enum Passport:Lcom/tencent/msdk/api/eIDType;

.field public static final enum PoliceCertificate:Lcom/tencent/msdk/api/eIDType;


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

    .line 10
    new-instance v0, Lcom/tencent/msdk/api/eIDType;

    const-string v1, "IDCards"

    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/msdk/api/eIDType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/api/eIDType;->IDCards:Lcom/tencent/msdk/api/eIDType;

    .line 11
    new-instance v0, Lcom/tencent/msdk/api/eIDType;

    const-string v1, "HKMacaoPass"

    invoke-direct {v0, v1, v3, v3}, Lcom/tencent/msdk/api/eIDType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/api/eIDType;->HKMacaoPass:Lcom/tencent/msdk/api/eIDType;

    .line 12
    new-instance v0, Lcom/tencent/msdk/api/eIDType;

    const-string v1, "HKMacaoTaiwanID"

    invoke-direct {v0, v1, v4, v4}, Lcom/tencent/msdk/api/eIDType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/api/eIDType;->HKMacaoTaiwanID:Lcom/tencent/msdk/api/eIDType;

    .line 13
    new-instance v0, Lcom/tencent/msdk/api/eIDType;

    const-string v1, "Passport"

    invoke-direct {v0, v1, v5, v5}, Lcom/tencent/msdk/api/eIDType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/api/eIDType;->Passport:Lcom/tencent/msdk/api/eIDType;

    .line 14
    new-instance v0, Lcom/tencent/msdk/api/eIDType;

    const-string v1, "PoliceCertificate"

    invoke-direct {v0, v1, v6, v6}, Lcom/tencent/msdk/api/eIDType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/msdk/api/eIDType;->PoliceCertificate:Lcom/tencent/msdk/api/eIDType;

    .line 9
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/tencent/msdk/api/eIDType;

    sget-object v1, Lcom/tencent/msdk/api/eIDType;->IDCards:Lcom/tencent/msdk/api/eIDType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/msdk/api/eIDType;->HKMacaoPass:Lcom/tencent/msdk/api/eIDType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/msdk/api/eIDType;->HKMacaoTaiwanID:Lcom/tencent/msdk/api/eIDType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/msdk/api/eIDType;->Passport:Lcom/tencent/msdk/api/eIDType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/msdk/api/eIDType;->PoliceCertificate:Lcom/tencent/msdk/api/eIDType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/tencent/msdk/api/eIDType;->$VALUES:[Lcom/tencent/msdk/api/eIDType;

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
    .line 17
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/msdk/api/eIDType;->value:I

    .line 18
    iput p3, p0, Lcom/tencent/msdk/api/eIDType;->value:I

    .line 19
    return-void
.end method

.method public static getEnum(I)Lcom/tencent/msdk/api/eIDType;
    .locals 1
    .param p0, "i"    # I

    .prologue
    .line 22
    const/4 v0, 0x0

    .line 23
    .local v0, "pf":Lcom/tencent/msdk/api/eIDType;
    packed-switch p0, :pswitch_data_0

    .line 40
    sget-object v0, Lcom/tencent/msdk/api/eIDType;->IDCards:Lcom/tencent/msdk/api/eIDType;

    .line 43
    :goto_0
    return-object v0

    .line 25
    :pswitch_0
    sget-object v0, Lcom/tencent/msdk/api/eIDType;->IDCards:Lcom/tencent/msdk/api/eIDType;

    .line 26
    goto :goto_0

    .line 28
    :pswitch_1
    sget-object v0, Lcom/tencent/msdk/api/eIDType;->HKMacaoPass:Lcom/tencent/msdk/api/eIDType;

    .line 29
    goto :goto_0

    .line 31
    :pswitch_2
    sget-object v0, Lcom/tencent/msdk/api/eIDType;->HKMacaoTaiwanID:Lcom/tencent/msdk/api/eIDType;

    .line 32
    goto :goto_0

    .line 34
    :pswitch_3
    sget-object v0, Lcom/tencent/msdk/api/eIDType;->Passport:Lcom/tencent/msdk/api/eIDType;

    .line 35
    goto :goto_0

    .line 37
    :pswitch_4
    sget-object v0, Lcom/tencent/msdk/api/eIDType;->PoliceCertificate:Lcom/tencent/msdk/api/eIDType;

    .line 38
    goto :goto_0

    .line 23
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/msdk/api/eIDType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/tencent/msdk/api/eIDType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/msdk/api/eIDType;

    return-object v0
.end method

.method public static values()[Lcom/tencent/msdk/api/eIDType;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/tencent/msdk/api/eIDType;->$VALUES:[Lcom/tencent/msdk/api/eIDType;

    invoke-virtual {v0}, [Lcom/tencent/msdk/api/eIDType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/msdk/api/eIDType;

    return-object v0
.end method


# virtual methods
.method public val()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/tencent/msdk/api/eIDType;->value:I

    return v0
.end method
