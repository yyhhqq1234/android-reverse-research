.class public interface abstract Lcom/onesignal/session/internal/influence/impl/IChannelTracker;
.super Ljava/lang/Object;
.source "IChannelTracker.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0002\u0008\u0004\u0008`\u0018\u00002\u00020\u0001J\u0008\u0010 \u001a\u00020!H&J\u0008\u0010\"\u001a\u00020!H&J\u0012\u0010#\u001a\u00020!2\u0008\u0010$\u001a\u0004\u0018\u00010\u000bH&R\u0012\u0010\u0002\u001a\u00020\u0003X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0004\u0010\u0005R\u0012\u0010\u0006\u001a\u00020\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u0004\u0018\u00010\u000bX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u0012\u0010\u0010\u001a\u00020\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\rR\u001a\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u001a\u0010\u0018\u001a\u0004\u0018\u00010\u0019X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\u0012\u0010\u001e\u001a\u00020\u0013X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u0015\u00a8\u0006%"
    }
    d2 = {
        "Lcom/onesignal/session/internal/influence/impl/IChannelTracker;",
        "",
        "channelType",
        "Lcom/onesignal/session/internal/influence/InfluenceChannel;",
        "getChannelType",
        "()Lcom/onesignal/session/internal/influence/InfluenceChannel;",
        "currentSessionInfluence",
        "Lcom/onesignal/session/internal/influence/Influence;",
        "getCurrentSessionInfluence",
        "()Lcom/onesignal/session/internal/influence/Influence;",
        "directId",
        "",
        "getDirectId",
        "()Ljava/lang/String;",
        "setDirectId",
        "(Ljava/lang/String;)V",
        "idTag",
        "getIdTag",
        "indirectIds",
        "Lorg/json/JSONArray;",
        "getIndirectIds",
        "()Lorg/json/JSONArray;",
        "setIndirectIds",
        "(Lorg/json/JSONArray;)V",
        "influenceType",
        "Lcom/onesignal/session/internal/influence/InfluenceType;",
        "getInfluenceType",
        "()Lcom/onesignal/session/internal/influence/InfluenceType;",
        "setInfluenceType",
        "(Lcom/onesignal/session/internal/influence/InfluenceType;)V",
        "lastReceivedIds",
        "getLastReceivedIds",
        "cacheState",
        "",
        "resetAndInitInfluence",
        "saveLastId",
        "id",
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


# virtual methods
.method public abstract cacheState()V
.end method

.method public abstract getChannelType()Lcom/onesignal/session/internal/influence/InfluenceChannel;
.end method

.method public abstract getCurrentSessionInfluence()Lcom/onesignal/session/internal/influence/Influence;
.end method

.method public abstract getDirectId()Ljava/lang/String;
.end method

.method public abstract getIdTag()Ljava/lang/String;
.end method

.method public abstract getIndirectIds()Lorg/json/JSONArray;
.end method

.method public abstract getInfluenceType()Lcom/onesignal/session/internal/influence/InfluenceType;
.end method

.method public abstract getLastReceivedIds()Lorg/json/JSONArray;
.end method

.method public abstract resetAndInitInfluence()V
.end method

.method public abstract saveLastId(Ljava/lang/String;)V
.end method

.method public abstract setDirectId(Ljava/lang/String;)V
.end method

.method public abstract setIndirectIds(Lorg/json/JSONArray;)V
.end method

.method public abstract setInfluenceType(Lcom/onesignal/session/internal/influence/InfluenceType;)V
.end method
