.class public interface abstract Lcom/ryg/TGACallMannager$Host2Plugin;
.super Ljava/lang/Object;
.source "TGACallMannager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ryg/TGACallMannager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Host2Plugin"
.end annotation


# static fields
.field public static final SET_LOGIN_INFO:I = 0x1


# virtual methods
.method public abstract callPlugin(ILjava/util/Map;)Ljava/lang/Object;
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
