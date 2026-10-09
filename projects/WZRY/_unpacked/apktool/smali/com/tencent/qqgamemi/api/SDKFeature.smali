.class public final enum Lcom/tencent/qqgamemi/api/SDKFeature;
.super Ljava/lang/Enum;
.source "SDKFeature.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/qqgamemi/api/SDKFeature;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/qqgamemi/api/SDKFeature;

.field public static final enum InGameAudio:Lcom/tencent/qqgamemi/api/SDKFeature;

.field public static final enum Maintaining:Lcom/tencent/qqgamemi/api/SDKFeature;

.field public static final enum Manual:Lcom/tencent/qqgamemi/api/SDKFeature;

.field public static final enum MixBgmAudio:Lcom/tencent/qqgamemi/api/SDKFeature;

.field public static final enum Moment:Lcom/tencent/qqgamemi/api/SDKFeature;

.field public static final enum Report:Lcom/tencent/qqgamemi/api/SDKFeature;

.field public static final enum SgameAr:Lcom/tencent/qqgamemi/api/SDKFeature;


# instance fields
.field private mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 4
    new-instance v0, Lcom/tencent/qqgamemi/api/SDKFeature;

    const-string v1, "Moment"

    invoke-direct {v0, v1, v7, v4}, Lcom/tencent/qqgamemi/api/SDKFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qqgamemi/api/SDKFeature;->Moment:Lcom/tencent/qqgamemi/api/SDKFeature;

    .line 5
    new-instance v0, Lcom/tencent/qqgamemi/api/SDKFeature;

    const-string v1, "Manual"

    invoke-direct {v0, v1, v4, v5}, Lcom/tencent/qqgamemi/api/SDKFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qqgamemi/api/SDKFeature;->Manual:Lcom/tencent/qqgamemi/api/SDKFeature;

    .line 6
    new-instance v0, Lcom/tencent/qqgamemi/api/SDKFeature;

    const-string v1, "InGameAudio"

    invoke-direct {v0, v1, v5, v6}, Lcom/tencent/qqgamemi/api/SDKFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qqgamemi/api/SDKFeature;->InGameAudio:Lcom/tencent/qqgamemi/api/SDKFeature;

    .line 7
    new-instance v0, Lcom/tencent/qqgamemi/api/SDKFeature;

    const-string v1, "Maintaining"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v8, v2}, Lcom/tencent/qqgamemi/api/SDKFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qqgamemi/api/SDKFeature;->Maintaining:Lcom/tencent/qqgamemi/api/SDKFeature;

    .line 8
    new-instance v0, Lcom/tencent/qqgamemi/api/SDKFeature;

    const-string v1, "Report"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v6, v2}, Lcom/tencent/qqgamemi/api/SDKFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qqgamemi/api/SDKFeature;->Report:Lcom/tencent/qqgamemi/api/SDKFeature;

    .line 9
    new-instance v0, Lcom/tencent/qqgamemi/api/SDKFeature;

    const-string v1, "MixBgmAudio"

    const/4 v2, 0x5

    const/16 v3, 0x20

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqgamemi/api/SDKFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qqgamemi/api/SDKFeature;->MixBgmAudio:Lcom/tencent/qqgamemi/api/SDKFeature;

    .line 10
    new-instance v0, Lcom/tencent/qqgamemi/api/SDKFeature;

    const-string v1, "SgameAr"

    const/4 v2, 0x6

    const/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/qqgamemi/api/SDKFeature;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qqgamemi/api/SDKFeature;->SgameAr:Lcom/tencent/qqgamemi/api/SDKFeature;

    .line 3
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/tencent/qqgamemi/api/SDKFeature;

    sget-object v1, Lcom/tencent/qqgamemi/api/SDKFeature;->Moment:Lcom/tencent/qqgamemi/api/SDKFeature;

    aput-object v1, v0, v7

    sget-object v1, Lcom/tencent/qqgamemi/api/SDKFeature;->Manual:Lcom/tencent/qqgamemi/api/SDKFeature;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/qqgamemi/api/SDKFeature;->InGameAudio:Lcom/tencent/qqgamemi/api/SDKFeature;

    aput-object v1, v0, v5

    sget-object v1, Lcom/tencent/qqgamemi/api/SDKFeature;->Maintaining:Lcom/tencent/qqgamemi/api/SDKFeature;

    aput-object v1, v0, v8

    sget-object v1, Lcom/tencent/qqgamemi/api/SDKFeature;->Report:Lcom/tencent/qqgamemi/api/SDKFeature;

    aput-object v1, v0, v6

    const/4 v1, 0x5

    sget-object v2, Lcom/tencent/qqgamemi/api/SDKFeature;->MixBgmAudio:Lcom/tencent/qqgamemi/api/SDKFeature;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/tencent/qqgamemi/api/SDKFeature;->SgameAr:Lcom/tencent/qqgamemi/api/SDKFeature;

    aput-object v2, v0, v1

    sput-object v0, Lcom/tencent/qqgamemi/api/SDKFeature;->$VALUES:[Lcom/tencent/qqgamemi/api/SDKFeature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/tencent/qqgamemi/api/SDKFeature;->mode:I

    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/qqgamemi/api/SDKFeature;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/tencent/qqgamemi/api/SDKFeature;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqgamemi/api/SDKFeature;

    return-object v0
.end method

.method public static values()[Lcom/tencent/qqgamemi/api/SDKFeature;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/tencent/qqgamemi/api/SDKFeature;->$VALUES:[Lcom/tencent/qqgamemi/api/SDKFeature;

    invoke-virtual {v0}, [Lcom/tencent/qqgamemi/api/SDKFeature;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/qqgamemi/api/SDKFeature;

    return-object v0
.end method


# virtual methods
.method public isEnable(I)Z
    .locals 2
    .param p1, "sdkFeature"    # I

    .prologue
    .line 19
    iget v0, p0, Lcom/tencent/qqgamemi/api/SDKFeature;->mode:I

    and-int/2addr v0, p1

    iget v1, p0, Lcom/tencent/qqgamemi/api/SDKFeature;->mode:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
