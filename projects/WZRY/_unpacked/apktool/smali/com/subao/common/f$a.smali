.class public Lcom/subao/common/f$a;
.super Ljava/lang/Object;
.source "ProxyEngineCommunicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/subao/common/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field private static a:Lcom/subao/common/f;


# direct methods
.method public static a()Lcom/subao/common/f;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/subao/common/f$a;->a:Lcom/subao/common/f;

    return-object v0
.end method

.method public static a(Lcom/subao/common/f;)V
    .locals 0

    .prologue
    .line 41
    sput-object p0, Lcom/subao/common/f$a;->a:Lcom/subao/common/f;

    .line 42
    return-void
.end method
