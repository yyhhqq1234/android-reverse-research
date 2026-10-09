.class public final enum Lcom/netease/cc/newlive/CCLiveConstants$AUDIO_ENGINE;
.super Ljava/lang/Enum;
.source "CCLiveConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/netease/cc/newlive/CCLiveConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AUDIO_ENGINE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/netease/cc/newlive/CCLiveConstants$AUDIO_ENGINE;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CC:Lcom/netease/cc/newlive/CCLiveConstants$AUDIO_ENGINE;

.field public static final enum SYS:Lcom/netease/cc/newlive/CCLiveConstants$AUDIO_ENGINE;

.field private static final synthetic b:[Lcom/netease/cc/newlive/CCLiveConstants$AUDIO_ENGINE;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 134
    new-instance v0, Lcom/netease/cc/newlive/CCLiveConstants$AUDIO_ENGINE;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "CC"

    invoke-direct {v0, v3, v1, v2}, Lcom/netease/cc/newlive/CCLiveConstants$AUDIO_ENGINE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netease/cc/newlive/CCLiveConstants$AUDIO_ENGINE;->CC:Lcom/netease/cc/newlive/CCLiveConstants$AUDIO_ENGINE;

    .line 135
    new-instance v0, Lcom/netease/cc/newlive/CCLiveConstants$AUDIO_ENGINE;

    const/4 v3, 0x2

    const-string v4, "SYS"

    invoke-direct {v0, v4, v2, v3}, Lcom/netease/cc/newlive/CCLiveConstants$AUDIO_ENGINE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netease/cc/newlive/CCLiveConstants$AUDIO_ENGINE;->SYS:Lcom/netease/cc/newlive/CCLiveConstants$AUDIO_ENGINE;

    new-array v0, v3, [Lcom/netease/cc/newlive/CCLiveConstants$AUDIO_ENGINE;

    .line 133
    sget-object v3, Lcom/netease/cc/newlive/CCLiveConstants$AUDIO_ENGINE;->CC:Lcom/netease/cc/newlive/CCLiveConstants$AUDIO_ENGINE;

    aput-object v3, v0, v1

    sget-object v1, Lcom/netease/cc/newlive/CCLiveConstants$AUDIO_ENGINE;->SYS:Lcom/netease/cc/newlive/CCLiveConstants$AUDIO_ENGINE;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netease/cc/newlive/CCLiveConstants$AUDIO_ENGINE;->b:[Lcom/netease/cc/newlive/CCLiveConstants$AUDIO_ENGINE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 139
    iput p3, p0, Lcom/netease/cc/newlive/CCLiveConstants$AUDIO_ENGINE;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netease/cc/newlive/CCLiveConstants$AUDIO_ENGINE;
    .locals 1

    .line 133
    const-class v0, Lcom/netease/cc/newlive/CCLiveConstants$AUDIO_ENGINE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/netease/cc/newlive/CCLiveConstants$AUDIO_ENGINE;

    return-object p0
.end method

.method public static values()[Lcom/netease/cc/newlive/CCLiveConstants$AUDIO_ENGINE;
    .locals 1

    .line 133
    sget-object v0, Lcom/netease/cc/newlive/CCLiveConstants$AUDIO_ENGINE;->b:[Lcom/netease/cc/newlive/CCLiveConstants$AUDIO_ENGINE;

    invoke-virtual {v0}, [Lcom/netease/cc/newlive/CCLiveConstants$AUDIO_ENGINE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netease/cc/newlive/CCLiveConstants$AUDIO_ENGINE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 143
    iget v0, p0, Lcom/netease/cc/newlive/CCLiveConstants$AUDIO_ENGINE;->a:I

    return v0
.end method
