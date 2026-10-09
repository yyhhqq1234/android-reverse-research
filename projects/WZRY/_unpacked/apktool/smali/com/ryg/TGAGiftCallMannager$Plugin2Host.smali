.class public interface abstract Lcom/ryg/TGAGiftCallMannager$Plugin2Host;
.super Ljava/lang/Object;
.source "TGAGiftCallMannager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ryg/TGAGiftCallMannager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Plugin2Host"
.end annotation


# static fields
.field public static final GET_COIN_:I = 0x2

.field public static final GIVE_GIFT:I = 0x3

.field public static final RECHARGE:I = 0x4


# virtual methods
.method public abstract callHost(ILjava/util/Map;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
