.class public interface abstract Lcom/ryg/TGACallMannager$Plugin2Host;
.super Ljava/lang/Object;
.source "TGACallMannager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ryg/TGACallMannager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Plugin2Host"
.end annotation


# static fields
.field public static final GET_LOGIN_INFO:I = 0x1

.field public static final LUANCH_USER_DETAIL:I = 0x2


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
