.class public final Lcom/onesignal/session/internal/outcomes/impl/CachedUniqueOutcome;
.super Ljava/lang/Object;
.source "CachedUniqueOutcome.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/onesignal/session/internal/outcomes/impl/CachedUniqueOutcome;",
        "",
        "influenceId",
        "",
        "channel",
        "Lcom/onesignal/session/internal/influence/InfluenceChannel;",
        "(Ljava/lang/String;Lcom/onesignal/session/internal/influence/InfluenceChannel;)V",
        "getChannel",
        "()Lcom/onesignal/session/internal/influence/InfluenceChannel;",
        "getInfluenceId",
        "()Ljava/lang/String;",
        "com.onesignal.core"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final channel:Lcom/onesignal/session/internal/influence/InfluenceChannel;

.field private final influenceId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/onesignal/session/internal/influence/InfluenceChannel;)V
    .locals 1

    const-string v0, "influenceId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/onesignal/session/internal/outcomes/impl/CachedUniqueOutcome;->influenceId:Ljava/lang/String;

    .line 17
    iput-object p2, p0, Lcom/onesignal/session/internal/outcomes/impl/CachedUniqueOutcome;->channel:Lcom/onesignal/session/internal/influence/InfluenceChannel;

    return-void
.end method


# virtual methods
.method public final getChannel()Lcom/onesignal/session/internal/influence/InfluenceChannel;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/onesignal/session/internal/outcomes/impl/CachedUniqueOutcome;->channel:Lcom/onesignal/session/internal/influence/InfluenceChannel;

    return-object v0
.end method

.method public final getInfluenceId()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/onesignal/session/internal/outcomes/impl/CachedUniqueOutcome;->influenceId:Ljava/lang/String;

    return-object v0
.end method
