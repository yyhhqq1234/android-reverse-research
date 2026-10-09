.class public final enum Lcom/tencent/qqgamemi/api/RecordingStartStatus;
.super Ljava/lang/Enum;
.source "RecordingStartStatus.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/tencent/qqgamemi/api/RecordingStartStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/tencent/qqgamemi/api/RecordingStartStatus;

.field public static final enum Fail:Lcom/tencent/qqgamemi/api/RecordingStartStatus;

.field public static final enum Recording:Lcom/tencent/qqgamemi/api/RecordingStartStatus;

.field public static final enum Starting:Lcom/tencent/qqgamemi/api/RecordingStartStatus;

.field public static final enum Success:Lcom/tencent/qqgamemi/api/RecordingStartStatus;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 8
    new-instance v0, Lcom/tencent/qqgamemi/api/RecordingStartStatus;

    const-string v1, "Fail"

    invoke-direct {v0, v1, v2, v2}, Lcom/tencent/qqgamemi/api/RecordingStartStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qqgamemi/api/RecordingStartStatus;->Fail:Lcom/tencent/qqgamemi/api/RecordingStartStatus;

    .line 9
    new-instance v0, Lcom/tencent/qqgamemi/api/RecordingStartStatus;

    const-string v1, "Starting"

    invoke-direct {v0, v1, v3, v3}, Lcom/tencent/qqgamemi/api/RecordingStartStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qqgamemi/api/RecordingStartStatus;->Starting:Lcom/tencent/qqgamemi/api/RecordingStartStatus;

    .line 10
    new-instance v0, Lcom/tencent/qqgamemi/api/RecordingStartStatus;

    const-string v1, "Recording"

    invoke-direct {v0, v1, v4, v4}, Lcom/tencent/qqgamemi/api/RecordingStartStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qqgamemi/api/RecordingStartStatus;->Recording:Lcom/tencent/qqgamemi/api/RecordingStartStatus;

    .line 11
    new-instance v0, Lcom/tencent/qqgamemi/api/RecordingStartStatus;

    const-string v1, "Success"

    invoke-direct {v0, v1, v5, v5}, Lcom/tencent/qqgamemi/api/RecordingStartStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/qqgamemi/api/RecordingStartStatus;->Success:Lcom/tencent/qqgamemi/api/RecordingStartStatus;

    .line 7
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/tencent/qqgamemi/api/RecordingStartStatus;

    sget-object v1, Lcom/tencent/qqgamemi/api/RecordingStartStatus;->Fail:Lcom/tencent/qqgamemi/api/RecordingStartStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/tencent/qqgamemi/api/RecordingStartStatus;->Starting:Lcom/tencent/qqgamemi/api/RecordingStartStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/tencent/qqgamemi/api/RecordingStartStatus;->Recording:Lcom/tencent/qqgamemi/api/RecordingStartStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/tencent/qqgamemi/api/RecordingStartStatus;->Success:Lcom/tencent/qqgamemi/api/RecordingStartStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/tencent/qqgamemi/api/RecordingStartStatus;->$VALUES:[Lcom/tencent/qqgamemi/api/RecordingStartStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 1
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qqgamemi/api/RecordingStartStatus;->value:I

    .line 16
    iput p3, p0, Lcom/tencent/qqgamemi/api/RecordingStartStatus;->value:I

    .line 17
    return-void
.end method

.method public static valueOf(I)Lcom/tencent/qqgamemi/api/RecordingStartStatus;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 20
    packed-switch p0, :pswitch_data_0

    .line 30
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 22
    :pswitch_0
    sget-object v0, Lcom/tencent/qqgamemi/api/RecordingStartStatus;->Fail:Lcom/tencent/qqgamemi/api/RecordingStartStatus;

    goto :goto_0

    .line 24
    :pswitch_1
    sget-object v0, Lcom/tencent/qqgamemi/api/RecordingStartStatus;->Starting:Lcom/tencent/qqgamemi/api/RecordingStartStatus;

    goto :goto_0

    .line 26
    :pswitch_2
    sget-object v0, Lcom/tencent/qqgamemi/api/RecordingStartStatus;->Recording:Lcom/tencent/qqgamemi/api/RecordingStartStatus;

    goto :goto_0

    .line 28
    :pswitch_3
    sget-object v0, Lcom/tencent/qqgamemi/api/RecordingStartStatus;->Success:Lcom/tencent/qqgamemi/api/RecordingStartStatus;

    goto :goto_0

    .line 20
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/qqgamemi/api/RecordingStartStatus;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/tencent/qqgamemi/api/RecordingStartStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/tencent/qqgamemi/api/RecordingStartStatus;

    return-object v0
.end method

.method public static values()[Lcom/tencent/qqgamemi/api/RecordingStartStatus;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/tencent/qqgamemi/api/RecordingStartStatus;->$VALUES:[Lcom/tencent/qqgamemi/api/RecordingStartStatus;

    invoke-virtual {v0}, [Lcom/tencent/qqgamemi/api/RecordingStartStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/qqgamemi/api/RecordingStartStatus;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/tencent/qqgamemi/api/RecordingStartStatus;->value:I

    return v0
.end method
